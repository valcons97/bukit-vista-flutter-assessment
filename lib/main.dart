import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:get_it/get_it.dart';

import 'core/di/injection.dart';
import 'features/booking_page/cubit/booking_page_cubit.dart';
import 'features/booking_page/page/booking_page.dart';

GetIt getIt = GetIt.instance;

Future<void> main() async {
  await dotenv.load(fileName: 'env/.env');

  configureInjection();

  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (_) => getIt<BookingPageCubit>(),
        child: const BookingPage(),
      ),
    );
  }
}
