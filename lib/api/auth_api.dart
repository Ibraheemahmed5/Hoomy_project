class Account {  final String first_name;  final String last_name;  final String email;  final String password1;  final String password2;  final String profile_pic;  Account({    required this.first_name,    required this.last_name,    required this.email,    required this.password1,    required this.password2,    required this.profile_pic,  });  static late Account current;}