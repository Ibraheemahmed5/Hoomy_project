import 'package:get/get.dart';

class Item{
  final Rx<String> name;
  final Rx<String> price;
  final Rx<String> image_link;
  final  Rx<String> desc;
  final Rx<String> catigory;
  final RxBool isFav;
  final RxBool add;
  final RxBool available;

  Item(String name,String price,String image_link,String desc, String catigory,[bool? add ,bool? isFave,bool? available])
      : isFav = (isFave??false).obs,
        add = (add??false).obs,
        available = (available??false).obs,
        name = name.obs,
        price = price.obs,
        image_link = image_link.obs,
        desc = desc.obs,
        catigory = catigory.obs;



  makeAsFav(){
    if(isFav == false)
      isFav.value = true;
    else
      isFav.value = false;
  }

  addToCart(){
    if(add == false)
      add.value = true;
    else
      add.value = false;
  }



  static RxList<Item> items = <Item>[Item('Mika Chair', '46.99 ','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),
                                     Item('Mika Chair', '46.99','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),Item('Mika Chair', '46.99 ','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),
                                     Item('Mika Chair', '46.99','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),Item('Mika Chair', '46.99 ','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),
                                     Item('Mika Chair', '46.99','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),Item('Mika Chair', '46.99 ','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.'),
                                     Item('Mika Chair', '46.99','photo/hoomy1.png', 'GAMIFIED SEATING: A racecar-style gaming chair that provides luxury and comfort, whether its used for intense gaming sessions and climbing to the top of the leaderboards, or long work days.', ' in fashion.')].obs;

  static addItem(String name,String price,String image_link,String desc,String catigory){
    Item data= Item(name,price,image_link,desc,catigory);
    items.add(data);
  }

}