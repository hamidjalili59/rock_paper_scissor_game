import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'game_logic.g.dart';

@Riverpod(keepAlive: true)
class Game extends _$Game {
  @override
  FutureOr<GameStatusModel> build() => future;
}

class GameStatusModel {
  final DateTime endTime;
  final bool ready;
  final HandTypeEnum selectedHandType;
  final HandTypeEnum enemyHandType;

  GameStatusModel({
    required this.endTime,
    this.ready = false,
    this.selectedHandType = HandTypeEnum.rock,
    this.enemyHandType = HandTypeEnum.rock,
  });

  GameStatusModel copyWith({
    DateTime? endTime,
    bool? ready,
    HandTypeEnum? selectedHandType,
    HandTypeEnum? enemyHandType,
  }) {
    return GameStatusModel(
        endTime: endTime ?? this.endTime,
        enemyHandType: enemyHandType ?? this.enemyHandType,
        ready: ready ?? this.ready,
        selectedHandType: selectedHandType ?? this.selectedHandType);
  }
}

enum HandTypeEnum {
  rock,
  paper,
  scissor,
}
