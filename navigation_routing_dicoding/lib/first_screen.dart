import 'package:flutter/material.dart';

class FirstScreen extends StatelessWidget {
  const FirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation & Routing'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(
                    context, '/secondScreen'); // Pindah ke halaman berikutnya
              },
              child: Text('Go to Second Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/secondScreenWithData',
                    arguments:
                        'Hello from First Screen!'); // pindah ke halaman membawa data dari halaman sebelumnya
              },
              child: Text('Navigation with Data'),
            ),
            ElevatedButton(
              onPressed: () async {
                final scaffoldMessenger = ScaffoldMessenger.of(context);
                final result = await Navigator.pushNamed(context,
                    '/returnDataScreen'); // Pindah ke halaman berikutnya dan kembali membawa data
                SnackBar snackBar = SnackBar(content: Text('$result'));
                scaffoldMessenger.showSnackBar(snackBar);
              },
              child: Text('Return Data from Another Screen'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context,
                    '/replacementScreen'); // pindah ke halaman berikutnya tetapi tidak bisa kembali kehalam sebelumnya Ex halaman Login atau Splash Screen
              },
              child: Text('Replace Screen'),
            ),
          ],
        ),
      ),
    );
  }
}
