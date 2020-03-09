class Person{
  final String name;
  final int personId;
  final String profilePhotoUri;

  Person({
    this.name,
    this.personId,
    this.profilePhotoUri
  });

  factory Person.fromJson(Map<String, dynamic> jsonPerson){

    return Person(
      name: jsonPerson['name'],
      personId: jsonPerson['personId'],
      profilePhotoUri: jsonPerson['profilePhotoUri'],
    );
  }



}