part of '_use_case.dart';

/// Run the operation to get a list of users
class GetAllUsersRunner {
  /// Init the repository for the operation
  GetAllUsersRunner(this._repository);
  final UserRepository _repository;

  /// Run the operation
  Future<UsersResponse> run() async {
    return UsersResponse(await _repository.getAll());
  }
}
