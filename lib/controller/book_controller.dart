import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:readme_app/main.dart';
import 'package:readme_app/provider/session_provider.dart';

final BookControllerProvider = Provider<BookController>((ref) {
  return BookController(ref);
});

class BookController {
  // Repository, ViewModel 의존
  final mContext = navigatorKey.currentContext;
  final Ref ref;

  BookController(this.ref);

  Future<void> refresh() async {
    // SessionUser sessionUser = ref.read(sessionProvider);
    // ref.read(bookDetailPageProvider.notifier).notifyInit(sessionUser.jwt!);
  }
}