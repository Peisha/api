class UserResponse{
  bool? success;
  String? token;

  UserResponse({this.success,this.token});

  factory UserResponse.fromJson(Map<String,dynamic> json){
    return UserResponse(
      success: json["success"],
      token: json["token"],

    );
  }

  Map<String,dynamic> toJson()=>{
    "success":success,
    "token":token

  };
}