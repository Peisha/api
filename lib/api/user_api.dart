

import 'package:appointment_system/api/http_services.dart';
import 'package:appointment_system/model/userModel.dart';
import 'package:appointment_system/response/userResponse.dart';
import 'package:appointment_system/utils/url.dart';
import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class UserApi{
  Future <bool> registerUser (User user)async{
    bool Register = false;
    Response response;

    var url = baseUrl + registerUrl;
    var dio = HttpServices().getDioInstance();
    try{
      response= await dio.post(
        url,
      data:  user.toJson(),
      );
      if(response.statusCode ==200){
        return true;
      }
    }
    catch (e){
      debugPrint(e.toString());

    }
    return Register;
  }
  Future<bool> login(String email, String password) async {

    bool isLogin = false;

    try{

      var url = baseUrl+loginUrl;

      var dio = HttpServices().getDioInstance();

      var response = await dio.post(

        url,

        data: {

          "email" : email,

          "password" : password,

        }

      );

      if(response.statusCode == 200){

        UserResponse loginResponse = UserResponse.fromJson(response.data);

        token = loginResponse.token;

        isLogin = true;

      }

    }

    catch(e){

      debugPrint(e.toString());

    }

    return isLogin;

  }

}