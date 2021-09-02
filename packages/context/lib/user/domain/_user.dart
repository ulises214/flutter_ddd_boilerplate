part of '../domain.dart';

/// Defines an user, extends of [AggregateRoot] because its
/// returned by a repository
class User extends AggregateRoot {
  /// Initialize the properties for an user
  User({
    required this.id,
    required this.name,
    required this.userName,
    required this.email,
    required this.address,
    required this.phone,
    required this.company,
    required this.website,
  });

  /// Creates a user form primitives types
  factory User.fromPrimitives({
    required int id,
    required String name,
    required String userName,
    required String email,
    required Address address,
    required String phone,
    required UserCompany company,
    required String website,
  }) {
    return User(
      id: UserID(id),
      name: UserName(name),
      userName: UserUsername(userName),
      email: EmailAddress(email),
      address: address,
      phone: PhoneNumber(phone),
      company: company,
      website: WebSite(website),
    );
  }

  /// The user's unique id
  final UserID id;

  /// The user's name
  final UserName name;

  /// The user's username
  final UserUsername userName;

  /// The user's email
  final EmailAddress email;

  /// The user's addresss
  final Address address;

  /// The user's phone
  final PhoneNumber phone;

  /// The user's compaby
  final UserCompany company;

  /// The user's website
  final WebSite website;
  @override
  Map<String, dynamic> toPrimitives() {
    return <String, dynamic>{
      'id': id.value,
      'name': name.value,
      'username': userName.value,
      'email': email.value,
      'address': address.toPrimitives(),
      'phone': phone.value,
      'company': company.toPrimitives(),
      'website': website.value,
    };
  }
}
