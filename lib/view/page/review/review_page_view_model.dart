import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:readme_app/core/constants/move.dart';
import 'package:readme_app/dto/response_dto/response_dto.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/model/review/review.dart';
import 'package:readme_app/repository/review_repository.dart';
import 'package:readme_app/view/components/custom_dialog.dart';

part 'review_page_view_model.freezed.dart';

@unfreezed
class ReviewPageModel with _$ReviewPageModel {
  factory ReviewPageModel({
    required List<MyReview> reviewList,
  }) = _ReviewPageModel;
}


class ReviewPageViewModel extends StateNotifier<ReviewPageModel?> {
  ReviewPageViewModel(super.state);

  void notifyInit() async {
    ResponseDTO responseDTO = await ReviewRepository().getMyReviews();
    if (responseDTO.code == 1) {
      state = ReviewPageModel(reviewList: responseDTO.data);
    } else if (responseDTO.code == 401 || responseDTO.code == 403){
      DialogUtil.dialogShow(navigatorKey.currentContext!, "로그인 후 이용 가능");
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, "로그인 후 이용 가능");
    }
  }

  void delete(ResponseDTO responseDTO, int id) async {
    if(responseDTO.code == 1) {
      state = state!.copyWith(
        reviewList: state!.reviewList..removeWhere((element) => element.id == id)
      );

      showDialog(
        context: navigatorKey.currentContext!,
        builder: (BuildContext context) {
          return CustomDialog(
            title: "리뷰 삭제 완료",
            content: responseDTO.msg ?? "리뷰 삭제가 완료되었습니다.",
            callback: () {
              Navigator.pushNamedAndRemoveUntil(context, Move.reviewPage, (route) => false);
            },
          );
        },
      );
    } else {
      DialogUtil.dialogShow(navigatorKey.currentContext!, responseDTO.msg);
    }
  }
}

final reviewPageProvider = StateNotifierProvider.autoDispose<ReviewPageViewModel, ReviewPageModel?>((ref) {
    return ReviewPageViewModel(null)..notifyInit();
  },
);

