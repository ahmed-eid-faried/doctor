abstract class ApiKeys {
  static String publishableKeyStripe =
      "pk_test_51Ngm3RGhokhcgA0sRWmKDxJDSld4r4je29GB4v1RGKLur8lJFrcLDql0Ahq1glDykEnShRyfvK9Cosi6GselKd5l00eXGHv5M9";
  static String secretKeyStripe =
      "sk_test_51Ngm3RGhokhcgA0sLs7kgb0RX34VmN8tk8mJCq6oliiMX3Sxng0M4hCemz3Bikbd7K76Palkb9bbFndeTwWVE3lm00zHVsKwg0";
////////////////////////////////////////////////////////////////////////////////////////////////
  static String clientIdPaypal =
      "AewhWuRIxAABJWgHG_ig5SFMcGBu0VHNdnawyylAo-KSd8vLjKfLoNoHJAdB6yO8S9HU6kPRBCt4zgxl";
  static String secretKeyPaypal =
      "EKTzrvQRHYhPh8W0o6O-1ym4llHfZQa3htjG5c61sY_wFNKOCjcoZzjTycurOc71Qqi6gTqse0Lroy5K";
  // static String returnURLPaypal =
  //     "https://amadytech.com/ecommerce/paypal/success.html";
  // static String cancelURLPaypal =
  //     "https://amadytech.com/ecommerce/paypal/fail.html";
////////////////////////////////////////////////////////////////////////////////////////////////
  static const String basicGooglePayIsReadyToPay = '''{
  "apiVersion": 2,
  "apiVersionMinor": 0,
  "allowedPaymentMethods": [
    {
      "type": "CARD",
      "parameters": {
        "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
        "allowedCardNetworks": ["AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA"]
      }
    }
  ]
}''';

  static const String basicGooglePayLoadPaymentData = '''{
  "apiVersion": 2,
  "apiVersionMinor": 0,
  "merchantInfo": {
    "merchantName": "Example Merchant"
  },
  "allowedPaymentMethods": [
    {
      "type": "CARD",
      "parameters": {
        "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
        "allowedCardNetworks": ["AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA"]
      },
      "tokenizationSpecification": {
        "type": "PAYMENT_GATEWAY",
        "parameters": {
          "gateway": "example",
          "gatewayMerchantId": "exampleGatewayMerchantId"
        }
      }
    }
  ],
  "transactionInfo": {
    "totalPriceStatus": "FINAL",
    "totalPrice": "12.34",
    "currencyCode": "USD"
  }
}''';

  static const String invalidGooglePayIsReadyToPay = '''{
  "apiVersion": 2,
  "apiVersionMinor": 0,
  "allowedPaymentMethods": [
    {
      "type": "CARD",
      "parameters": {}
    }
  ]
}''';

  static const String invalidGooglePayLoadPaymentData = '''{
  "apiVersion": 2,
  "apiVersionMinor": 0,
  "merchantInfo": {
    "merchantName": "Example Merchant"
  },
  "allowedPaymentMethods": [
    {
      "type": "CARD",
      "parameters": {
        "allowedAuthMethods": ["PAN_ONLY", "CRYPTOGRAM_3DS"],
        "allowedCardNetworks": ["AMEX", "DISCOVER", "INTERAC", "JCB", "MASTERCARD", "VISA"]
      },
      "tokenizationSpecification": {
        "type": "PAYMENT_GATEWAY",
        "parameters": {
          "gateway": "example",
          "gatewayMerchantId": "exampleGatewayMerchantId"
        }
      }
    }
  ],
  "transactionInfo": {
    "totalPriceStatus": "FINAL",
    "totalPrice": "12.34",
    "currencyCode": "USD"
  }
}''';
}
