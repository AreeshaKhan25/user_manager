class User {
  final int? id;
  final String name;
  final String regNumber;
  final String course;
  final String email;
  final String phone;

  User({
    this.id,
    required this.name,
    required this.regNumber,
    required this.course,
    required this.email,
    required this.phone,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'regNumber': regNumber,
      'course': course,
      'email': email,
      'phone': phone,
    };
  }

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map['id'],
      name: map['name'],
      regNumber: map['regNumber'],
      course: map['course'],
      email: map['email'],
      phone: map['phone'],
    );
  }
}
