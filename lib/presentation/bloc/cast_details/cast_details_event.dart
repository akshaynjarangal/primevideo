part of 'cast_details_bloc.dart';

@immutable
sealed class CastDetailsEvent {}

final class CastDetailsLoadEvent extends CastDetailsEvent {
  final String id;
  CastDetailsLoadEvent({required this.id});
}