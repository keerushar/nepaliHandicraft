part of 'list_heritage_bloc.dart';

enum ListHeritageStatus {
  initial,
  loading,
  dataFetched,
  error,
}

class ListHeritageState extends Equatable {
  ListHeritageStatus? status;
  List<Product>? heritagesList;
  String? errorMessage;

  ListHeritageState({
    this.status = ListHeritageStatus.initial,
    this.heritagesList,
    this.errorMessage,
  });

  ListHeritageState copyWith({
    ListHeritageStatus? status,
    List<Product>? heritagesList,
    String? errorMessage,
  }) {
    return ListHeritageState(
      status: status ?? this.status,
      heritagesList: heritagesList ?? this.heritagesList,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  List<Object?> get props => [
        status,
        heritagesList,
        errorMessage,
      ];
}
