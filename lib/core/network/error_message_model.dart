// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:equatable/equatable.dart';

class ErrorMessageModel extends Equatable {
  final int code;
  final String message;
  const ErrorMessageModel({
    required this.code,
    required this.message,
  });

  factory ErrorMessageModel.fromJson(Map<String, dynamic> json) => ErrorMessageModel(
        code: json['cod'],
        message: json['message'],
      );

  @override
  List<Object> get props => [code, message];
}
