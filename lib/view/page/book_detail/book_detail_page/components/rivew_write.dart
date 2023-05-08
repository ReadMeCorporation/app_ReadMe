import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/core/constants/colours.dart';
import 'package:readme_app/core/constants/dimens.dart';

class RivewWrite extends ConsumerStatefulWidget {
  const RivewWrite({Key? key}) : super(key: key);

  @override
  ConsumerState<RivewWrite> createState() => _RivewWriteState();
}

double _rating = 0;
final _textController = TextEditingController();



class _RivewWriteState extends ConsumerState<RivewWrite> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15),
      width: MediaQuery.of(context).size.width,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            margin: EdgeInsets.only(bottom: 15),
            child: Text(
              "< 리뷰 작성 >",
              style: TextStyle(
                color: Colours.app_sub_black,
                fontSize: Dimens.font_sp20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                style: BorderStyle.solid,
                color: Colours.app_sub_darkgrey,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RatingBar.builder(
                    initialRating: _rating,
                    minRating: 0,
                    direction: Axis.horizontal,
                    allowHalfRating: true,
                    itemCount: 5,
                    itemSize: 18,
                    itemBuilder: (context, _) => Icon(
                      Icons.star,
                      color: Colors.amber,
                    ),
                    onRatingUpdate: (rating) {
                      setState(() {
                        _rating = rating;
                      });
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: TextFormField(
                    controller: _textController,
                    decoration: InputDecoration(
                      hintText: "내용을 입력하세요",
                      border: OutlineInputBorder(),
                    ),
                    maxLines: 3,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: ElevatedButton(
                      onPressed: () {
                        // 등록 후 위치 이동
                      },
                      child: Text("등록"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colours.app_sub_black,
                        foregroundColor: Colours.app_sub_white,
                        textStyle: TextStyle(fontSize: Dimens.font_sp14),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 60),
        ],
      ),
    );
  }
}
