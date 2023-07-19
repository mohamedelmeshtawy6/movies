// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:movies/core/network/errors_model.dart';

class ServerExceptions implements Exception {
  ErrorModel errorsModel;
  ServerExceptions({
    required this.errorsModel,
  });
}
