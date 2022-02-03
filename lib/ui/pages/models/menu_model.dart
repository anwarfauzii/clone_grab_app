class MenuModel {
  String? imageUrl;
  String? title;

  MenuModel({this.imageUrl, this.title});

  MenuModel.fromJson(Map<String, dynamic> json) {
    imageUrl = json['image_url'];
    title = json['title'];
  }

  List menuList = [
    {'assets/image/icon/home-icon-Food.png', 'Food'},
    {'assets/image/icon/home-icon-Mart.png', 'Mart'},
    {'assets/image/icon/home-icon-Transport.png', 'Transport'},
    {'assets/image/icon/home-icon-Assistant.png', 'Assistant'},
    {'assets/image/icon/home-icon-Delivery.png', 'Delivery'},
    {'assets/image/icon/home_icon_Gift.png', 'Offers'},
    {'assets/image/icon/home-icon-Gift.png', 'Gift Card'},
    {'assets/image/icon/home_icon_Insurance.png', 'Insurance'},
    {'assets/image/icon/home-icon-Hotels.png', 'Hotels'},
    {'assets/image/icon/home-icon-Rent.png', 'Rent'},
    {'assets/image/icon/home-icon-Personal-Loan.png', 'Pay Loan'},
    {'assets/image/icon/home_icon_Other.png', 'Other'},
  ];
  // List menuName = [
  //   'Food',
  //   'Mart',
  //   'Transport',
  //   'Assistant',
  //   'Delivery',
  //   'Offers',
  //   'Gift Card',
  //   'Insurance',
  //   'Hotels',
  //   'Rent',
  //   'Pay Loan'
  // ];
}
