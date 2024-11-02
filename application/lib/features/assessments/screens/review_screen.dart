import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pace_vet/features/assessments/cubit/review/review_cubit.dart';
import 'package:pace_vet/features/auth/extensions/build_context_extensions.dart';
import 'package:pace_vet/features/auth/extensions/user_extensions.dart';
import 'package:pace_vet/features/portfolio/widgets/experience_card.dart';
import 'package:pace_vet/shared/models/validation_map.dart';
import 'package:pace_vet/shared/validation.dart';
import 'package:pace_vet/shared/widgets/loading.dart';
import 'package:pace_vet/shared/widgets/user_layout.dart';
import 'package:pace_vet_api/pace_vet_api.dart';

class ReviewScreen extends StatefulWidget {
  const ReviewScreen({super.key});

  @override
  State<ReviewScreen> createState() => _ReviewScreenState();
}

class _ReviewScreenState extends State<ReviewScreen> {
  late ReviewState _state;
  late TextEditingController _comment;
  final GlobalKey<FormState> _form = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReviewCubit, ReviewCubitState>(
      listenWhen: (previous, current) =>
          current is ReviewLoadedState && current is! ReviewUpdateFailedState,
      listener: (context, state) {
        if (state is ReviewLoadedState) {
          setState(() {
            _state = state.review.state!;
            _comment = TextEditingController(text: state.review.comment);
          });
        }
      },
      builder: (context, state) {
        if (state is ReviewLoadedState) {
          return UserLayout(
            appBar: AppBar(),
            floatingActionButton: context.userHasType(UserType.assessor)
                ? FloatingActionButton(
                    child: const Icon(Icons.save),
                    onPressed: () {
                      if (_form.currentState?.validate() ?? false) {
                        context.read<ReviewCubit>().update(
                              state.review,
                              _state,
                              _comment.text,
                            );
                      }
                    },
                  )
                : null,
            builder: (context, user) => _buildReview(
              context,
              user,
              state.review,
              state.experiences,
              state.validation,
            ),
          );
        }

        return UserLayout(
          appBar: AppBar(),
          renderNavigation: false,
          child: const Loading(),
        );
      },
    );
  }

  Widget _buildReview(
    BuildContext context,
    User user,
    Review review,
    List<Experience> experiences,
    ValidationMap validation,
  ) {
    final isAssessor = user.hasUserType(UserType.assessor);

    return Form(
      key: _form,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                review.competence!.key!,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              Text(
                review.competence!.title!,
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 24.0),
              if (isAssessor)
                DropdownButtonFormField(
                  decoration: InputDecoration(
                    labelText: 'review state',
                    errorText: validation['/state'],
                  ),
                  value: _state,
                  items: ReviewState.values
                      .map(
                        (state) => DropdownMenuItem<ReviewState>(
                          value: state,
                          child: Text(state.name),
                        ),
                      )
                      .toList(),
                  onChanged: (value) =>
                      setState(() => _state = value ?? _state),
                ),
              const SizedBox(height: 12.0),
              if (isAssessor)
                TextFormField(
                  controller: _comment,
                  validator: buildValidator([isRequired, maxLength(250)]),
                  maxLength: 250,
                  maxLines: 3,
                  decoration: InputDecoration(
                    labelText: 'Comment',
                    errorText: validation['/comment'],
                  ),
                ),
              if (!isAssessor) Text(review.comment ?? ''),
              const SizedBox(height: 48.0),
              Text(
                'Portfolio related to this competences',
                style: Theme.of(context).textTheme.labelMedium,
              ),
              for (final experience in experiences)
                _buildExperienceCard(context, experience),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildExperienceCard(BuildContext context, Experience experience) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: ExperienceCard(experience),
    );
  }
}
