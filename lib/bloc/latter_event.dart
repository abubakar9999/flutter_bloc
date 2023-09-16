// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'latter_bloc.dart';

@immutable
abstract class LatterEvent {}
class LatterloadedEvent extends LatterEvent{

}
class SublatterEvent extends LatterEvent {
  String key;
  int index;
  SublatterEvent({
    required this.key,
   required this.index,
  });
  
}

