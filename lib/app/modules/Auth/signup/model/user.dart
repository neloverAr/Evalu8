
class AppUser {
  String? fullName;
  String? password;
  String? email;
  final String? gender;
  final String? dateOfBirth;

  AppUser(
      {required this.password,
      required this.fullName,
      required this.email,
      this.gender,
      this.dateOfBirth});

  AppUser copyWith(
          {String? fullName,
          String? password,
          String? email,
          String? gender,
          String? dateOfBirth}) =>
      AppUser(
          password: password ,
          fullName: fullName,
          email: email,
          gender: gender,
          dateOfBirth: dateOfBirth);

}
