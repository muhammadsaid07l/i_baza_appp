part of 'catalog_bloc.dart';


class ProductS {
  final LoadingStatus status;
  final List<ProductModel> productList;
  final List<ProductModel> searchProduct;
  final bool isSearching;
  ProductS({
    required this.status,
    required this.productList,
    required this.searchProduct,
    required this.isSearching,
  });


  ProductS copyWith({
    LoadingStatus? status,
    List<ProductModel>? categoryList,
    List<ProductModel>? searchedCategory,
    bool? isSearching,
  }) {
    return ProductS(
      status: status ?? this.status,
      productList: categoryList ?? this.productList,
      searchProduct: searchedCategory ?? this.searchProduct,
      isSearching: isSearching ?? this.isSearching,
    );
  }

  @override
  String toString() {
    return 'ProductState(status: $status, categoryList: $productList, isSearching: $isSearching,searchedCategory: $searchProduct)';
  }

  @override
  bool operator ==(covariant ProductS other) {
    if (identical(this, other)) return true;

    return
      other.status == status &&
          listEquals(other.productList, productList) &&
          listEquals(other.searchProduct, searchProduct) &&
          other.isSearching == isSearching;
  }

  @override
  int get hashCode {
    return status.hashCode ^
    productList.hashCode ^
    searchProduct.hashCode ^
    isSearching.hashCode;
  }
}