class RegisterRequestModel {
  String? name;
  String? email;
  String? password;
  String? passwordConfirm;
  String? role;

  RegisterRequestModel(
      {this.name, this.email, this.password, this.passwordConfirm, this.role});

  RegisterRequestModel.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    email = json['email'];
    password = json['password'];
    passwordConfirm = json['passwordConfirm'];
    role = json['role'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['email'] = this.email;
    data['password'] = this.password;
    data['passwordConfirm'] = this.passwordConfirm;
    data['role'] = this.role;
    return data;
  }
}
