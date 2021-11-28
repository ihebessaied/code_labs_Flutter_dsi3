// A Widget that extracts the necessary arguments from
// the ModalRoute.
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'ScreenArguments.dart';

class ExtractArgumentsScreen extends StatelessWidget {
  const ExtractArgumentsScreen({Key? key}) : super(key: key);

  static const routeName = '/extractArguments';

  @override
  Widget build(BuildContext context) {
    // Extract the arguments from the current ModalRoute
    ElevatedButton(
      onPressed: () {
        // When the user taps the button,
        // navigate to a named route and
        // provide the arguments as an optional
        // parameter.
        Navigator.pushNamed(
          context,
          ExtractArgumentsScreen.routeName,
          arguments: ScreenArguments(
            'Extract Arguments Screen',
            'This message is extracted in the build method.',
          ),
        );
      },
      child: const Text('Navigate to screen that extracts arguments'),
    );
    // settings and cast them as ScreenArguments.
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArguments;

    return Scaffold(
      appBar: AppBar(
        title: Text(args.title),
      ),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}