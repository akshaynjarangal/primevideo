part of 'show_details_bloc.dart';

@immutable
sealed class ShowDetailsState {}

final class ShowDetailsInitial extends ShowDetailsState {}

final class ShowDetailsLoading extends ShowDetailsState {}

final class ShowDetailsLoaded extends ShowDetailsState {
  final ShowListModel showDetails;
  final List<CastListModel> castList;
  ShowDetailsLoaded({required this.showDetails, required this.castList});
}

final class ShowDetailsError extends ShowDetailsState {
  final String error;
  ShowDetailsError({required this.error});
}