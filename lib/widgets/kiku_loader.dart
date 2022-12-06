import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class KikuLoader extends StatelessWidget {
  const KikuLoader({super.key, required this.child, required this.isLoading});

  final Widget child;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    if (!isLoading) {
      return child;
    }
    return const Center(
      child: LoadingIndicator(
        indicatorType: Indicator.ballScale,
      ),
    );
  }
}
