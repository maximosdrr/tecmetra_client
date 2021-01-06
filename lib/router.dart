import 'package:flutter/material.dart';
import 'package:tecmetra_cliente/pages/alerts/index.dart';
import 'package:tecmetra_cliente/pages/consume/index.dart';
import 'package:tecmetra_cliente/pages/edit-notifications/index.dart';
import 'package:tecmetra_cliente/pages/edit-profile/index.dart';
import 'package:tecmetra_cliente/pages/profile/index.dart';

import 'pages/apresentation/index.dart';
import 'pages/dashboard/index.dart';
import 'pages/default/index.dart';
import 'pages/forgot-password/index.dart';
import 'pages/goals/index.dart';
import 'pages/login/index.dart';
import 'pages/registration/index.dart';
import 'pages/reports/index.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    final dynamic args = settings.arguments;
    switch (settings.name) {
      case '/':
        return MaterialPageRoute(builder: (_) => ApresentationPage());
      case '/login':
        return MaterialPageRoute(builder: (_) => LoginPage());
      case '/forgot_password':
        return MaterialPageRoute(builder: (_) => ForgotPasswordPage());
      case '/register':
        return MaterialPageRoute(builder: (_) => RegistrationPage());
      case '/dashboard':
        return MaterialPageRoute(builder: (_) => DashboardPage());
      case '/goals':
        return MaterialPageRoute(builder: (_) => GoalsPage());
      case '/reports':
        return MaterialPageRoute(builder: (_) => ReportsPage());
      case '/profile':
        return MaterialPageRoute(builder: (_) => ProfilePage());
      case '/edit_profile':
        return MaterialPageRoute(builder: (_) => EditProfilePage());
      case '/consume':
        return MaterialPageRoute(builder: (_) => ConsumePage());
      case '/reports':
        return MaterialPageRoute(builder: (_) => ReportsPage());
      case '/edit_notifications':
        return MaterialPageRoute(builder: (_) => EditNotificationPage());
      case '/alerts':
        return MaterialPageRoute(builder: (_) => AlertsPage());
      default:
        return MaterialPageRoute(
          builder: (_) => DefaultPage(
            settings: settings,
          ),
        );
    }
  }
}
