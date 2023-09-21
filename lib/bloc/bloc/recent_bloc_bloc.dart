import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:injectable/injectable.dart';

part 'recent_bloc_event.dart';
part 'recent_bloc_state.dart';

@Injectable()
class RecentBlocBloc extends Bloc<RecentBlocEvent, RecentBlocState> {
  RecentBlocBloc() : super(RecentBlocInitial()) {
    on<RecentBlocEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
