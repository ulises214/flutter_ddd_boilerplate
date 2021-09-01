part of '../domain.dart';

/// Aggregate roots are the only objects that can be loaded from a repository.
// ignore: one_member_abstracts
abstract class AggregateRoot {
  /// Convert the properites to primitives types
  Map<String, dynamic> toPrimitives();
}
