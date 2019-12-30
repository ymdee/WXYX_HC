class CategoryLeftListModel {
  List<CategoryList> categoryList;

  CategoryLeftListModel({this.categoryList});

  CategoryLeftListModel.fromJson(Map<String, dynamic> json) {
    if (json['categoryList'] != null) {
      categoryList = new List<CategoryList>();
      json['categoryList'].forEach((v) {
        categoryList.add(new CategoryList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.categoryList != null) {
      data['categoryList'] = this.categoryList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class CategoryList {
  int id;
  String name;

  CategoryList({this.id, this.name});

  CategoryList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    return data;
  }
}

