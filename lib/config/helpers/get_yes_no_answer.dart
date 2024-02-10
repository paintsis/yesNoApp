import 'package:dio/dio.dart';
import 'package:yes_no_app/domain/entities/message.dart';
import 'package:yes_no_app/infraescture/models/yes_no_model.dart';

class GetYesNoAnswer {
  final _dio = Dio();
  //https://yesno.wtf/api
  Future<Message> getAndswer() async {
    final response = await _dio.get('https://yesno.wtf/api');
    final yesNoModel = YesNoModel.fromJson(response.data);

    return yesNoModel.toMessageEntity();
    //return
  }
}
