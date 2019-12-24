class MineGridModel {
  List<GridList> gridList;

  MineGridModel({this.gridList});

  MineGridModel.fromJson(Map<String, dynamic> json) {
    if (json['gridList'] != null) {
      gridList = new List<GridList>();
      json['gridList'].forEach((v) {
        gridList.add(new GridList.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.gridList != null) {
      data['gridList'] = this.gridList.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class GridList {
  int id;
  String text;
  String url;
  String icon;
  String type;
  String openType;
  String startTime;
  String endTime;

  GridList(
      {this.id,
      this.text,
      this.url,
      this.icon,
      this.type,
      this.openType,
      this.startTime,
      this.endTime});

  GridList.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    text = json['text'];
    url = json['url'];
    icon = json['icon'];
    type = json['type'];
    openType = json['openType'];
    startTime = json['startTime'];
    endTime = json['endTime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['text'] = this.text;
    data['url'] = this.url;
    data['icon'] = this.icon;
    data['type'] = this.type;
    data['openType'] = this.openType;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    return data;
  }
}

