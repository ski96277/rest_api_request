import 'dart:developer';

import 'package:rest_api_request/api/api_const.dart';
import 'package:rest_api_request/api/api_service.dart';
import 'package:rest_api_request/model/University_model.dart';

class UniversityRepo {
  List<UniversityModel> universityModel = [];

  callUniversityList() {
    ApiService().get(ApiConst.getUniversityListUrl, onSuccess: (onSuccess) {
      onSuccess.forEach((v) {
        universityModel.add(UniversityModel.fromJson(v));
      });
      log("response message is 2= ${universityModel.length}");
    }, onError: (onError) {});
  }
}
