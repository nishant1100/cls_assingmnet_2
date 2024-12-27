import 'package:assingment2/cubit/dashboard_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DashboardCubitView extends StatelessWidget {
  const DashboardCubitView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            appBar: AppBar(
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Dashboard'),
            const Text('Nishant Shrestha Cls Assignment2',
            )
          ],
        ),
        centerTitle: true,
      ),
      body: GridView(
        padding: const EdgeInsets.all(8),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 8,
          mainAxisSpacing: 8,
        ),
        children: <Widget>[
          Card(
            child: InkWell(
              onTap: (){
                context.read<DashboardCubit>().openCircleArea(context);
              },
              child:Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const <Widget>[
                  Icon(Icons.panorama_fish_eye, size:48),
                  Text('Circle Area Cubit'),
                ],
              )
            ),
          ),
          Card(
            child: InkWell(
              onTap: (){
                context.read<DashboardCubit>().openArithmeticView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const <Widget> [
                  Icon(Icons.calculate,size:48),
                  Text('Arithmetic Cubit')
                ],
              ),
            ),
          ),
          Card(
            child: InkWell(
              onTap: (){
                context.read<DashboardCubit>().openSimpleIntrestView(context);
              },
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children:const <Widget> [
                  Icon(Icons.arrow_circle_up, size:48),
                  Text('Simple Inerest Cubit'),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}