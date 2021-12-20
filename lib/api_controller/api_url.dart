class ApiKeys {
  String id = '';
  static String baseUrl = 'https://azoka.com.bd/';
  static String imageHead = 'https://pos.azoka.com.bd/';
  static String forgotPassword = '${baseUrl}customers/resetemail/customer';

  static String slider = '${baseUrl}api/v1/sliders';
  static String shops = '${baseUrl}api/v1/shops';
  static String subShops = '${baseUrl}api/v1/shops/';
  static String newArrivals = '${baseUrl}api/v1/new-arrivals';
  static String featuredProducts = '${baseUrl}api/v1/featured-products';
  static String randomProduct = '${baseUrl}api/v1/filter-product';
  static String filterAttributes = '${baseUrl}api/v1/filter-attributes';
  static String dealBanner = '${baseUrl}api/v1/deal';
  static String saleProducts = '${baseUrl}api/v1/sale';
  static String filterSearch = '${baseUrl}api/v1/filter-product';
  static String search = '${baseUrl}api/v1/search/';
  static String login = '${baseUrl}api/v1/login';
  static String logout = '${baseUrl}api/v1/logout?token';
  static String registration = '${baseUrl}api/v1/register';
  static String wishList = '${baseUrl}api/v1/wishlist?token';
  static String addWishList = '${baseUrl}api/v1/wishlist?token';
  static String removeWishList = '${baseUrl}api/v1/wishlist/delete';
  static String acccount = '${baseUrl}api/v1/my-account';
  static String updateAccount = '${baseUrl}api/v1/my-account/update-account';
  static String updateAddress = '${baseUrl}api/v1/my-account/update-address';
  static String cashOnDelivery = '${baseUrl}api/pay';
  static String onlinePayment = '${baseUrl}api/v1/online-payment';
  static String authenticateEmail = '${baseUrl}api/v1/social-login';
  static String similarProducts = '${baseUrl}api/v1/similar-products/';
  static String postReview = '${baseUrl}api/v1/product/rate';
  static String coupon = '${baseUrl}api/v1/coupon';
  static String payAgain = '${baseUrl}api/v1/pay-again';
}
