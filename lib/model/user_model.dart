class User{
  final String name;
  final int personId;
  final String profilePhotoUri;

  User({
    this.name,
    this.personId,
    this.profilePhotoUri
  });

  factory User.fromJson(Map<String, dynamic> jsonPerson){

    return User(
      name: jsonPerson['name'],
      personId: jsonPerson['personId'],
      profilePhotoUri: jsonPerson['profilePhotoUri'],
    );
  }



}