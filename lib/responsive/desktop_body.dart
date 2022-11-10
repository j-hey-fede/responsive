import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            'D E S K T O P',
          ),
        ),
        backgroundColor: Colors.white24,
        body: Row(
          children: [
            Expanded(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: AspectRatio(
                      aspectRatio: 16 / 9,
                      child: Container(
                        color: Colors.deepPurple[400],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 90,
                      color: Colors.deepPurple,
                    ),
                  ),
                  Expanded(
                    child: ListView.builder(
                      itemCount: 10,
                      itemBuilder: ((context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Container(
                            height: 120,
                            color: Colors.deepPurple[300],
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            // side column to the right
            Expanded(
              child: ListView.builder(
                itemCount: 10,
                itemBuilder: ((context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Container(
                      height: 120,
                      color: Colors.deepPurple[300],
                    ),
                  );
                }),
              ),
            ),
          ],
        ));
  }
}
