// import 'package:flutter/material.dart';// import 'package:hoomy_project1/Sign_up_page/text_Field.dart';// import 'package:hoomy_project1/Sign_up_page/white_logo.dart';// import 'package:unicons/unicons.dart';// import 'package:google_fonts/google_fonts.dart';//// import '../landing/button.dart';//// class Sign_up_main_page extends StatefulWidget {//   @override//   Sign_up_main_page({//     Key? key,//   }) : super(key: key);//   @override//   State<Sign_up_main_page> createState() => _Sign_up_main_pageState();// }//// class _Sign_up_main_pageState extends State<Sign_up_main_page> {//   final TextEditingController name = TextEditingController();//   final TextEditingController email = TextEditingController();//   final TextEditingController password = TextEditingController();//   final TextEditingController Confirmpassword = TextEditingController();//   bool swich = false;//   @override//   Widget build(BuildContext context) {//     return Scaffold(//       // appBar: AppBar( //     backgroundColor: Color(0xff45B9EE), //     elevation: 0, //     title: Hoomy_logo_white()), backgroundColor://         body: SafeArea(//             child: SingleChildScrollView(//                 child: Center(//                     child: Column(//                         mainAxisAlignment: MainAxisAlignment.start,//                         crossAxisAlignment: CrossAxisAlignment.center,//                         children: [//                           Stack(children: [//                             Image.asset(//                               "photo/22.png",//                               width: double.infinity,//                             ),//                             Hoomy_logo_white(onPressed: () { print("sing up"); },)//                           ]),//                           Padding(//                             padding: const EdgeInsets.only(top: 5, bottom: 25),//                             child: Text(//                               textDirection: TextDirection.rtl,////                               "انشاء حساب",//                               style: GoogleFonts.inter(fontSize: 30),//                             ),//                           ),//                           Text_Field1(//                             MyController: name,//                             fintText: 'الاسم :',//                             icon: Icon(//                               UniconsLine.user,//                               color: name.text.isEmpty ? Colors.black38 : Color(0xff45B9EE),//                             ),//                             labelText: "",//                             pass: false,//                           ),//                           Text_Field1(//                             MyController: email,//                             fintText: 'الايميل :',//                             icon: Icon((Icons.alternate_email),//                                 color: email.text.isEmpty//                                     ? Colors.black38//                                     : Color(0xff45B9EE)),//                             labelText: '',//                             pass: false,//                           ),//                           Text_Field1(//                             MyController: password,//                             fintText: 'الباسورد :',//                             icon: IconButton(//                               icon: Icon(//                                   swich == false ? Icons.visibility_off : Icons.visibility),//                               color: password.text.isEmpty//                                   ? Colors.black38//                                   : Color(0xff45B9EE),//                               onPressed: () {//                                 setState(() {//                                   if (swich == false) {//                                     swich = true;//                                   } else {//                                     swich = false;//                                   }//                                 });//                                 print(swich);//                               },//                             ),//                             labelText: '',//                             pass: swich,//                           ),//                           Text_Field1(//                             MyController: Confirmpassword,//                             fintText: 'تأكيد الباسورد :',//                             icon: IconButton(//                               icon: Icon(//                                   swich == false ? Icons.visibility_off : Icons.visibility),//                               color: Confirmpassword.text.isEmpty//                                   ? Colors.black38//                                   : Color(0xff45B9EE),//                               onPressed: () {//                                 setState(() {//                                   if (swich == false) {//                                     swich = true;//                                   } else {//                                     swich = false;//                                   }//                                 });//                                 print(swich);//                               },//                             ),//                             labelText: '',//                             pass: swich,//                           ),//                           Padding(//                             padding: const EdgeInsets.symmetric(vertical: 30),//                             child: Button1(//                               text: 'انشاء حساب',//                               onPressed: () {   print("انشاء حساب");},//                             ),//                           )//                         ])))));//   }// }// // TODO Implement this library.