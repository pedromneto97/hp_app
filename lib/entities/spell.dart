import 'package:equatable/equatable.dart';

class Spell extends Equatable {
  final String name;
  final String description;

  const Spell({
    required this.name,
    required this.description,
  });

  @override
  List<Object?> get props => [
        name,
        description,
      ];
}
