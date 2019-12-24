class MineDetailModel {
  String avatar;
  String nickname;
  String staffSimple;
  String studentSimple;
  int memberLevel;
  SuperMemberInfo superMemberInfo;
  String superMemberInfoStr;

  MineDetailModel(
      {this.avatar,
      this.nickname,
      this.staffSimple,
      this.studentSimple,
      this.memberLevel,
      this.superMemberInfo,
      this.superMemberInfoStr});

  MineDetailModel.fromJson(Map<String, dynamic> json) {
    avatar = json['avatar'];
    nickname = json['nickname'];
    staffSimple = json['staffSimple'];
    studentSimple = json['studentSimple'];
    memberLevel = json['memberLevel'];
    superMemberInfo = json['superMemberInfo'] != null
        ? new SuperMemberInfo.fromJson(json['superMemberInfo'])
        : null;
    superMemberInfoStr = json['superMemberInfoStr'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['avatar'] = this.avatar;
    data['nickname'] = this.nickname;
    data['staffSimple'] = this.staffSimple;
    data['studentSimple'] = this.studentSimple;
    data['memberLevel'] = this.memberLevel;
    if (this.superMemberInfo != null) {
      data['superMemberInfo'] = this.superMemberInfo.toJson();
    }
    data['superMemberInfoStr'] = this.superMemberInfoStr;
    return data;
  }
}

class SuperMemberInfo {
  int status;
  String statusDesc;
  bool showGiftIcon;
  bool spmcExclusiveValid;

  SuperMemberInfo(
      {this.status,
      this.statusDesc,
      this.showGiftIcon,
      this.spmcExclusiveValid});

  SuperMemberInfo.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    statusDesc = json['statusDesc'];
    showGiftIcon = json['showGiftIcon'];
    spmcExclusiveValid = json['spmcExclusiveValid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['statusDesc'] = this.statusDesc;
    data['showGiftIcon'] = this.showGiftIcon;
    data['spmcExclusiveValid'] = this.spmcExclusiveValid;
    return data;
  }
}

