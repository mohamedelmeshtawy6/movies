// ignore_for_file: public_member_api_docs, sort_constructors_first
abstract class Failure {
  final String generalMessage;
  Failure({
    required this.generalMessage,
  });
}

class GeneralServerFailure extends Failure {
  GeneralServerFailure({required super.generalMessage});
}
