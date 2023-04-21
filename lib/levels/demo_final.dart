import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DemoFinal extends StatefulWidget {
  const DemoFinal({Key? key}) : super(key: key);
  @override
  _DemoFinalState createState() => _DemoFinalState();
}

class _DemoFinalState extends State<DemoFinal> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const Spacer(),
          const Text('Congratulations!', style: TextStyle(fontSize: 40)),
          const Spacer(
            flex: 1,
          ),
          const Text(
            'Please take this online survey',
            style: TextStyle(fontSize: 20),
          ),
          const Spacer(flex: 2),
          ElevatedButton(
              onPressed: () {
                String url = 'https://forms.gle/kNBMPJ5kDdTHkpta9';
                Uri uri = Uri.parse(url);
                launchUrl(uri);
              },
              child: const Text('https://forms.gle/kNBMPJ5kDdTHkpta9')),
          const Spacer(),
        ]),
      ),
    );
  }
}
