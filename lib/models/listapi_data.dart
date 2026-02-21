class Userlist {
  final int id;
  final String firstName;
  final String lastName;
  final String fullName;
  final String email;

  //Constructor
  Userlist(this.id, this.firstName, this.lastName, this.fullName, this.email);

  //convert json to Map
  Userlist.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        firstName = json['firstName'],
        lastName = json['lastName'],
        fullName = json['firstName'] + ' ' + json['lastName'],
        email = json['email'];

  //convert map to json
  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'firstName': firstName,
      'lastName': lastName,
      'email': email
    };
  }
}
