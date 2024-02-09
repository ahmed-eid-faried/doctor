class AppLink {
  static String server = "https://amadytech.com/ecommerce";
  static String test = "$server/test.php";
  static String image = "$server/upload";
  static String imageCategories = "$image/categories";
  static String imageitems = "$image/items";
  /////==========================auth=====================================//////
  static String signup = "$server/auth/signup.php";
  static String verifycodesignup = "$server/auth/verifycode.php";
  static String login = "$server/auth/login.php";
  static String resend = "$server/auth/resend.php";
  /////=========================forgetpassword===========================//////
  static String chechemailforgetpassword =
      "$server/forgetpassword/chechemail.php";
  static String verifycodeforgetpassword =
      "$server/forgetpassword/verifycode.php";
  static String ressetpassword = "$server/forgetpassword/ressetpassword.php";
  /////===============================home================================//////
  static String home = "$server/home.php";
  static String search = "$server/search/search.php";
  static String offers = "$server/offers/offers.php";
  /////===============================items================================//////
  static String items = "$server/items/items.php";
  static String ratingitem = "$server/rating/add.php";
  /////=============================favorite==============================//////
  static String favoriteadd = "$server/favorite/add.php";
  static String favoriteremove = "$server/favorite/remove.php";
  static String favoriteview = "$server/favorite/view.php";
  static String favoritedelete = "$server/favorite/delete.php";
  /////=============================cart==============================//////
  static String cartadd = "$server/cart/add.php";
  static String cartdelete = "$server/cart/delete.php";
  static String cartview = "$server/cart/view.php";
  static String cartgetcountofitems = "$server/cart/getcountofitems.php";
  /////=============================coupon==============================//////
  static String cartcoupon = "$server/coupon/couponname.php";
  /////=============================checkout==============================//////
  static String checkout = "$server/orders/checkout.php";
  /////=============================orders==============================//////
  static String vieworders = "$server/orders/orders.php";
  static String ordersdetails = "$server/orders/details.php";
  static String deleteorder = "$server/orders/delete.php";
  static String archiveorder = "$server/orders/archive.php";
  static String ratingorder = "$server/orders/rating.php";
  static String polylines =
      "https://api.openrouteservice.org/v2/directions/driving-car";
  /////=============================address==============================//////
  static String addressadd = "$server/address/add.php";
  static String addressdelete = "$server/address/delete.php";
  static String addressview = "$server/address/view.php";
  static String addressedit = "$server/address/edit.php";
/////=============================notifications==============================//////
  static String notifications = "$server/notifications/view.php";
/////=============================customersservice==============================//////
  static String customersservice = "$server/contactus/add.php";
}
