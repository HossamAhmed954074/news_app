import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class LoadingIndicatorWidget extends StatelessWidget {
  const LoadingIndicatorWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
        child: Center(
            child: SizedBox(
              width: 100,
              height: 100,
              child: LoadingIndicator(
                  indicatorType: Indicator.lineSpinFadeLoader,
                  /// Required, The loading type of the widget
                  colors: const [
                    Color.fromARGB(255, 245, 5, 5),
                    Color.fromARGB(255, 25, 91, 190),
                    Color.fromARGB(255, 22, 206, 68)
                  ],
              
                  /// Optional, The color collections
                  strokeWidth: 1,
                  pathBackgroundColor: Colors.black
              
                  /// Optional, the stroke backgroundColor
                  ),
            )),
      );
  }
}