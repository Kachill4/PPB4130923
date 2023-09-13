import 'package:flutter/material.dart';

void main() {
  runApp(const AppWo());
}

class AppWo extends StatelessWidget {
  const AppWo({super.key});

  @override
  Widget build(BuildContext context) {
    //return const Placeholder();
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: const Text('- - - Flutter App Pertama Aqoeh - - -'),
            backgroundColor: const Color.fromRGBO(188, 5, 255, 1),
            actions: <Widget>[
              IconButton(
                  icon: const Icon(Icons.add_alert),
                  tooltip: 'Show Snackbar',
                  onPressed: () {
                    ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('aksi snackbar')));
                  })
            ],
          ),

          ///body: const Text('Ohayou Sekai'),
          ///^^^kalau ini hasilnya cmn di pojok kiri atas
          body: const Center(
            child: Text(
              'Ohayou Sekai',
              style: TextStyle(
                  fontSize: 28, color: Color.fromRGBO(255, 149, 0, 1)),
            ),
          )),
    );
  }
}
