// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:weather_app/core/network/error_message_model.dart';

class ServerException implements Exception {
  final ErrorMessageModel errorMessageModel;
  ServerException({
    required this.errorMessageModel,
  });
}
