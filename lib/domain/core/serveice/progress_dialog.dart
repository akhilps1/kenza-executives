import 'package:executives/presentation/core/widgets/custom_circular_progress.dart';
import 'package:flutter/material.dart';

void showProgress<T>(BuildContext context) {
  showDialog<T>(
    context: context,
    barrierDismissible: false,
    builder: (context) {
      return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SizedBox(
          height: 100,
          width: 100,
          child: Transform.scale(
            scale: 1.6,
            child: const Center(
              child: CustomCircularProgress(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
    },
  );
}
