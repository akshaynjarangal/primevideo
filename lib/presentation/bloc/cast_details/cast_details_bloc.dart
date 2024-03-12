

import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:primevideo/data/models/cast_list_model.dart';
import 'package:primevideo/domain/usecases/show_usecase.dart';

part 'cast_details_event.dart';
part 'cast_details_state.dart';

@injectable
class CastDetailsBloc extends Bloc<CastDetailsEvent, CastDetailsState> {
  final ShowUseCase _showUseCase;
  CastDetailsBloc(this._showUseCase) : super(CastDetailsInitial()) {
    on<CastDetailsLoadEvent>((event, emit)async{
      emit(CastDetailsLoading());
      final result = await _showUseCase.getCastDetails(id: event.id);
      result.fold((l) {
        emit(CastDetailsError(error: l));
      }, (r) {
        emit(CastDetailsLoaded(castDetails: r));
      });
    });
  }
}
