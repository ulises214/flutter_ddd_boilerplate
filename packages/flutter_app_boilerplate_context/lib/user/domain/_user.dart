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
  });

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
    };
  }
}
