part of '_use_case.dart';

class FindUserByIdRunner {
  FindUserByIdRunner(this._repository);
  final UserRepository _repository;
  Future<UserResponse> run(UserID id) async {
    return UserResponse(await _repository.getById(id));
  }
}
