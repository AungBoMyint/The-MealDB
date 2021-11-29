import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void customShowDialog({required BuildContext rootBuildContext}) {
  showDialog(
    barrierDismissible: false,
    context: rootBuildContext,
    builder: (context) {
      return const AlertDialog(
        content: CircularProgressIndicator(),
        elevation: 5,
      );
    },
  );
}

void customHideDialog({required BuildContext rootBuildContext}) {
  Navigator.of(rootBuildContext).pop();
}
