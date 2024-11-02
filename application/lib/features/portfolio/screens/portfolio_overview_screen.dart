import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/portfolio/cubit/overview/portfolio_cubit.dart';
import 'package:pace_vet/features/portfolio/routes.dart';
import 'package:pace_vet/features/portfolio/widgets/experience_card.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class PortfolioOverviewScreen extends StatelessWidget {
  final bool showCreateButton;
  final bool showBackButton;

  const PortfolioOverviewScreen({
    super.key,
    this.showCreateButton = true,
    this.showBackButton = false,
  });

  @override
  Widget build(BuildContext context) {
    return UserLayout(
      appBar: showBackButton ? AppBar() : null,
      floatingActionButton: showCreateButton
          ? FloatingActionButton.small(
              child: const Icon(Icons.add),
              onPressed: () async {
                final shouldReload =
                    await CreateExperienceRoute().push(context);

                if ((shouldReload ?? false) && context.mounted) {
                  context.read<PortfolioCubit>().reload();
                }
              },
            )
          : null,
      child: BlocBuilder<PortfolioCubit, PortfolioState>(
        builder: (context, state) {
          if (state is PortfolioLoadedState) {
            return _buildPortfolioList(context, state.experiences);
          } else if (state is PortfolioFailedToLoadState) {
            return _buildFailedToLoad(context);
          }

          return const Loading();
        },
      ),
    );
  }

  Widget _buildPortfolioList(
      BuildContext context, List<Experience> experiences) {
    if (experiences.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('no events, click the add button to add new events'),
            IconButton(
              onPressed: () => context.read<PortfolioCubit>().reload(),
              icon: const Icon(Icons.refresh),
            ),
          ],
        ),
      );
    }

    return RefreshIndicator.adaptive(
      onRefresh: () => context.read<PortfolioCubit>().reload(),
      child: ListView.builder(
        itemCount: experiences.length,
        itemBuilder: (context, index) {
          final experience = experiences.elementAt(index);

          return GestureDetector(
            onTap: () async {
              await ExperienceRoute(id: experience.id!).push(context);

              if (context.mounted) {
                context.read<PortfolioCubit>().reload();
              }
            },
            child: ExperienceCard(experience),
          );
        },
      ),
    );
  }

  Widget _buildFailedToLoad(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Text('Failed to load portfolio'),
        const SizedBox(width: double.infinity),
        TextButton(
          child: const Text('retry'),
          onPressed: () => context.read<PortfolioCubit>().reload(),
        )
      ],
    );
  }
}
