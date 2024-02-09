class OrdersModel {
  String? ordersId;
  String? ordersUserid;
  String? ordersAddress;
  String? ordersRecivetype;
  String? ordersPricedelivery;
  String? ordersPrice;
  String? ordersCoupon;
  String? ordersDatetime;
  String? ordersPaymentmethod;
  String? ordersTotalprice;
  String? ordersStatus;
  String? ordersRating;
  String? ordersComment;
  String? ordersDeliveryid;
  String? ordersCouponprice;
  String? ordersDeliveryaddresslat;
  String? ordersDeliveryaddresslong;
  String? addressId;
  String? addressUserid;
  String? addressCity;
  String? addressStreet;
  String? addressLat;
  String? addressLong;
  String? addressName;
  String? usersId;
  String? usersName;
  String? usersEmail;
  String? usersPhone;
  String? usersVerfiycode;
  String? usersApprove;
  String? usersCreate;
  String? usersPassword;
  String? deliveryId;
  String? deliveryName;
  String? deliveryEmail;
  String? deliveryPhone;
  String? deliveryVerfiycode;
  String? deliveryApprove;
  String? deliveryCreate;
  String? deliveryPassword;

  OrdersModel(
      {this.ordersId,
      this.ordersUserid,
      this.ordersAddress,
      this.ordersRecivetype,
      this.ordersPricedelivery,
      this.ordersPrice,
      this.ordersCoupon,
      this.ordersDatetime,
      this.ordersPaymentmethod,
      this.ordersTotalprice,
      this.ordersStatus,
      this.ordersRating,
      this.ordersComment,
      this.ordersDeliveryid,
      this.ordersCouponprice,
      this.ordersDeliveryaddresslat,
      this.ordersDeliveryaddresslong,
      this.addressId,
      this.addressUserid,
      this.addressCity,
      this.addressStreet,
      this.addressLat,
      this.addressLong,
      this.addressName,
      this.usersId,
      this.usersName,
      this.usersEmail,
      this.usersPhone,
      this.usersVerfiycode,
      this.usersApprove,
      this.usersCreate,
      this.usersPassword,
      this.deliveryId,
      this.deliveryName,
      this.deliveryEmail,
      this.deliveryPhone,
      this.deliveryVerfiycode,
      this.deliveryApprove,
      this.deliveryCreate,
      this.deliveryPassword});

  OrdersModel.fromJson(Map<String, dynamic> json) {
    ordersId = json['orders_id'];
    ordersUserid = json['orders_userid'];
    ordersAddress = json['orders_address'];
    ordersRecivetype = json['orders_recivetype'];
    ordersPricedelivery = json['orders_pricedelivery'];
    ordersPrice = json['orders_price'];
    ordersCoupon = json['orders_coupon'];
    ordersDatetime = json['orders_datetime'];
    ordersPaymentmethod = json['orders_paymentmethod'];
    ordersTotalprice = json['orders_totalprice'];
    ordersStatus = json['orders_status'];
    ordersRating = json['orders_rating'];
    ordersComment = json['orders_comment'];
    ordersDeliveryid = json['orders_deliveryid'];
    ordersCouponprice = json['orders_couponprice'];
    ordersDeliveryaddresslat = json['orders_deliveryaddresslat'];
    ordersDeliveryaddresslong = json['orders_deliveryaddresslong'];
    addressId = json['address_id'];
    addressUserid = json['address_userid'];
    addressCity = json['address_city'];
    addressStreet = json['address_street'];
    addressLat = json['address_lat'];
    addressLong = json['address_long'];
    addressName = json['address_name'];
    usersId = json['users_id'];
    usersName = json['users_name'];
    usersEmail = json['users_email'];
    usersPhone = json['users_phone'];
    usersVerfiycode = json['users_verfiycode'];
    usersApprove = json['users_approve'];
    usersCreate = json['users_create'];
    usersPassword = json['users_password'];
    deliveryId = json['delivery_id'];
    deliveryName = json['delivery_name'];
    deliveryEmail = json['delivery_email'];
    deliveryPhone = json['delivery_phone'];
    deliveryVerfiycode = json['delivery_verfiycode'];
    deliveryApprove = json['delivery_approve'];
    deliveryCreate = json['delivery_create'];
    deliveryPassword = json['delivery_password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['orders_id'] = ordersId;
    data['orders_userid'] = ordersUserid;
    data['orders_address'] = ordersAddress;
    data['orders_recivetype'] = ordersRecivetype;
    data['orders_pricedelivery'] = ordersPricedelivery;
    data['orders_price'] = ordersPrice;
    data['orders_coupon'] = ordersCoupon;
    data['orders_datetime'] = ordersDatetime;
    data['orders_paymentmethod'] = ordersPaymentmethod;
    data['orders_totalprice'] = ordersTotalprice;
    data['orders_status'] = ordersStatus;
    data['orders_rating'] = ordersRating;
    data['orders_comment'] = ordersComment;
    data['orders_deliveryid'] = ordersDeliveryid;
    data['orders_couponprice'] = ordersCouponprice;
    data['orders_deliveryaddresslat'] = ordersDeliveryaddresslat;
    data['orders_deliveryaddresslong'] = ordersDeliveryaddresslong;
    data['address_id'] = addressId;
    data['address_userid'] = addressUserid;
    data['address_city'] = addressCity;
    data['address_street'] = addressStreet;
    data['address_lat'] = addressLat;
    data['address_long'] = addressLong;
    data['address_name'] = addressName;
    data['users_id'] = usersId;
    data['users_name'] = usersName;
    data['users_email'] = usersEmail;
    data['users_phone'] = usersPhone;
    data['users_verfiycode'] = usersVerfiycode;
    data['users_approve'] = usersApprove;
    data['users_create'] = usersCreate;
    data['users_password'] = usersPassword;
    data['delivery_id'] = deliveryId;
    data['delivery_name'] = deliveryName;
    data['delivery_email'] = deliveryEmail;
    data['delivery_phone'] = deliveryPhone;
    data['delivery_verfiycode'] = deliveryVerfiycode;
    data['delivery_approve'] = deliveryApprove;
    data['delivery_create'] = deliveryCreate;
    data['delivery_password'] = deliveryPassword;
    return data;
  }
}
