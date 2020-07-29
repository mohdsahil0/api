class Users {
  Users({
    this.message,
  });

  String message;

  factory Users.fromJson(Map<String, dynamic> json) => Users(
        message: json["message"] == null ? null : json["message"],
      );

  Map<String, dynamic> toJson() => {
        "message": message == null ? null : message,
      };
}
