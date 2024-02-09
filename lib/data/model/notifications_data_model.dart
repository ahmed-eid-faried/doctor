class NotificationsDataModel {
  String? notificationsId;
  String? notificationsUserid;
  String? notificationsTitle;
  String? notificationsBody;
  String? notificationsTopic;
  String? notificationsDatetime;

  NotificationsDataModel(
      {this.notificationsId,
      this.notificationsUserid,
      this.notificationsTitle,
      this.notificationsBody,
      this.notificationsTopic,
      this.notificationsDatetime});

  NotificationsDataModel.fromJson(Map<String, dynamic> json) {
    notificationsId = json['notifications_id'];
    notificationsUserid = json['notifications_userid'];
    notificationsTitle = json['notifications_title'];
    notificationsBody = json['notifications_body'];
    notificationsTopic = json['notifications_topic'];
    notificationsDatetime = json['notifications_datetime'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['notifications_id'] = notificationsId;
    data['notifications_userid'] = notificationsUserid;
    data['notifications_title'] = notificationsTitle;
    data['notifications_body'] = notificationsBody;
    data['notifications_topic'] = notificationsTopic;
    data['notifications_datetime'] = notificationsDatetime;
    return data;
  }
}
