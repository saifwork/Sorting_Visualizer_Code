import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import "package:flutter/material.dart";
import 'package:sort_vizualizer/algorithm_cubit/algorithm_cubit.dart';

import 'components/controller.dart';
import 'components/panel.dart';
import 'components/visualizer.dart';

void main() => runApp(
      MaterialApp(
        theme: ThemeData.dark().copyWith(
          colorScheme: ThemeData.dark().colorScheme.copyWith(
                secondary: Colors.redAccent,
                primary: Colors
                    .amberAccent, // You can use the primary color for buttons
              ),
          scaffoldBackgroundColor: Colors.black,
          sliderTheme: SliderThemeData(
            activeTrackColor: Colors.redAccent,
            inactiveTrackColor: CupertinoColors.darkBackgroundGray,
            thumbColor: Colors.redAccent,
            overlayColor: Colors.transparent,
          ),
        ),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          body: SortingAlgorithmsVisualizerApp(),
        ),
      ),
    );

class SortingAlgorithmsVisualizerApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => AlgorithmCubit(),
      child: SlidePanel(
        panel: Controller(),
        body: Visualizer(),
      ),
    );
  }
}
