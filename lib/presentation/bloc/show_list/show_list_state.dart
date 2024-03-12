part of 'show_list_bloc.dart';

@immutable
sealed class ShowListState {}

final class ShowListInitial extends ShowListState {}

final class ShowListLoading extends ShowListState {}

final class ShowListLoaded extends ShowListState {
  final List<ShowListModel> showList;
  ShowListLoaded({required this.showList});
}

final class ShowListError extends ShowListState {
  final String error;
  ShowListError({required this.error});
}

final class ShowListEmpty extends ShowListState {}
