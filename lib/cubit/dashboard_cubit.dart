import 'package:assingment2/cubit/area_cubit.dart';
import 'package:assingment2/cubit/arithmetic_cubit.dart';
import 'package:assingment2/cubit/simpleintrest_cubit.dart';
import 'package:assingment2/view/area_cubit_view.dart';
import 'package:assingment2/view/arithmetic_cubit_view.dart';
import 'package:assingment2/view/simpleintrest_cubit_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubit  extends Cubit<void>{
  DashboardCubit(
    this._circleAreaCubit,
    this._arithmeticCubit,
    this._simpleInterestCubit,
  ):super(null);

  final CircleAreaCubit _circleAreaCubit;
  final ArithmeticCubit _arithmeticCubit;
  final SimpleInterestCubit _simpleInterestCubit;

  void openCircleArea(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => CircleAreaCubitView(),
        ),
    );
  }

    void openArithmeticView(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => ArithmeticCubitView(),
        ),
    );
  }

      void openSimpleIntrestView(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => SimpleInterestCubitView(),
        ),
    );
  }
}