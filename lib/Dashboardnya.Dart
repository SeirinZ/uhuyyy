import 'package:flutter/material.dart';

class Dashboardnya extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/WarmindoStarboy.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: ListView(
              children: [
                Image.asset(
                  'lib/assets/logo warmindo.jpeg',
                  width: 300.0,
                  height: 300.0,
                ),
                SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.8,
                  child: Card(
                    elevation: 4.0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    color: Colors.white.withOpacity(0.6),
                    child: Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Shift Aktif',
                            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Implementasi aksi ketika tombol ditekan
                            },
                            child: Text('Shift Siang 11.00 - 16.59'),
                          ),
                          ElevatedButton(
                            onPressed: () {
                              // Implementasi aksi ketika tombol ditekan
                            },
                            child: Text('Shift Malam 17.00 - 23.00'),
                          ),
                          
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

void main() {
  runApp(MaterialApp(
    home: Dashboardnya(),
  ));
}
