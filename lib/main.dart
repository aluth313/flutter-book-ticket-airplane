import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_airplane/cubit/auth_cubit.dart';
import 'package:flutter_airplane/cubit/destination_cubit.dart';
import 'package:flutter_airplane/cubit/page_cubit.dart';
import 'package:flutter_airplane/ui/pages/bonus_page.dart';
import 'package:flutter_airplane/ui/pages/get_started_page.dart';
import 'package:flutter_airplane/ui/pages/main_page.dart';
import 'package:flutter_airplane/ui/pages/signin_page.dart';
import 'package:flutter_airplane/ui/pages/signup_page.dart';
import 'package:flutter_airplane/ui/pages/splash_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PageCubit(),
        ),
        BlocProvider(
          create: (context) => AuthCubit(),
        ),
        BlocProvider(
          create: (context) => DestinationCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/get-started': (context) => GetStartedPage(),
          '/sign-up': (context) => SignUpPage(),
          '/sign-in': (context) => SignInPage(),
          '/bonus': (context) => BonusPage(),
          '/main': (context) => MainPage(),
        },
      ),
    );
  }
}
