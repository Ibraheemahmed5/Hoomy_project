import 'package:app_popup_menu/app_popup_menu.dart';import 'package:dropdown_button2/dropdown_button2.dart';import 'package:flutter/cupertino.dart';import 'package:flutter/material.dart';import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';import 'package:get/get.dart';import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';import 'package:hoomy_project1/Search_page_/search_main_page.dart';import 'package:hoomy_project1/profile_page/blue_logo.dart';import 'package:unicons/unicons.dart';import '../Sign_up_page/text_Field.dart';import '../home/prodects/model.dart';import '../landing/button.dart';import '../home/home_main_page.dart';class Search_page extends StatefulWidget {  const Search_page({Key? key}) : super(key: key);  @override  State<Search_page> createState() => _Search_pageState();}class _Search_pageState extends State<Search_page> {  static TextEditingController money_from = TextEditingController();  static TextEditingController money_to = TextEditingController();  RxString typed_from = ''.obs;  RxString typed_to = ''.obs;  String? selectedValue;  final BorderRadius _borderRadius = const BorderRadius.only(    topLeft: Radius.circular(30),    topRight: Radius.circular(30),  );  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(    borderRadius: BorderRadius.only(      bottomRight: Radius.circular(0),      bottomLeft: Radius.circular(0),      topRight: Radius.circular(30),      topLeft: Radius.circular(30),    ),  );  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;  EdgeInsets padding = const EdgeInsets.all(0);  int _selectedItemPosition = 0;  SnakeShape snakeShape = SnakeShape.circle;  bool showSelectedLabels = false;  bool showUnselectedLabels = false;  Color selectedColor = Color(0xff45B9EE);  Color unselectedColor = Colors.black38;  Color? containerColor;  List<Color> containerColors = [    const Color(0xFFFFFFFF),  ];  @override  Widget build(BuildContext context) {    return Scaffold(      backgroundColor: Colors.white,      body: SafeArea(        child: SingleChildScrollView(          child: Column(            children: [              Hoomy_logo_blue(onPressed: () {                Navigator.of(context).pop();              }),              Padding(                padding: const EdgeInsets.only(top: 20, right: 25, left: 25),                child: Column(                  children: [                    Align(                      alignment: Alignment.topRight,                      child: Text(                        "فلاتر البحث",                        style: TextStyle(                            fontSize: 30, fontWeight: FontWeight.w700),                        textDirection: TextDirection.rtl,                      ),                    ),                    Align(                      alignment: Alignment.topRight,                      child: Text(                        "السعر",                        style: TextStyle(                            fontSize: 23, fontWeight: FontWeight.w700),                        textDirection: TextDirection.rtl,                      ),                    ),                    Obx(() {                      return Text_Field1(                        keyboardType: TextInputType.number,                        MyController: money_from,                        onChanged: (text) {                          typed_from.value = text;                          print(typed_from);                        },                        hintText: 'السعر من :'.obs,                        icon: Icon(                          Icons.monetization_on,                          color: typed_from.value.isEmpty                              ? Colors.black38                              : Color(0xff45B9EE),                        ),                        labelText: "".obs,                        pass: false,                      );                    }),                    Obx(() {                      return Text_Field1(                        keyboardType: TextInputType.numberWithOptions(decimal: true),                        MyController: money_to,                        onChanged: (text) {                          typed_to.value = text;                          print(text);                        },                        hintText: 'السعر الى :'.obs,                        icon: Icon(                          Icons.monetization_on,                          color: typed_to.value.isEmpty                              ? Colors.black38                              : Color(0xff45B9EE),                        ),                        labelText: "".obs,                        pass: false,                      );                    }),                    Container(                      width: 340,                      height: 50,                      child: DropdownButtonHideUnderline(                        child: DropdownButton2(                          isExpanded: true,                          hint: Row(                            children: const [                              Icon(                                Icons.arrow_drop_down_sharp,                                size: 30,                                color: Colors.black,                              ),                              Expanded(                                child: Padding(                                  padding: EdgeInsets.only(top: 3),                                  child: Text(                                    '  اختار الفئة ',                                    textDirection: TextDirection.rtl,                                    style: TextStyle(                                      fontSize: 18,                                      fontWeight: FontWeight.bold,                                      color: Colors.black,                                    ),                                    overflow: TextOverflow.ellipsis,                                  ),                                ),                              ),                            ],                          ),                          items: Prodect.catigories                              .map((item) => DropdownMenuItem<String>(                            alignment: Alignment.centerRight,                            value: item.value,                            child: Text(                              textDirection: TextDirection.rtl,                              ("  $item    "),                              style: const TextStyle(                                fontSize: 18,                                fontWeight: FontWeight.bold,                                color: Colors.white,                              ),                              overflow: TextOverflow.ellipsis,                            ),                          ))                              .toList(),                          value: selectedValue,                          onChanged: (value) {                            setState(() {                              selectedValue = value as String;                              print(selectedValue);                            });                          },                          icon: const Icon(                            Icons.list,                          ),                          iconSize: 24,                          iconEnabledColor: Colors.black,                          iconDisabledColor: Colors.grey,                          buttonHeight: 50,                          buttonWidth: 200,                          buttonPadding:                          const EdgeInsets.only(left: 14, right: 20),                          buttonDecoration: BoxDecoration(                            borderRadius: BorderRadius.circular(18),                            border: Border.all(                              color: Colors.white,                            ),                            color: Color(0xff45B9EE),                          ),                          buttonElevation: 2,                          itemHeight: 40,                          itemPadding:                          const EdgeInsets.only(left: 14, right: 14),                          dropdownMaxHeight: 200,                          dropdownWidth: 340,                          dropdownPadding: null,                          dropdownDecoration: BoxDecoration(                            borderRadius: BorderRadius.circular(14),                            color: Color(0xff45B9EE),                          ),                          dropdownElevation: 8,                          scrollbarRadius: const Radius.circular(40),                          scrollbarThickness: 6,                          scrollbarAlwaysShow: true,                          offset: const Offset(0, 0),                        ),                      ),                    ),                    Padding(                      padding: const EdgeInsets.only(top: 100),                      child: Button1(                        text: 'بحث',                        onPressed: () {                          // print("من: $typedfrom");                          // print("الي: $typedTo");                          // print("الفئة: $catigory");                          // print(number_length_check());                          // if (number_length_check() == true) {                          //   //Get.to(Search_main_page());                          // }                          Get.to(Search_main_page( from: money_from.text, to: money_to.text, catigory: selectedValue.toString(),));                        },                      ),                    ),                    Image.asset(                      "photo/search.png",                      width: 150,                      height: 150,                    )                  ],                ),              ),            ],          ),        ),      ),      bottomNavigationBar: NavigationBar_defult()    );  }  RxString get typedfrom {    RxString Empty = "".obs;    return typed_from.value.isEmpty ? Empty : typed_from;  }  RxString get typedTo {    RxString Empty = "".obs;    return typed_to.value.isEmpty ? Empty : typed_to;  }  String? get catigory {    return selectedValue;  }  number_length_check() {    RxBool flag = false.obs;    if (typed_from.isEmpty ) {      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(          backgroundColor: Colors.red,          content: Text('النص فارغ ',              textDirection: TextDirection.rtl,              style: TextStyle(fontSize: 18))));      flag = false.obs;    } else if (!typed_from.contains(RegExp(r'^[0-9]+$')) ||        !typed_to.contains(RegExp(r'^[0-9]+$'))) {      return ScaffoldMessenger.of(context).showSnackBar(const SnackBar(          backgroundColor: Colors.red,          content: Text('النص يجب ان يحتوي على ارقام فقط ',              textDirection: TextDirection.rtl,              style: TextStyle(fontSize: 18))));      flag = false.obs;    } else {      flag = true.obs;      return flag;    }  }}