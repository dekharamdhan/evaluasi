class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Dekha Ramdhan",
      username: "dekhar",
      email: "dekhar@email.com",
      profilePhoto:
          "https://static.vecteezy.com/system/resources/thumbnails/005/160/751/original/red-orange-psychedelic-swirl-tunnel-seamless-loop-free-video.jpg",
      phoneNumber: "085123456789",
    );
  }
}
