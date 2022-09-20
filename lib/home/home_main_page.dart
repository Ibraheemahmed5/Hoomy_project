import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_statusbarcolor_ns/flutter_statusbarcolor_ns.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hoomy_project1/home/prodects/home_cart.dart';
import 'package:hoomy_project1/home/prodects/model.dart';
import 'package:hoomy_project1/home/search_bar.dart';
import 'package:hoomy_project1/Search_page_/search_page.dart';
import '../Search_page_/search_cart.dart';
import 'NavigationBar_home.dart';
import 'cart_list.dart';
import 'catigory_buttons_bar.dart';
import 'home_slider/slider.dart';

class HomeMainPage extends StatefulWidget {
  HomeMainPage({Key? key}) : super(key: key);

  @override
  State<HomeMainPage> createState() => _HomeMainPageState();
}

class _HomeMainPageState extends State<HomeMainPage> {
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(EditableTextState());
  }

  @override
  Widget build(BuildContext context) {
    FlutterStatusbarcolor.setStatusBarColor(Colors.white, animate: true);

    final TextEditingController searchController =
    TextEditingController(text: "");
    final RxBool isEmpty1 = true.obs;
    final RxString text = searchController.text.obs;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Obx(() {
              return Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        SearchBar(
                          searchController: searchController,
                          onPressed: () {
                            Get.to(Search_page());
          },
                          onChanged: (String text1) {
                            text.value = text1;
                            if (text.value == "") {
                              isEmpty1.value = true;
                            } else {
                              isEmpty1.value = false;
                            }
                          },
                        ),
                        if (text.value.isEmpty)
                          Container(
                            color: Colors.white30,
                            height: 55,
                            child: CatigoryButtonsBar(),
                          ),
                        if (text.value.isEmpty)
                          Padding(
                            padding: const EdgeInsets.only(bottom: 5),
                            child: Container(
                              child: HomeSlider(),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(18)),
                            ),
                          ),
                      ],
                    ),
                  ),
                  // ////
                  if (text.value.isEmpty)
                    Padding(
                      padding: const EdgeInsets.only(right: 20),
                      child: Align(
                        alignment: Alignment.centerRight,
                        child: Container(
                          width: 100,
                          height: 50,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                              "الشائع",
                              style: GoogleFonts.inter(
                                  fontSize: 25,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                      ),
                    ),
                  if (text.value.isEmpty)
                    Flexible(
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Color(0XFFE1F8FF),
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Padding(
                            padding:
                            const EdgeInsets.only(left: 10, right: 10, top: 5),
                            child: CardsList(),
                          )),
                    ),

                  if (text.value.isNotEmpty)
                    Flexible(
                      child: Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30))),
                          child: Padding(
                              padding: const EdgeInsets.only(
                                  left: 10, right: 10, top: 5),
                              child: Container(
                                  child:
            // GridView.count(
            //                         crossAxisCount: 2,
            //                         childAspectRatio: MediaQuery.of(context)
            //                             .size
            //                             .width /
            //                             ((MediaQuery.of(context).size.height) - 250),
            //                         children: Prodect.Prodects.where((e) => e.name
            //                             .toLowerCase()
            //                             .contains(text.value.toLowerCase()))
            //                             .map((e) => Cart(prodects: e))
            //                             .toList(),
            ListView(
            children: Prodect.Prodects.where((e) => e.name.value
                .toLowerCase()
                .contains(text.value.toLowerCase()))
                .map((e) => SearchCart(prodects: e))
                .toList(),
                                  )))),
                    ),
                ],
              );
            }
          )

      ),
      bottomNavigationBar: NavigationBar_home(),
    );
  }
}