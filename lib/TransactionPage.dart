import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Colors.indigo, 
        
        fontFamily: 'Roboto',
      ),
      home: TransactionPage(),
    );
  }
}

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Halaman Transaksi'),
        
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/assets/ojakturu.jpeg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          padding: EdgeInsets.all(16.0),
          children: [
            TransactionCard(
              transactionNumber: 'WT1202311270001', //ini genertae random ae ataugak id transaksi
              totalAmount: 'Rp 50,000',  //total jumlah harga
            ),
            // Add other transaction items
          ],
        ),
      ),
    );
  }
}


class TransactionCard extends StatelessWidget {
  final String transactionNumber;
  final String totalAmount;

  TransactionCard({
    required this.transactionNumber,
    required this.totalAmount,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      margin: EdgeInsets.only(bottom: 16.0),
       color: Colors.white.withOpacity(0.5), 
      child: InkWell(
        onTap: () {
        //navigasi ke halaman detail transaksi yee
        //
        //
        },
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Transaksi $transactionNumber',
                style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 8.0),
              Text(
                'Total: $totalAmount',
                style: TextStyle(fontSize: 16.0),
              ),
            ],
          ),
        ),
      ),
    );
  }
}






