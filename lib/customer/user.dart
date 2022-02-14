class User {
  String first_name;
  String last_name;
  String email;
  String api_token;
  int user_id;

  User(this.first_name, this.last_name, this.email, [this.api_token, user_id]);

  User.fromJson(Map<String, dynamic> jsonObect) {
    this.user_id = jsonObect['user_id'];
    this.first_name = jsonObect['first_name'];
    this.last_name = jsonObect['last_name'];
    this.email = jsonObect['email'];
    this.api_token = jsonObect['api_token'];
  }
}
