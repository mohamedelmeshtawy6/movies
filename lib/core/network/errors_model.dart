// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ErrorModel extends Equatable {
  final bool success;
  final int stats_code;
  final String status_message;
  ErrorModel({
    required this.success,
    required this.stats_code,
    required this.status_message,
  });

  factory ErrorModel.fromJson(Map<String, dynamic> json) {
    return ErrorModel(
        success: json['success'],
        stats_code: json['status_code'],
        status_message: json['status_message']);
  }
  @override
  // TODO: implement props
  List<Object?> get props => [success, stats_code, status_message];
}
