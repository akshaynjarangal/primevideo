part of 'show_details_bloc.dart';

@immutable
sealed class ShowDetailsEvent {}

final class ShowDetailsLoadEvent extends ShowDetailsEvent {
  final String showId;
  ShowDetailsLoadEvent({required this.showId});
}

final class CastListLoadEvent extends ShowDetailsEvent {
  final String showId;
  final ShowListModel showDetails;
  CastListLoadEvent({required this.showDetails,required this.showId});
}
