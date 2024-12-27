import 'package:assingment2/cubit/area_cubit.dart';
import 'package:assingment2/cubit/arithmetic_cubit.dart';
import 'package:assingment2/cubit/dashboard_cubit.dart';
import 'package:assingment2/cubit/simpleintrest_cubit.dart';
import 'package:assingment2/view/area_cubit_view.dart';
import 'package:assingment2/view/arithmetic_cubit_view.dart';
import 'package:assingment2/view/dashboard_cubit_view.dart';
import 'package:assingment2/view/simpleintrest_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create:(context) => CircleAreaCubit()),
        BlocProvider(create:(context) => ArithmeticCubit()),
        BlocProvider(create:(context) => SimpleInterestCubit()),
        BlocProvider(
          create:(context)=> DashboardCubit(
            context.read<CircleAreaCubit>(),
            context.read<ArithmeticCubit>(),
            context.read<SimpleInterestCubit>(),
          ))
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
         title: 'Flutter BLoC',
         home: DashboardCubitView(),
      ),
    );
  }
} 