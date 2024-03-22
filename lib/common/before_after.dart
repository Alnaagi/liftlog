import 'package:before_after/before_after.dart';
import 'package:flutter/material.dart';

class BeforeAfterPicPage extends StatefulWidget {
  const BeforeAfterPicPage({super.key});

  @override
  State<BeforeAfterPicPage> createState() => _BeforeAfterPicPageState();
}

class _BeforeAfterPicPageState extends State<BeforeAfterPicPage> {
  var value = 0.5;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        title: const Text('Before After'),
        centerTitle: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BeforeAfter(
                    value: value,
                    before: Image.asset('assets/images/after.png'),
                    after: Image.asset('assets/images/before.png'),
                    onValueChanged: (value) {
                      setState(() => this.value = value);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: BeforeAfter(
                    value: value,
                    before: Image.asset('assets/images/after.png'),
                    after: Image.asset('assets/images/before.png'),
                    direction: SliderDirection.vertical,
                    onValueChanged: (value) {
                      setState(() => this.value = value);
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
