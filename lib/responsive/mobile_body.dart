import 'package:flutter/material.dart';

class MobileBody extends StatelessWidget {
  const MobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'M O B I L E',
        ),
      ),
      backgroundColor: Colors.white24,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(
              10.0,
            ),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.deepPurple[400],
              ),
            ),
          ),
          // Second section with scrolling list of items
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: SizedBox(
              height: 100,
              child: Container(
                color: Colors.deepPurple,
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: ((context, index) {
                return Padding(
                  padding: const EdgeInsets.all(
                    10.0,
                  ),
                  child: Container(
                    color: Colors.deepPurple[300],
                    height: 120,
                  ),
                );
              }),
            ),
          )
        ],
      ),
    );
  }
}
