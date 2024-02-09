 
class ItemsModel {
  String? ratingId;
  String? ratingUserid;
  String? ratingItem;
  String? ratingRating;
  String? ratingComment;
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
  String? categoriesId;
  String? categoriesName;
  String? categoriesNameAr;
  String? categoriesImage;
  String? categoriesDatatime;
  String? usersId;
  String? favorite;
  String? totalrating;
  String? itemspricediscount;

  ItemsModel(
      {this.ratingId,
      this.ratingUserid,
      this.ratingItem,
      this.ratingRating,
      this.ratingComment,
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
      this.categoriesId,
      this.categoriesName,
      this.categoriesNameAr,
      this.categoriesImage,
      this.categoriesDatatime,
      this.usersId,
      this.favorite,
      this.totalrating,
      this.itemspricediscount});

  ItemsModel.fromJson(Map<String, dynamic> json) {
    ratingId = json['rating_id'];
    ratingUserid = json['rating_userid'];
    ratingItem = json['rating_item'];
    ratingRating = json['rating_rating'];
    ratingComment = json['rating_comment'];
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
    categoriesId = json['categories_id'];
    categoriesName = json['categories_name'];
    categoriesNameAr = json['categories_name_ar'];
    categoriesImage = json['categories_image'];
    categoriesDatatime = json['categories_datatime'];
    usersId = json['users_id'];
    favorite = json['favorite'];
    totalrating = json['totalrating'];
    itemspricediscount = json['itemspricediscount'];
  }
  // ItemsModel.fromTopRatingModel(TopRatingItemsModel topRatingModel) {
  //   ratingId = topRatingModel.ratingId;
  //   ratingUserid = topRatingModel.ratingUserid;
  //   ratingItem = topRatingModel.ratingItem;
  //   ratingRating = topRatingModel.ratingRating;
  //   ratingComment = topRatingModel.ratingComment;
  //   itemsId = topRatingModel.itemsId;
  //   itemsName = topRatingModel.itemsName;
  //   itemsNameAr = topRatingModel.itemsNameAr;
  //   itemsDes = topRatingModel.itemsDes;
  //   itemsDesAr = topRatingModel.itemsDesAr;
  //   itemsImage = topRatingModel.itemsImage;
  //   itemsCount = topRatingModel.itemsCount;
  //   itemsActive = topRatingModel.itemsActive;
  //   itemsPrice = topRatingModel.itemsPrice;
  //   itemsDiscount = topRatingModel.itemsDiscount;
  //   itemsDate = topRatingModel.itemsDate;
  //   itemsCategories = topRatingModel.itemsCategories;
  //   categoriesId = topRatingModel.categoriesId;
  //   categoriesName = topRatingModel.categoriesName;
  //   categoriesNameAr = topRatingModel.categoriesNameAr;
  //   categoriesImage = topRatingModel.categoriesImage;
  //   categoriesDatatime = topRatingModel.categoriesDatatime;
  //   usersId = topRatingModel.usersId;
  //   favorite = topRatingModel.favorite;
  //   totalrating = topRatingModel.totalrating;
  //   itemspricediscount = topRatingModel.itemspricediscount;
  // }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['rating_id'] = ratingId;
    data['rating_userid'] = ratingUserid;
    data['rating_item'] = ratingItem;
    data['rating_rating'] = ratingRating;
    data['rating_comment'] = ratingComment;
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
    data['categories_id'] = categoriesId;
    data['categories_name'] = categoriesName;
    data['categories_name_ar'] = categoriesNameAr;
    data['categories_image'] = categoriesImage;
    data['categories_datatime'] = categoriesDatatime;
    data['users_id'] = usersId;
    data['favorite'] = favorite;
    data['totalrating'] = totalrating;
    data['itemspricediscount'] = itemspricediscount;
    return data;
  }
}
