part of 'portfolio_cubit.dart';

@immutable
sealed class PortfolioState extends Equatable {
  @override
  List<Object?> get props => const [];
}

final class PortfolioLoadingState extends PortfolioState {}

final class PortfolioLoadedState extends PortfolioState {
  final List<Experience> experiences;

  PortfolioLoadedState({required this.experiences});

  @override
  List<Object?> get props => experiences;
}

final class PortfolioFailedToLoadState extends PortfolioState {
  //
}
