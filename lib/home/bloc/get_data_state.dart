part of 'get_data_bloc.dart';

@immutable
abstract class GetDataState {}

class LoadingState extends GetDataState {}

class LoadedModelsState extends GetDataState{
  final List<Model>models;

  LoadedModelsState(this.models);
  List<Object> get props => [models];

}

class ErrorState extends GetDataState{
  final String message;

  ErrorState(this.message);
  List<Object> get props => [message];
}