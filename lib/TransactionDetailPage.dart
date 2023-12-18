import 'package:flutter/material.dart';

class TransactionDetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Transaksi'),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/ojakturu.jpeg'),
            fit: BoxFit.cover,
          ),
        ),
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(16.0),
            child: Card(
              elevation: 4.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              color: Colors.white.withOpacity(0.5),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Transaksi WT1202311270001', //masukin dari random number generat aja atauga id transaksi
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Total: Rp 50,000', // total dari semua harnganya yee ini
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Item 1',// nama item dari db 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('Harga: Rp 20,000',           //harganya itemnya dari db
                        style: TextStyle(color: Colors.black)),
                  ),
                  ListTile(
                    title: Text(
                      'Item 2',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('Harga: Rp 30,000',
                        style: TextStyle(color: Colors.black)),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Metode Pembayaran', 
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Cash',                         //metode pembayaranya apa dari db
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  ListTile(
                    title: Text(
                      'Status',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Selesai',                            //display status pembayaranya
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

