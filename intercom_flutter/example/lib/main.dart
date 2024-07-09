import 'package:flutter/material.dart';
import 'package:intercom_flutter/intercom_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // TODO: make sure to add keys from your Intercom workspace.
  await Intercom.instance.initialize(
    'po0169nf',
    androidApiKey: 'android_sdk-2761e59802bedd3baa9ca3a1aaa031b9f2ff61a9',
    iosApiKey: 'ios_sdk-24520c0ce25aa2917369fdc8e8c351ca24b42359',
  );

  runApp(SampleApp());
}

class SampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Intercom example app'),
        ),
        body: Center(
          child: TextButton(
            onPressed: () async {
              await Intercom.instance.loginUnidentifiedUser(
                  //     statusCallback: IntercomStatusCallback(
                  //   onSuccess: () => print('success'),
                  //   onFailure: (error) => print(error),
                  // )
                  );
              Intercom.instance.displayMessenger();
            },
            child: Text('Show messenger'),
          ),
        ),
      ),
    );
  }
}
