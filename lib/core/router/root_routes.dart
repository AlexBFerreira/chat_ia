import 'package:chat_ia/presentation/pages/home_page.dart';
import 'package:chat_ia/presentation/pages/login_page.dart';
import 'package:chat_ia/presentation/pages/root_page.dart';
import 'package:go_router/go_router.dart';

// GoRouter configuration
final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      name: 'root',
      builder: (context, state) => const RootPage(),
      routes: [
        GoRoute(
          path: 'login',
          name: 'login',
          builder: (context, state) => const LoginPage(),
        ),
        GoRoute(
          path: 'home',
          name: 'home',
          builder: (context, state) => const HomePage(),
        ),
      ]
    ),
  ],
);