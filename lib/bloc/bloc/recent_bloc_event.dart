part of 'recent_bloc_bloc.dart';

@immutable
abstract class RecentBlocEvent {
  const RecentBlocEvent();
}

@immutable
class ChangeTextEvent extends RecentBlocEvent {
  const ChangeTextEvent();
}

@immutable
class ChangeTextEvent2 extends RecentBlocEvent {
  const ChangeTextEvent2();
}
