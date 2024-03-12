part of 'show_list_bloc.dart';

@immutable
sealed class ShowListEvent {}

final class ShowListLoadEvent extends ShowListEvent {}