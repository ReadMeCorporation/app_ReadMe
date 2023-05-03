
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/model/book/book.dart';
import 'package:readme_app/model/reviews/reviews.dart';

class BookDetailBottom extends ConsumerWidget {
  BookDetailBottom({Key? key}) : super(key: key);

  Book? useBook = null;
  List<Reviews>? reviews = [];


  @override
  Widget build(BuildContext context,WidgetRef ref) {
    return const Placeholder();
  }
}
