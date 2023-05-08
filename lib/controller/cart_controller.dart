import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/sqflite/sqflite.dart';
import 'package:readme_app/sqflite/table/table_user.dart';
import 'package:readme_app/view/page/cart/cart_page/cart_page_view_model.dart';

final cartControllerProvider = Provider<CartController>((ref) {
  return CartController(ref);
});

class CartController {
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  CartController(this.ref);

  Future<void> deleteCartBook (int id) async {
    ResponseDTO responseDTO = await BookRepository().deleteCartBook(id);
    if(responseDTO.code == 401) {
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    } else {

      ref.read(cartPageProvider.notifier).delete(responseDTO, id);
    }
  }


  // 401 - controller : 페이지 이동 처리,
  Future<void> insert (int bookId) async {
    // TODO userid 바꾸기
    ResponseDTO responseDTO = await BookRepository().addCart(bookId);
    if(responseDTO.code == 401) {
      Navigator.pushNamedAndRemoveUntil(mContext!, Move.loginPage, (route) => false);
    } else {
      ref.read(cartPageProvider.notifier).insert(responseDTO);
    }

  }

}
