import 'package:readme_app/dto/meta_dto/meta_dto.dart';
import 'package:readme_app/model/small_category/small_category.dart';
import 'package:readme_app/model/user/user.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/sqflite/model/big_category/big_category.dart';
import 'package:readme_app/sqflite/table/table_main_tab.dart';
import 'package:readme_app/sqflite/table/table_notice_type_wrapper.dart';
import 'package:readme_app/sqflite/table/table_payment_tab.dart';
import 'package:readme_app/sqflite/table/table_storage_box_tab.dart';
import 'package:readme_app/sqflite/table/table_big_category.dart';
import 'package:readme_app/sqflite/table/table_small_category.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';

class MySqfliteInit {
  static Database? _db;

  static Future<void> init(MetaDTO metaDTO) async {
    await _open();
    await _initInsert(metaDTO);
  }

  static Future<void> insertUser (User user) async{
    await _db!.delete(TableName.user);
    await _db!.insert(TableName.user, {'id': user.id, 'username': user.username, 'role' : user.role, 'isMembership' : user.isMembership, 'isAutoPayment' : user.isAutoPayment});
  }

  static Future<List<BigCategory>> getBigCategoryList() async {
    List<BigCategory> categoryList = [];
    if (_db == null) {
      return categoryList;
    }
    List<Map> maps = await _db!.query(TableName.bigCategory);
    if (maps.isNotEmpty) {
      var tableBigCategory = maps
          .map((e) => TableBigCategory.fromJson(e as Map<String, dynamic>))
          .toList();
      for (var tableBigCategory in tableBigCategory) {
        var bigCategory = BigCategory(
            id: tableBigCategory.id,
            name: tableBigCategory.name,
            smallCategory: []);
        List<Map> smallMaps = await _db!.query(TableName.smallCategory,
            where: 'bigCategoryId = ?', whereArgs: [tableBigCategory.id]);
        if (smallMaps.isNotEmpty) {
          var tableSmallCategory = smallMaps
              .map(
                  (e) => TableSamllCategory.fromJson(e as Map<String, dynamic>))
              .toList();
          List<SmallCategory> smallCategoryList = tableSmallCategory
              .map((e) => SmallCategory(id: e.id, name: e.name))
              .toList();
          bigCategory = bigCategory.copyWith(smallCategory: smallCategoryList);
        }
        categoryList.add(bigCategory);
      }
      return categoryList;
    }
    return [];
  }

//
  static Future<List<TableNoticeTypeWrapper>> getNoticeTypeWrapper() async {
    if (_db == null) {
      return [];
    }
    List<Map> maps = await _db!.query(TableName.noticeTypeWrapper);
    if (maps.isNotEmpty) {
      return maps
          .map((e) => TableNoticeTypeWrapper.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

//
  static Future<List<TableStorageBoxTab>> getStorageBoxTabs() async {
    if (_db == null) {
      return [];
    }
    List<Map> maps = await _db!.query(TableName.storageBoxTab);
    if (maps.isNotEmpty) {
      return maps
          .map((e) => TableStorageBoxTab.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }

  //
  static Future<List<TablePaymentTab>> getPaymentTab() async {
    if (_db == null) {
      return [];
    }
    List<Map> maps = await _db!.query(TableName.paymentTab);
    if (maps.isNotEmpty) {
     return maps
          .map((e) => TablePaymentTab.fromJson(e as Map<String, dynamic>))
          .toList();
    }
    return [];
  }



  static Future<List<TableMainTab>> getMainTabs() async {
    if (_db == null) {
      return [];
    }
    List<Map> maps = await _db!.query(TableName.mainTab);
    if (maps.isNotEmpty) {
      var mainTabList = maps
          .map((e) => TableMainTab.fromJson(e as Map<String, dynamic>))
          .toList();
      return mainTabList;
    }
    return [];
  }

  static Future<TableUser?> getUser() async {
    List<Map> maps = await _db!.query(TableName.user);
    if (maps.isNotEmpty) {
      var map = maps.first;
      return TableUser.fromJson(map as Map<String, dynamic>);
    }
    return null;
  }

  static void _createTableV1(Batch batch) {
    batch.execute('DROP TABLE IF EXISTS ${TableName.bigCategory}');
    batch.execute('''
          create table ${TableName.bigCategory} (
            id integer primary key,
            name text not null)
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.smallCategory}');
    batch.execute('''
          create table ${TableName.smallCategory} (
            bigCategoryId integer,
            id integer primary key,
            name text not null,
            FOREIGN KEY (bigCategoryId) REFERENCES ${TableName.bigCategory}(id) ON DELETE CASCADE
            )
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.noticeTypeWrapper}');
    batch.execute('''
          create table ${TableName.noticeTypeWrapper} (
            noticeType text not null)
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.mainTab}');
    batch.execute('''
          create table ${TableName.mainTab} (
            requestName text,
            name text not null)
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.paymentTab}');
    batch.execute('''
          create table ${TableName.paymentTab} (
            requestName text,
            name text not null)
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.storageBoxTab}');
    batch.execute('''
          create table ${TableName.storageBoxTab} (
            requestName text ,
            name text not null)
          ''');

    batch.execute('DROP TABLE IF EXISTS ${TableName.user}');
    batch.execute('''
          create table ${TableName.user} (
            id int primary key,
            username text not null,
            role text not null,
            isMembership INTEGER not null, 
            isAutoPayment INTEGER not null)
          ''');
  }

  static Future _open() async {
    var databasesPath = await getDatabasesPath();
    var path = join(databasesPath, "my_db5.db");

    _db = await openDatabase(path, version: 1,
      onCreate: (Database db, int version) async {
        await db.execute("PRAGMA foreign_keys = ON");
        var batch = db.batch();
        _createTableV1(batch);
        await batch.commit();
      },
      onDowngrade: onDatabaseDowngradeDelete);
  }

  static Future<void> _initInsert(MetaDTO metaDTO) async {
    // big , small
    // ??????
    await _db!.delete(TableName.bigCategory);
    await _db!.delete(TableName.smallCategory);

    var bigCategory = metaDTO.bigCategory;
    for (var bigCategory in bigCategory) {
      _db!.insert(TableName.bigCategory,
          {'id': bigCategory.id, 'name': bigCategory.name});

      if(bigCategory.smallCategory != null) {
        for (var smallCategory in bigCategory.smallCategory!) {
          _db!.insert(TableName.smallCategory, {
            'id': smallCategory.id,
            'name': smallCategory.name,
            'bigCategoryId': bigCategory.id
          });
        }
      }
    }

    // main
    await _db!.delete(TableName.mainTab);
    for (var mainTab in metaDTO.mainTabs) {
      _db!.insert(TableName.mainTab,
          {'requestName': mainTab.requestName, 'name': mainTab.name});
    }

    // notice
    await _db!.delete(TableName.noticeTypeWrapper);
    for (var noticeType in metaDTO.notificationTypes) {
      _db!.insert(TableName.noticeTypeWrapper, {'noticeType': noticeType});
    }
    // payment
    await _db!.delete(TableName.paymentTab);
    for (var paymentTab in metaDTO.paymentTabs) {
      _db!.insert(TableName.paymentTab,
          {'requestName': paymentTab.requestName, 'name': paymentTab.name});
    }

    // storage
    await _db!.delete(TableName.storageBoxTab);
    for (var storageTab in metaDTO.storageBoxTabs) {
      _db!.insert(TableName.storageBoxTab,
          {'requestName': storageTab.requestName, 'name': storageTab.name});
    }

    // user
    if(metaDTO.user != null) {
      await _db!.delete(TableName.user);
      await _db!.insert(TableName.user,
          {'id': metaDTO.user!.id, 'username': metaDTO.user!.username,
          'role' : metaDTO.user!.role, 'isMembership' : metaDTO.user!.isMembership, 'isAutoPayment' : metaDTO.user!.isAutoPayment});
    }
  }

  static Future deleteUser() async {
    await _db!.delete(TableName.user);
  }
}

class TableName {
  static const String bigCategory = "TableBigCategory";
  static const String smallCategory = "TableSmallCategory";
  static const String noticeTypeWrapper = "NoticeTypeWrapper";
  static const String mainTab = "MainTab";
  static const String paymentTab = "PaymentTab";
  static const String storageBoxTab = "StorageBoxTab";
  static const String user = "User";
}
