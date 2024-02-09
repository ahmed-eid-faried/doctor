class MyCartViewModel {
  String? itemsprice;
  String? finalpriceofoneitem;
  String? countitems;
  String? itemsId;
  String? itemsName;
  String? itemsNameAr;
  String? itemsDes;
  String? itemsDesAr;
  String? itemsImage;
  String? itemsCount;
  String? itemsActive;
  String? itemsPrice;
  String? itemsDiscount;
  String? itemsDate;
  String? itemsCategories;
  String? cartId;
  String? cartUserid;
  String? cartItemsid;
  String? cartOrders;

  MyCartViewModel(
      {this.itemsprice,
      this.finalpriceofoneitem,
      this.countitems,
      this.itemsId,
      this.itemsName,
      this.itemsNameAr,
      this.itemsDes,
      this.itemsDesAr,
      this.itemsImage,
      this.itemsCount,
      this.itemsActive,
      this.itemsPrice,
      this.itemsDiscount,
      this.itemsDate,
      this.itemsCategories,
      this.cartId,
      this.cartUserid,
      this.cartItemsid,
      this.cartOrders});

  MyCartViewModel.fromJson(Map<String, dynamic> json) {
    itemsprice = json['itemsprice'];
    finalpriceofoneitem = json['finalpriceofoneitem'];
    countitems = json['countitems'];
    itemsId = json['items_id'];
    itemsName = json['items_name'];
    itemsNameAr = json['items_name_ar'];
    itemsDes = json['items_des'];
    itemsDesAr = json['items_des_ar'];
    itemsImage = json['items_image'];
    itemsCount = json['items_count'];
    itemsActive = json['items_active'];
    itemsPrice = json['items_price'];
    itemsDiscount = json['items_discount'];
    itemsDate = json['items_date'];
    itemsCategories = json['items_categories'];
    cartId = json['cart_id'];
    cartUserid = json['cart_userid'];
    cartItemsid = json['cart_itemsid'];
    cartOrders = json['cart_orders'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['itemsprice'] = itemsprice;
    data['finalpriceofoneitem'] = finalpriceofoneitem;
    data['countitems'] = countitems;
    data['items_id'] = itemsId;
    data['items_name'] = itemsName;
    data['items_name_ar'] = itemsNameAr;
    data['items_des'] = itemsDes;
    data['items_des_ar'] = itemsDesAr;
    data['items_image'] = itemsImage;
    data['items_count'] = itemsCount;
    data['items_active'] = itemsActive;
    data['items_price'] = itemsPrice;
    data['items_discount'] = itemsDiscount;
    data['items_date'] = itemsDate;
    data['items_categories'] = itemsCategories;
    data['cart_id'] = cartId;
    data['cart_userid'] = cartUserid;
    data['cart_itemsid'] = cartItemsid;
    data['cart_orders'] = cartOrders;
    return data;
  }
}
