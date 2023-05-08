import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/dto/cart_dto/cart_dto.dart';
import 'package:readme_app/dto/use_cart/use_cart_dto.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/book/book_repository.dart';
import 'package:readme_app/model/cart_mock_data.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

// 파일명
part 'cart_page_view_model.freezed.dart';

@unfreezed
class CartPageModel with _$CartPageModel {
  factory CartPageModel({
    required bool isAllChecked,
    required int totalPrice,
    required int totalCount,
    required List<UseCartDTO> cartBooks,
  }) = _CartPageModel;
}

class CartPageViewModel extends StateNotifier<CartPageModel?> {
  CartPageViewModel(super.state);

  void notifyInit() async {
    CartPageModel initCartBooks = CartPageModel(
        totalPrice: 0, totalCount: 0, cartBooks: [], isAllChecked: false);
    // TODO 추후에 객체 변경 AND jwt 혹은 user_id 추가 필요
    ResponseDTO responseDTO = await BookRepository().findCartList();
    List<CartDTO> cartDTOList = responseDTO.data;
    List<UseCartDTO> useCartList = [];

    cartDTOList.forEach((element) {
      UseCartDTO useCartDTO = UseCartDTO(cartDTO: element, isChecked: false);
      useCartList.add(useCartDTO);
    });

    initCartBooks.cartBooks = useCartList;
    state = initCartBooks;
  }

  void changeAllChecked(value) {
    List<UseCartDTO> newList = [];

    if (value == true) {
      state!.cartBooks.forEach((e) {
        e.isChecked = true;
        newList.add(e);
        state = state!.copyWith(cartBooks: newList, isAllChecked: true);
      });
    } else {
      state!.cartBooks.forEach((e) {
        e.isChecked = false;
        newList.add(e);
        state = state!.copyWith(cartBooks: newList, isAllChecked: false);
      });
    }
  }

  void changedOneCheck(value, int index) {
    List<UseCartDTO> newList = [];
    int falseCount = 0;

    if (value == true) {
      for (int i = 0; i < state!.cartBooks.length; i++) {
        if (i == index) {
          state!.cartBooks[index].isChecked = true;
        }
        newList.add(state!.cartBooks[i]);
      }
      state!.cartBooks.forEach((element) {
        if (element.isChecked == false) {
          falseCount++;
        }
      });
      state = state!.copyWith(
          cartBooks: state!.cartBooks,
          isAllChecked: falseCount == 0 ? true : false);
    } else {
      for (int i = 0; i < state!.cartBooks.length; i++) {
        if (i == index) {
          state!.cartBooks[index].isChecked = false;
        }
        newList.add(state!.cartBooks[i]);
      }
      state = state!.copyWith(cartBooks: state!.cartBooks);
      state!.cartBooks.forEach((element) {
        if (element.isChecked == false) {
          falseCount++;
        }
      });
      state!.cartBooks[index].isChecked = false;
      state = state!.copyWith(
          cartBooks: state!.cartBooks,
          isAllChecked: falseCount == 0 ? true : false);
    }
  }

  void delete(ResponseDTO responseDTO, int id) {
    if(responseDTO.code == 1) {
      List<UseCartDTO> newCartList =
      state!.cartBooks.where((e) => e.cartDTO.id != id).toList();
      state = state!.copyWith(cartBooks: newCartList);
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }

  }



  void insert(ResponseDTO responseDTO) {
    var context = navigatorKey.currentContext!;
    if(responseDTO.code! == 1) {
      UseCartDTO useCartDTO = UseCartDTO(cartDTO: responseDTO.data, isChecked: false);
      List<UseCartDTO> newUseCartList = [...state!.cartBooks];
      newUseCartList.add(useCartDTO);
      state = state!.copyWith(cartBooks: newUseCartList, isAllChecked: false);
      showDialog(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text("장바구니 담기 완료"),
          content: const Text("장바구니로 이동하시겠습니까?"),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('취소'),
            ),
            TextButton(
              onPressed: () => Navigator.pushNamed(context, "/cart"),
              child: const Text('확인'),
            ),
          ],
        ),
      );

    } else {
      DialogUtil.dialogShow(context, responseDTO.msg);
    }

  }
}

final cartPageProvider =
    StateNotifierProvider.autoDispose<CartPageViewModel, CartPageModel?>((ref) {
  return CartPageViewModel(null)..notifyInit();
});
