import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';
import 'package:sv_test/home/data_model.dart';

part 'get_data_event.dart';
part 'get_data_state.dart';

class GetDataBloc extends Bloc<GetDataEvent, GetDataState> {
  final ModelsApi modelsApi;

  GetDataBloc(this.modelsApi) : super(LoadingState()) {
    on<GetDataEvent>((event, emit) async {
      if (event is GetModelsDataEvent) {
        emit(LoadingState());
        try {
          final models = await modelsApi.getModels();
          emit(
            LoadedModelsState(models),
          );
        } catch (e) {
          emit(ErrorState("Error Loading Todos"));
        }
      }
    });
  }
}
