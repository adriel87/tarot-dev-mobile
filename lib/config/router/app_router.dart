
import 'package:go_router/go_router.dart';
import '../../presentation/screens/screens.dart';



final router = GoRouter(
  routes:[
    GoRoute(
      path: '/',
      name: LoginScreen.name,
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/tarotread',
      name: TarotReadScreen.name,
      builder: (context, state) => const TarotReadScreen(),
    )
  ]
);