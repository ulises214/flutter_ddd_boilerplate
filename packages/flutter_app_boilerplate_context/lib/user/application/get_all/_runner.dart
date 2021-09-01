part of '_use_case.dart';

class GetAllUsersRunner {
  GetAllUsersRunner(this._repository);
  final UserRepository _repository;
  Future<UsersResponse> run() async {
    return UsersResponse(await _repository.getAll());
  }
}
