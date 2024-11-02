part of '../routes.dart';

class RegisterRoute extends GoRouteData {
  @override
  Widget build(BuildContext context, GoRouterState state) {
    return BlocProvider(
      create: (context) => RegistrationCubit(
        context.read<PaceVetApi>(),
      ),
      child: const RegisterScreen(),
    );
  }
}
