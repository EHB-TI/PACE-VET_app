// Openapi Generator last run: : 2024-07-06T15:40:46.295020
import 'package:dio/dio.dart' show Dio;
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:openapi_generator_annotations/openapi_generator_annotations.dart';
import 'package:pace_vet/features/auth/bloc/auth/auth_bloc.dart';
import 'package:pace_vet/features/competences/cubit/competences_cubit.dart';
import 'package:pace_vet/router.dart';
import 'package:pace_vet/shared/app_scroll_behaviour.dart';
import 'package:pace_vet/theming.dart' as theming;
import 'package:pace_vet_api/pace_vet_api.dart';

const String _environment =
    String.fromEnvironment('APP_ENV', defaultValue: 'production');
const String _apiUrl = String.fromEnvironment('API_URL');

final _http = Dio()..options.baseUrl = _apiUrl;

void main() {
  runApp(const Application());
}

@Openapi(
  additionalProperties: DioProperties(
    pubName: 'pace_vet_api',
    pubAuthor: 'Wannes Gennar',
    nullableFields: true,
  ),
  inputSpec: RemoteSpec(
    path: 'http://localhost:4000/api/openapi.json',
  ),
  generatorName: Generator.dio,
  runSourceGenOnOutput: true,
  outputDirectory: '../api',
)
class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiRepositoryProvider(
      providers: [
        RepositoryProvider(
          create: (context) => PaceVetApi(dio: _http),
        ),
      ],
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => AuthBloc(context.read<PaceVetApi>()),
          ),
          BlocProvider(
            create: (context) => CompetencesCubit(context.read<PaceVetApi>()),
          ),
        ],
        child: MaterialApp.router(
          scrollBehavior: AppScrollBehaviour(),
          theme: theming.light,
          darkTheme: theming.dark,
          routerConfig: router,
        ),
      ),
    );
  }
}
