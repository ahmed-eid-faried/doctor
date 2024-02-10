class EndPoints {
  static const String baseUrl = 'https://';
  static const String bishyakaUrl = '/www.bishyaka.com/api/';
  static const String base = 'https://www.bishyaka.com/';
  static const String nodeUrl = 'bishyaka.onrender.com/';

  //-----------------------------------------------------------------------------------------------------------------------------------------------------------------\\
  static const String loginEndpoint = '';
  static const String registerEndpoint = '';
  static const String changePasswordEndpoint = '';
  static const String otpEndpoint = '';
  static const String countriesEndpoint =
      '${nodeUrl}api/countries/allCountries';
  //----------------------------------------------------------// Collections EndPoints \\---------------------------------------------------------------------\\

  static const String bannersEndpoint = '${bishyakaUrl}Common/HomePages';

  static const String collectionsEndpoint =
      '${bishyakaUrl}Collection/GetCollections';
  static const String collectionCategoriesEndpoint =
      '${bishyakaUrl}Category/GetCategoriesByCollection';
  static const String categoriesEndpoint =
      '${bishyakaUrl}Category/GetCategories';
  static const String subCategoriesEndpoint =
      '${bishyakaUrl}SubCategory/GetSubCategoriesByCategory';
  //----------------------------------------------------------// Collections EndPoints \\---------------------------------------------------------------------\\

  static const String searchItemsEndpoint = '${bishyakaUrl}Item/SearchItems';
  static const String trendingItemsEndpoint =
      '${bishyakaUrl}Item/GetTrendingItems';
  static const String flashSaleItemsEndpoint =
      '${bishyakaUrl}Item/GetFlashSaleItems';
  static const String listProductsEndpoint =
      '${bishyakaUrl}Product/ListProducts';
  static const String productsCountEndpoint =
      '${bishyakaUrl}Product/ListProductsCount';
  static const String productEndpoint =
      '${bishyakaUrl}Product/GetProductDetails';

//----------------------------------------------------------// Filters EndPoints \\---------------------------------------------------------------------\\
  static const String filtersEndpoint = '${bishyakaUrl}Product/GetFilters';
  static const String collarEndpoint = '${bishyakaUrl}Collar/GetCollars';
  static const String colorEndpoint = '${bishyakaUrl}Color/GetColors';
  static const String fitEndpoint = '${bishyakaUrl}Fit/GetFits';
  static const String lengthEndpoint = '${bishyakaUrl}Length/GetLengths';
  static const String materialEndpoint = '${bishyakaUrl}Material/GetMaterials';
  static const String sizeEndpoint = '${bishyakaUrl}Size/GetSizes';
  static const String sleeveEndpoint = '${bishyakaUrl}Sleeve/GetSleeves';

  //****************************************************************Create Endpoints****************************************************\\

  // static const String createReservationOrderEndpoint =
  //     'create_reservation_order';
}
