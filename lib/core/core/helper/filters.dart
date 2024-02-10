/*
      required int pageNumber,
      required int pageSize,
      required String searchKey,
      List<int>? sizesId,
      List<int>? colorsId,
      List<int>? subCategoriesId,
      List<int>? categoriesId,
      List<int>? collectionsId,
      List<String>? variants,
      int? sortItemsCreteria,
      double? fromPrice,
      double? toPrice
 */

Map<String, dynamic> filterMap(
    {required int pageNumber,
    required int pageSize,
    required String searchKey,
    List<int>? sizesId,
    List<int>? colorsId,
    List<int>? subCategoriesId,
    List<int>? categoriesId,
    List<int>? collectionsId,
    List<String>? variants,
    int? sortItemsCreteria,
    double? fromPrice,
    double? toPrice}) {
  print('from $fromPrice to $toPrice');
  if (sizesId != null && sizesId.isNotEmpty) {
    if (colorsId != null && colorsId.isNotEmpty) {
      if (subCategoriesId != null && subCategoriesId.isNotEmpty) {
        if (categoriesId != null && categoriesId.isNotEmpty) {
          if (collectionsId != null && collectionsId.isNotEmpty) {
            if (variants != null && variants.isNotEmpty) {
              if (fromPrice != null) {
                if (toPrice != null && toPrice != 0.0) {
                  return {
                    "sortItemsCreteria": sortItemsCreteria,
                    "pageNumber": pageNumber,
                    "pageSize": pageSize,
                    "searchKey": searchKey,
                    "Sizes": sizesId,
                    "Colors": colorsId,
                    "SubCategories": subCategoriesId,
                    "Categories": categoriesId,
                    "Collection": collectionsId,
                    "VarientsValues": variants,
                    "FromPrice": fromPrice,
                    "ToPrice": toPrice
                  };
                } else {
                  return {
                    "sortItemsCreteria": sortItemsCreteria,
                    "pageNumber": pageNumber,
                    "pageSize": pageSize,
                    "searchKey": searchKey,
                    "Sizes": sizesId,
                    "Colors": colorsId,
                    "SubCategories": subCategoriesId,
                    "Categories": categoriesId,
                    "Collection": collectionsId,
                    "VarientsValues": variants,
                    "FromPrice": fromPrice
                  };
                }
              } else if (toPrice != null && toPrice != 0.0) {
                return {
                  "sortItemsCreteria": sortItemsCreteria,
                  "pageNumber": pageNumber,
                  "pageSize": pageSize,
                  "searchKey": searchKey,
                  "Sizes": sizesId,
                  "Colors": colorsId,
                  "SubCategories": subCategoriesId,
                  "Categories": categoriesId,
                  "Collection": collectionsId,
                  "VarientsValues": variants,
                  "ToPrice": toPrice
                };
              } else {
                return {
                  "sortItemsCreteria": sortItemsCreteria,
                  "pageNumber": pageNumber,
                  "pageSize": pageSize,
                  "searchKey": searchKey,
                  "Sizes": sizesId,
                  "Colors": colorsId,
                  "SubCategories": subCategoriesId,
                  "Categories": categoriesId,
                  "Collection": collectionsId,
                  "VarientsValues": variants
                };
              }
            } else if (fromPrice != null) {
              return {
                "sortItemsCreteria": sortItemsCreteria,
                "pageNumber": pageNumber,
                "pageSize": pageSize,
                "searchKey": searchKey,
                "Sizes": sizesId,
                "Colors": colorsId,
                "SubCategories": subCategoriesId,
                "Categories": categoriesId,
                "Collection": collectionsId,
                "FromPrice": fromPrice
              };
            } else if (toPrice != null && toPrice != 0.0) {
              return {
                "sortItemsCreteria": sortItemsCreteria,
                "pageNumber": pageNumber,
                "pageSize": pageSize,
                "searchKey": searchKey,
                "Sizes": sizesId,
                "Colors": colorsId,
                "SubCategories": subCategoriesId,
                "Categories": categoriesId,
                "Collection": collectionsId,
                "ToPrice": toPrice
              };
            } else {
              return {
                "sortItemsCreteria": sortItemsCreteria,
                "pageNumber": pageNumber,
                "pageSize": pageSize,
                "searchKey": searchKey,
                "Sizes": sizesId,
                "Colors": colorsId,
                "SubCategories": subCategoriesId,
                "Categories": categoriesId,
                "Collection": collectionsId
              };
            }
          } else if (variants != null && variants.isNotEmpty) {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Sizes": sizesId,
              "Colors": colorsId,
              "SubCategories": subCategoriesId,
              "Categories": categoriesId,
              "VarientsValues": variants
            };
          } else if (fromPrice != null) {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Sizes": sizesId,
              "Colors": colorsId,
              "SubCategories": subCategoriesId,
              "Categories": categoriesId,
              "FromPrice": fromPrice
            };
          } else if (toPrice != null && toPrice != 0.0) {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Sizes": sizesId,
              "Colors": colorsId,
              "SubCategories": subCategoriesId,
              "Categories": categoriesId,
              "ToPrice": toPrice
            };
          } else {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Sizes": sizesId,
              "Colors": colorsId,
              "SubCategories": subCategoriesId,
              "Categories": categoriesId
            };
          }
        } else if (collectionsId != null && collectionsId.isNotEmpty) {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Sizes": sizesId,
            "Colors": colorsId,
            "SubCategories": subCategoriesId,
            "Collection": collectionsId
          };
        } else if (variants != null && variants.isNotEmpty) {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Sizes": sizesId,
            "Colors": colorsId,
            "SubCategories": subCategoriesId,
            "VarientsValues": variants
          };
        } else if (fromPrice != null) {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Sizes": sizesId,
            "Colors": colorsId,
            "SubCategories": subCategoriesId,
            "FromPrice": fromPrice
          };
        } else if (toPrice != null && toPrice != 0.0) {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Sizes": sizesId,
            "Colors": colorsId,
            "SubCategories": subCategoriesId,
            "ToPrice": toPrice
          };
        } else {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Sizes": sizesId,
            "Colors": colorsId,
            "SubCategories": subCategoriesId
          };
        }
      } else if (categoriesId != null && categoriesId.isNotEmpty) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Sizes": sizesId,
          "Colors": colorsId,
          "Categories": categoriesId
        };
      } else if (collectionsId != null && collectionsId.isNotEmpty) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Sizes": sizesId,
          "Colors": colorsId,
          "Collection": collectionsId
        };
      } else if (variants != null && variants.isNotEmpty) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Sizes": sizesId,
          "Colors": colorsId,
          "VarientsValues": variants
        };
      } else if (fromPrice != null) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Sizes": sizesId,
          "Colors": colorsId,
          "FromPrice": fromPrice
        };
      } else if (toPrice != null && toPrice != 0.0) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Sizes": sizesId,
          "Colors": colorsId,
          "ToPrice": toPrice
        };
      } else {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Sizes": sizesId,
          "Colors": colorsId
        };
      }
    } else if (subCategoriesId != null && subCategoriesId.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId,
        "SubCategories": subCategoriesId
      };
    } else if (categoriesId != null && categoriesId.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId,
        "Categories": categoriesId
      };
    } else if (collectionsId != null && collectionsId.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId,
        "Collection": collectionsId
      };
    } else if (variants != null && variants.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId,
        "VarientsValues": variants
      };
    } else if (fromPrice != null) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId,
        "FromPrice": fromPrice
      };
    } else if (toPrice != null && toPrice != 0.0) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId,
        "ToPrice": toPrice
      };
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Sizes": sizesId
      };
    }
  } else if (colorsId != null && colorsId.isNotEmpty) {
    if (subCategoriesId != null && subCategoriesId.isNotEmpty) {
      if (categoriesId != null && categoriesId.isNotEmpty) {
        if (collectionsId != null && collectionsId.isNotEmpty) {
          if (variants != null && variants.isNotEmpty) {
            if (fromPrice != null) {
              if (toPrice != null && toPrice != 0.0) {
                return {
                  "sortItemsCreteria": sortItemsCreteria,
                  "pageNumber": pageNumber,
                  "pageSize": pageSize,
                  "searchKey": searchKey,
                  "Colors": colorsId,
                  "SubCategories": subCategoriesId,
                  "Categories": categoriesId,
                  "Collection": collectionsId,
                  "VarientsValues": variants,
                  "FromPrice": fromPrice,
                  "ToPrice": toPrice
                };
              } else {
                return {
                  "sortItemsCreteria": sortItemsCreteria,
                  "pageNumber": pageNumber,
                  "pageSize": pageSize,
                  "searchKey": searchKey,
                  "Colors": colorsId,
                  "SubCategories": subCategoriesId,
                  "Categories": categoriesId,
                  "Collection": collectionsId,
                  "VarientsValues": variants,
                  "FromPrice": fromPrice
                };
              }
            } else {
              return {
                "sortItemsCreteria": sortItemsCreteria,
                "pageNumber": pageNumber,
                "pageSize": pageSize,
                "searchKey": searchKey,
                "Colors": colorsId,
                "SubCategories": subCategoriesId,
                "Categories": categoriesId,
                "Collection": collectionsId,
                "VarientsValues": variants
              };
            }
          } else {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Colors": colorsId,
              "SubCategories": subCategoriesId,
              "Categories": categoriesId,
              "Collection": collectionsId
            };
          }
        } else {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Colors": colorsId,
            "SubCategories": subCategoriesId,
            "Categories": categoriesId
          };
        }
      }
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId,
        "SubCategories": subCategoriesId
      };
    } else if (categoriesId != null && categoriesId.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId,
        "Categories": categoriesId
      };
    } else if (collectionsId != null && collectionsId.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId,
        "Collection": collectionsId
      };
    } else if (variants != null && variants.isNotEmpty) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId,
        "VarientsValues": variants
      };
    } else if (fromPrice != null) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId,
        "FromPrice": fromPrice
      };
    } else if (toPrice != null && toPrice != 0.0) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId,
        "ToPrice": toPrice
      };
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Colors": colorsId
      };
    }
  } else if (subCategoriesId != null && subCategoriesId.isNotEmpty) {
    if (categoriesId != null && categoriesId.isNotEmpty) {
      if (collectionsId != null && collectionsId.isNotEmpty) {
        if (variants != null && variants.isNotEmpty) {
          if (fromPrice != null) {
            if (toPrice != null && toPrice != 0.0) {
              return {
                "sortItemsCreteria": sortItemsCreteria,
                "pageNumber": pageNumber,
                "pageSize": pageSize,
                "searchKey": searchKey,
                "SubCategories": subCategoriesId,
                "Categories": categoriesId,
                "Collection": collectionsId,
                "VarientsValues": variants,
                "FromPrice": fromPrice,
                "ToPrice": toPrice
              };
            } else {
              return {
                "sortItemsCreteria": sortItemsCreteria,
                "pageNumber": pageNumber,
                "pageSize": pageSize,
                "searchKey": searchKey,
                "SubCategories": subCategoriesId,
                "Categories": categoriesId,
                "Collection": collectionsId,
                "VarientsValues": variants,
                "FromPrice": fromPrice
              };
            }
          } else {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "SubCategories": subCategoriesId,
              "Categories": categoriesId,
              "Collection": collectionsId,
              "VarientsValues": variants
            };
          }
        } else {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "SubCategories": subCategoriesId,
            "Categories": categoriesId,
            "Collection": collectionsId
          };
        }
      } else {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "SubCategories": subCategoriesId,
          "Categories": categoriesId
        };
      }
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "SubCategories": subCategoriesId
      };
    }
  } else if (categoriesId != null && categoriesId.isNotEmpty) {
    if (collectionsId != null && collectionsId.isNotEmpty) {
      if (variants != null && variants.isNotEmpty) {
        if (fromPrice != null) {
          if (toPrice != null && toPrice != 0.0) {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Categories": categoriesId,
              "Collection": collectionsId,
              "VarientsValues": variants,
              "FromPrice": fromPrice,
              "ToPrice": toPrice
            };
          } else {
            return {
              "sortItemsCreteria": sortItemsCreteria,
              "pageNumber": pageNumber,
              "pageSize": pageSize,
              "searchKey": searchKey,
              "Categories": categoriesId,
              "Collection": collectionsId,
              "VarientsValues": variants,
              "FromPrice": fromPrice
            };
          }
        } else {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Categories": categoriesId,
            "Collection": collectionsId,
            "VarientsValues": variants
          };
        }
      } else {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Categories": categoriesId,
          "Collection": collectionsId
        };
      }
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Categories": categoriesId
      };
    }
  } else if (collectionsId != null && collectionsId.isNotEmpty) {
    if (variants != null && variants.isNotEmpty) {
      if (fromPrice != null) {
        if (toPrice != null && toPrice != 0.0) {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Collection": collectionsId,
            "VarientsValues": variants,
            "FromPrice": fromPrice,
            "ToPrice": toPrice
          };
        } else {
          return {
            "sortItemsCreteria": sortItemsCreteria,
            "pageNumber": pageNumber,
            "pageSize": pageSize,
            "searchKey": searchKey,
            "Collection": collectionsId,
            "VarientsValues": variants,
            "FromPrice": fromPrice
          };
        }
      } else {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Collection": collectionsId,
          "VarientsValues": variants
        };
      }
    } else if (fromPrice != null) {
      if (toPrice != null && toPrice != 0.0) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Collection": collectionsId,
          "FromPrice": fromPrice,
          "ToPrice": toPrice
        };
      } else {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "Collection": collectionsId,
          "FromPrice": fromPrice
        };
      }
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "Collection": collectionsId
      };
    }
  } else if (variants != null && variants.isNotEmpty) {
    if (fromPrice != null) {
      if (toPrice != null && toPrice != 0.0) {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "VarientsValues": variants,
          "FromPrice": fromPrice,
          "ToPrice": toPrice
        };
      } else {
        return {
          "sortItemsCreteria": sortItemsCreteria,
          "pageNumber": pageNumber,
          "pageSize": pageSize,
          "searchKey": searchKey,
          "VarientsValues": variants,
          "FromPrice": fromPrice
        };
      }
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "VarientsValues": variants
      };
    }
  } else if (fromPrice != null) {
    if (toPrice != null && toPrice != 0.0) {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "FromPrice": fromPrice,
        "ToPrice": toPrice
      };
    } else {
      return {
        "sortItemsCreteria": sortItemsCreteria,
        "pageNumber": pageNumber,
        "pageSize": pageSize,
        "searchKey": searchKey,
        "FromPrice": fromPrice
      };
    }
  } else if (toPrice != null && toPrice != 0.0) {
    return {
      "sortItemsCreteria": sortItemsCreteria,
      "pageNumber": pageNumber,
      "pageSize": pageSize,
      "searchKey": searchKey,
      "ToPrice": toPrice
    };
  } else if (sortItemsCreteria != null && sortItemsCreteria != 0.0) {
    return {
      "sortItemsCreteria": sortItemsCreteria,
      "pageNumber": pageNumber,
      "pageSize": pageSize,
      "searchKey": searchKey,
    };
  } else {
    return {};
  }
}
