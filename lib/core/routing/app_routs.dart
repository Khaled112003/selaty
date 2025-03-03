
import 'package:go_router/go_router.dart';
import 'package:selaty/features/authentications/presentation/views/sign_in_or_sign_up_screen.dart';
import 'package:selaty/features/authentications/presentation/views/sign_in_screen.dart';
import 'package:selaty/features/authentications/presentation/views/sign_up_screen.dart';
import 'package:selaty/features/onbarding/views/onboarding_screen.dart';
import 'package:selaty/features/splash/splash_screen.dart';

final router = GoRouter(
  routes: [
   
    GoRoute(
      path: '/',    
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
  ],
);
