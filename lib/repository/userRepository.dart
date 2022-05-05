import 'package:appointment_system/api/user_api.dart';
import 'package:appointment_system/model/userModel.dart';

class UserRepository{
  Future <bool> registerUser (User user) async{
    return await UserApi().registerUser(user);
  }
   Future <bool> login(String email, String password){

    return UserApi().login(email, password);

  }
}