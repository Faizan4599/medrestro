class CategoryItem {
  final int mainCategoryId;
  final String mainCategoryName;
  final int mainCategoryActive;

  CategoryItem({
    required this.mainCategoryId,
    required this.mainCategoryName,
    required this.mainCategoryActive,
  });

  factory CategoryItem.fromJson(Map<String, dynamic> json) {
    return CategoryItem(
      mainCategoryId: json['main_category_id'] as int? ?? 0,
      mainCategoryName: json['main_category_name'] as String? ?? '',
      mainCategoryActive: json['main_category_active'] as int? ?? 0,
    );
  }
}

class SubCategoryItem {
  final String mainCategoryName;
  final int subCatId;
  final String subCatName;
  final int subCatActive;

  SubCategoryItem({
    required this.mainCategoryName,
    required this.subCatId,
    required this.subCatName,
    required this.subCatActive,
  });

  factory SubCategoryItem.fromJson(Map<String, dynamic> json) {
    return SubCategoryItem(
      mainCategoryName: json['main_category_name'] as String? ?? '',
      subCatId: json['sub_cat_id'] as int? ?? 0,
      subCatName: json['sub_cat_name'] as String? ?? '',
      subCatActive: json['sub_cat_active'] as int? ?? 0,
    );
  }
}

class MenuItem {
  final int menuId;
  final String mainCategoryName;
  final String subCatName;
  final String category;
  final String itemName;
  final String itemCode;
  final double itemPrice;
  final int menuActive;

  MenuItem({
    required this.menuId,
    required this.mainCategoryName,
    required this.subCatName,
    required this.category,
    required this.itemName,
    required this.itemCode,
    required this.itemPrice,
    required this.menuActive,
  });

  factory MenuItem.fromJson(Map<String, dynamic> json) {
    return MenuItem(
      menuId: json['menu_id'],
      mainCategoryName: json['main_category_name'],
      subCatName: json['sub_cat_name'],
      category: json['category'],
      itemName: json['item_name'],
      itemCode: json['item_code'],
      itemPrice: json['item_price'].toDouble(),
      menuActive: json['menu_active'],
    );
  }
}

class MenuResponse {
  final List<CategoryItem> categories;
  final List<SubCategoryItem> subcategories;
  final List<MenuItem> menu;

  MenuResponse({
    required this.categories,
    required this.subcategories,
    required this.menu,
  });

  factory MenuResponse.fromJson(Map<String, dynamic> json) {
    final List<CategoryItem> categoriesList = (json['categories'] as List)
        .map((categoryJson) => CategoryItem.fromJson(categoryJson))
        .toList();

    final List<SubCategoryItem> subcategoriesList =
        (json['subcategories'] as List)
            .map((subcategoryJson) => SubCategoryItem.fromJson(subcategoryJson))
            .toList();

    final List<MenuItem> menuList = (json['menu'] as List)
        .map((menuJson) => MenuItem.fromJson(menuJson))
        .toList();

    return MenuResponse(
      categories: categoriesList,
      subcategories: subcategoriesList,
      menu: menuList,
    );
  }
}
