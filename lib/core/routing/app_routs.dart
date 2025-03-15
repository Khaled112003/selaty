import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:selaty/features/authentications/presentation/views/sign_in_or_sign_up_screen.dart';
import 'package:selaty/features/authentications/presentation/views/sign_in_screen.dart';
import 'package:selaty/features/authentications/presentation/views/sign_up_screen.dart';
import 'package:selaty/features/classifications/presentation/views/frutes_catogrey_screen.dart';
import 'package:selaty/features/forget_password/presentation/views/forget_pass_screen.dart';
import 'package:selaty/features/forget_password/presentation/views/verification_screen.dart';
import 'package:selaty/features/classifications/presentation/views/classification_screen.dart';
import 'package:selaty/features/home/presentations/views/home_screen.dart';
import 'package:selaty/features/home/presentations/views/home_pages_screen.dart';
import 'package:selaty/features/onbarding/views/onboarding_screen.dart';
import 'package:selaty/features/shopping_cart/presentation/views/cubit/shopping_cart_cubit.dart';
import 'package:selaty/features/shopping_cart/presentation/views/empty_cart_screen.dart';
import 'package:selaty/features/shopping_cart/presentation/views/shopping_cart_screen.dart';
import 'package:selaty/features/splash/splash_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/e',
      builder: (context, state) => const SplashScreen(),
    ),
    GoRoute(
      path: '/onboarding',
      builder: (context, state) => const OnboardingScreen(),
    ),
    GoRoute(
      path: '/auth',
      builder: (context, state) => const SignInOrSignUp(),
    ),
    GoRoute(
      path: '/sign-in',
      builder: (context, state) => const SignInScreen(),
    ),
    GoRoute(
      path: '/sign-up',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      path: '/forget-password',
      builder: (context, state) => const ForgetPassScreen(),
    ),
    GoRoute(
      path: '/verification',
      builder: (context, state) => const VerificationScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/',
      builder: (context, state) => const HomePagesScreen(),
    ),
    GoRoute(
      path: '/classification',
      builder: (context, state) => const ClassificationScreen(),
    ),
    GoRoute(
      path: '/frutes-catogrey',
      builder: (context, state) => const FrutesCatogreyScreen(),
    ),
    GoRoute(
      path: '/shopping-cart',
      builder: (context, state) => BlocProvider(
        create: (context) => ShoppingCartCubit(),
        child: const ShoppingCartScreen(),
      ),
    ),
     GoRoute(
      path: '/empty-cart',
      builder: (context, state) => const EmptyCartScreen(),
    ),
  ],
);
