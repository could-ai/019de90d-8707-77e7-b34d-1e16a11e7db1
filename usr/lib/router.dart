import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';
import 'screens/auth/register_screen.dart';
import 'screens/home/home_screen.dart';
import 'screens/doctors/doctors_list_screen.dart';
import 'screens/doctors/doctor_detail_screen.dart';
import 'screens/reports/reports_screen.dart';
import 'screens/payment/payment_screen.dart';
import 'providers/app_provider.dart';

final GoRouter router = GoRouter(
  initialLocation: '/',
  redirect: (BuildContext context, GoRouterState state) {
    // We would normally check provider here, but we will keep it simple.
    // Assuming Provider.of<AppProvider>(context) integration if needed later.
    return null;
  },
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => const HomeScreen(),
    ),
    GoRoute(
      path: '/doctors',
      builder: (context, state) => const DoctorsListScreen(),
    ),
    GoRoute(
      path: '/doctor_detail',
      builder: (context, state) {
        final doctorId = state.extra as String;
        return DoctorDetailScreen(doctorId: doctorId);
      },
    ),
    GoRoute(
      path: '/reports',
      builder: (context, state) => const ReportsScreen(),
    ),
    GoRoute(
      path: '/payment',
      builder: (context, state) => const PaymentScreen(),
    ),
  ],
);
