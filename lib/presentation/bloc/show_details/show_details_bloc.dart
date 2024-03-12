import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:primevideo/data/models/cast_list_model.dart';
import 'package:primevideo/data/models/show_list_model.dart';
import 'package:primevideo/domain/usecases/show_usecase.dart';

part 'show_details_event.dart';
part 'show_details_state.dart';

@injectable
class ShowDetailsBloc extends Bloc<ShowDetailsEvent, ShowDetailsState> {
  final ShowUseCase _showUseCase;
  ShowDetailsBloc(this._showUseCase) : super(ShowDetailsInitial()) {
    on<ShowDetailsLoadEvent>((event, emit) async{
      emit(ShowDetailsLoading());
      final result = await _showUseCase.getShowDetails(id: event.showId.toString());
      result.fold((l) {
        emit(ShowDetailsError(error: l));
      }, (r) {
        add(CastListLoadEvent(showId: event.showId, showDetails: r));
      });
    });

    on<CastListLoadEvent>((event, emit)async {
      emit(ShowDetailsLoading());
      final result = await _showUseCase.getCastList(id: event.showId.toString());
      result.fold((l) {
        emit(ShowDetailsError(error: l));
      }, (r) {
        emit(ShowDetailsLoaded(showDetails: event.showDetails, castList: r));
      });
    });
  }


}
