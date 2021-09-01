part of '_use_case.dart';

/// Run the operation to delete an user
class DeleteUserRunner {
  /// Init the repository for the operation
  DeleteUserRunner(this._repository);
  final UserRepository _repository;

  /// Run the operation
  Future<VoidResponse> run(UserID id) async {
    await _repository.delete(id);
    return VoidResponse();
  }
}
