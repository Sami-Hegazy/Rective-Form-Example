import 'package:flutter/material.dart';
import 'package:bdaya_flutter_common/bdaya_flutter_common.dart';
import 'package:reactive_form_ex/di/get_it_config.dart';
import 'package:reactive_form_ex/post_details_reactive/view.dart';

void main() {
  Logger.root.onRecord.listen(bdayaOnRecordHandlerFactory());
  getIt.allowReassignment = true;

  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Reactive Form',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PostDetailsReactiveView.hooked(),
    );
  }
}
