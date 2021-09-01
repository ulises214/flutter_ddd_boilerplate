part of '_use_case.dart';

/// Run the operation to find a user by id
class FindUserByIdRunner {
  /// Init the repository for the operation
  FindUserByIdRunner(this._repository);
  final UserRepository _repository;

  /// Run the operation
  Future<UserResponse> run(UserID id) async {
    return UserResponse(await _repository.getById(id));
  }
}
