import 'package:flutter/foundation.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:primevideo/data/models/show_list_model.dart';

import 'package:primevideo/domain/usecases/show_usecase.dart';

part 'show_list_event.dart';
part 'show_list_state.dart';

@injectable
class ShowListBloc extends Bloc<ShowListEvent, ShowListState> {
  final ShowUseCase _showUseCase;
  ShowListBloc(this._showUseCase) : super(ShowListInitial()) {
    on<ShowListLoadEvent>((event, emit)async {
      emit(ShowListLoading());
      final result = await _showUseCase.getShowList;
      result.fold((l) {
        emit(ShowListError(error: l));
      }, (r) {
        if (r.isEmpty) {
          emit(ShowListEmpty());
        }else{
        emit(ShowListLoaded(showList: r));
        }
      });
    });
  }
}
