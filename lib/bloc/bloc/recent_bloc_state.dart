part of 'recent_bloc_bloc.dart';

@immutable
sealed class RecentBlocState {}

final class RecentBlocInitial extends RecentBlocState {}

class SignupValidation extends RecentBlocState {
  String? value;
  SignupValidation(this.value);
}
