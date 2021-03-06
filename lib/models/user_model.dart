class User {
  final int id;
  final String name;
  final String imageUrl;

  User({required this.id, required this.name, required this.imageUrl});
}

// You - Current user
final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/greg.jpg');

//USERS
final User greg = User(id: 1, name: 'Greg', imageUrl: 'assets/images/greg.jpg');

final User james =
    User(id: 2, name: 'James', imageUrl: 'assets/images/james.jpg');

final User john = User(id: 3, name: 'John', imageUrl: 'assets/images/john.jpg');

final User olivia =
    User(id: 4, name: 'Auditoria/FINALISTAS 2022', imageUrl: 'assets/images/olivia.jpg');

final User sam = User(id: 5, name: 'Sam', imageUrl: 'assets/images/sam.jpg');

final User sophia =
    User(id: 6, name: 'Sophia', imageUrl: 'assets/images/sophia.jpeg');

final User steven =
    User(id: 7, name: 'Steven', imageUrl: 'assets/images/steven.jpg');
