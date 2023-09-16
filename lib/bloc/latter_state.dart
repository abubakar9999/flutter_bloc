// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'latter_bloc.dart';

@immutable
abstract class LatterState {}

  class LatterInitial extends LatterState {}
  class LoaddingStatae  extends LatterState{
    
  }
// ignore: must_be_immutable
class LoadedgStatae extends LatterState {
    List<dynamic> latter;
    List<dynamic>? sublatter;
    int? index;
  LoadedgStatae({
    required this.latter,
    required this.sublatter,
    this.index,
  
  }
  );
    
  }
