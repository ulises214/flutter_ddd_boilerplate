import 'dart:convert';

import 'package:flutter_app_boilerplate_context/shared/domain.dart';
import 'package:flutter_app_boilerplate_context/user/domain.dart';
import 'package:http/http.dart' as http;

const _enpoint = 'https://jsonplaceholder.typicode.com/users/';

/// Creates a repository consuming fake data from json place holder
class JsonPlaceHolderUserRepository implements UserRepository {
  @override
  Future<void> delete(UserID id) async {
    final response = await http.delete(Uri.parse('$_enpoint/${id.value}'));
    if ([202, 200, 204].contains(response.statusCode)) return;
    throw Exception(response);
  }

  @override
  Future<List<User>> getAll() async {
    final response = await http.get(Uri.parse(_enpoint));
    if (![202, 200].contains(response.statusCode)) throw Exception(response);
    final resBody = json.decode(response.body) as List<Map<String, dynamic>>;
    return resBody.map(_formatResponse).toList();
  }

  @override
  Future<User> getById(UserID id) async {
    final response = await http.get(Uri.parse('$_enpoint/${id.value}'));
    if (![202, 200].contains(response.statusCode)) throw Exception(response);
    final resBody = json.decode(response.body) as Map<String, dynamic>;
    return _formatResponse(resBody);
  }

  @override
  Future<void> update(UserID id, User newUser) async {
    final response = await http.put(
      Uri.parse('$_enpoint/${id.value}'),
      body: newUser.toPrimitives(),
    );
    if ([200, 204].contains(response.statusCode)) return;
    throw Exception(response);
  }
}

User _formatResponse(Map<String, dynamic> res) {
  final address = res['address'] as Map<String, dynamic>;
  final company = res['company'] as Map<String, dynamic>;
  return User.fromPrimitives(
    id: res['id'] as int,
    name: res['name'] as String,
    userName: res['username'] as String,
    email: res['email'] as String,
    address: Address.fromPrimitives(
      city: address['city'] as String,
      street: address['street'] as String,
      suite: address['suite'] as String,
      zipCode: address['zipCode'] as String,
      lat: address['lat'] as String,
      lng: address['lng'] as String,
    ),
    phone: res['phone'] as String,
    company: UserCompany.fromPrimitives(
      name: company['name'] as String,
      catchPhrase: company['catchPhrase'] as String,
      bs: company['bs'] as String,
    ),
    website: res['website'] as String,
  );
}
