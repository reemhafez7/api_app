class Student {

 late int  id;
 late String  fullName;
 late String  email;
 late String  gender;
 String?  fcmToken;
 late String  token;
 late String  refreshToken;
 late bool  isActive;

  Student();

  Student.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    fullName = json['full_name'];
    email = json['email'];
    gender = json['gender'];
    fcmToken = json['fcm_token'];
    token = json['token'];
    refreshToken = json['refresh_token'];
    isActive = json['is_active'];
  }

 //String get getToken => token;

}