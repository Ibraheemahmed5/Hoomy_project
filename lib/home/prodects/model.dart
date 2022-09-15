import 'package:get/get.dart';

class Prodect{
  final Rx<String> name;
  final Rx<int> price;
  final RxList<String> image_link;
  final Rx<String> desc;
  final Rx<String> catigory;
  final RxBool isFav;
  final RxBool add;
  final RxBool available;
  final RxBool delete_from_cart;
  final RxBool is_clicked;
  final RxList<int> pcolor;
  Rx<int> quantity;






  Prodect(String name,int price,List<String> image_link, List<int> pcolor,String desc,String catigory,int quantity,[bool? add ,bool? isFave,bool? available,bool? delete_from_cart,bool? is_clicked])
      : isFav = (isFave??false).obs,
        add = (add??false).obs,
        available = (available??false).obs,
        delete_from_cart = (delete_from_cart??false).obs,
        is_clicked = (is_clicked??false).obs,
        name = name.obs,
        price = price.obs,
        image_link = image_link.obs,
        desc = desc.obs,
        catigory = catigory.obs,
        quantity = quantity.obs,
        pcolor = pcolor.obs;

static List<RxString> catigories = [
  "كرسي1".obs,
  "كرسي2".obs,
  "كرسي3".obs,
  "كرسي4".obs,
  "كرسي5".obs,
  "كرسي6".obs,
  "كرسي7".obs,
  "كرسي8".obs,
  "كرسي9".obs,
  "كرسي10".obs,
  "كرسي11".obs,
  "كرسي12".obs,

];

  makeAsFav(){
    if(isFav == false)
      isFav.value = true;
    else
      isFav.value = false;
  }

 makeAsAvailable(){
    if(available == false)
      available.value = true;
    else
      available.value = false;
  }

  deleteFromCart(){
    if(delete_from_cart == false)
      delete_from_cart.value = true;
    else
      delete_from_cart.value = false;
  }

makeAsClicked(){
    if(is_clicked == false)
      is_clicked.value = true;
    else
      is_clicked.value = false;
  }

  addToCart(){
    if(add == false)
      add.value = true;
    else
      add.value = false;
  }
   toggleDone() {
    quantity.value++;
  }

   decreaseDown() {
    quantity == 1 ? 1 : quantity.value--;
  }

  static RxList<String> ImagesList = <String>['photo/hoomy1.png','photo/hoomy2.png','photo/22.png',].obs;

  static RxList<int> PColors = <int>[0xffFFC634,0xffD38033,0xffFFC634,0xff2E924A,].obs;

  static RxList<Prodect> Prodects = <Prodect>[Prodect('كرسي خشبي', 46,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', 'chair',1),
    Prodect('كرسي1', 46,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', 'chair',1),Prodect('مختلف', 46,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.',1),
    Prodect('dd', 20,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', 'chair',1),Prodect('Mika Chair', 46 ,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.',1),
    Prodect('fff', 46,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', 'chair',1),Prodect('Mika Chair', 46,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.',1),
    Prodect('bb', 46,ImagesList, PColors,'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', 'chair',1)].obs;

  static addItem(String name,int price,String image_link,String desc,String catigory,List<int> pcolor,int quantity){
    Prodect data= Prodect(name,price,ImagesList,pcolor,catigory,desc,quantity);
    Prodects.add(data);
  }

}