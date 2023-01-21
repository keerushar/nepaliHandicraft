import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';

import '../../../utility/product_constants.dart';
import '../model/heritage_detail.dart';

part 'list_heritage_event.dart';

part 'list_heritage_state.dart';

class ListHeritageBloc extends Bloc<ListHeritageEvent, ListHeritageState> {
  ListHeritageBloc() : super(ListHeritageState()) {
    on<FetchHeritageList>(_fetchHeritageList);
  }

  FutureOr<void> _fetchHeritageList(
    FetchHeritageList event,
    Emitter<ListHeritageState> emit,
  ) async {
    try {
      emit(
        state.copyWith(
          status: ListHeritageStatus.loading,
        ),
      );
      emit(
        state.copyWith(
          status: ListHeritageStatus.dataFetched,
          heritagesList: productDetails,
        ),
      );

      // Future.delayed(const Duration(seconds: 3), () {
      //   emit(
      //     state.copyWith(
      //       status: ListHeritageStatus.dataFetched,
      //       heritagesList: productDetails,
      //     ),
      //   );
      // });
    } catch (e) {
      emit(
        state.copyWith(
          status: ListHeritageStatus.error,
          errorMessage: "Something went wrong",
        ),
      );
      print(e);
    }
  }
}
