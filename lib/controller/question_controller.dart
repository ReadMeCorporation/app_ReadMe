import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/main.dart';

final questionControllerProvider = Provider<QuestionController>((ref) {
  return QuestionController(ref);
});


class QuestionController{
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  QuestionController(this.ref);

}