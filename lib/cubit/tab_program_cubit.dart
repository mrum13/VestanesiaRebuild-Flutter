import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class TabProgramCubit extends Cubit<int> {
  TabProgramCubit() : super(0);

  tabProgramSelected({required int index}) {
    // int indexSelected = await tabProgramSelected(index: index);

    emit(index);
  }
}
