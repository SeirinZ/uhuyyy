import 'package:flutter/material.dart';

class DetailTransaksinya extends StatefulWidget {
  const DetailTransaksinya({super.key});

  @override
  State<DetailTransaksinya> createState() => _DetailTransaksinyaState();
}

class _DetailTransaksinyaState extends State<DetailTransaksinya> {
  TextEditingController _controller = TextEditingController();
  List<String> _dropdownItems = ['Cash', 'Debit', 'Qris'];
  String? _selectedItem;
  String _statusMessage = 'Selesai'; // Inisialisasi status

  // Fungsi untuk mengubah status
  void _changeStatus(String newStatus) {
    setState(() {
      _statusMessage = newStatus;
    });
  }

  @override
  void initState() {
    super.initState();
    _controller.addListener(() {
      print('Current value: ${_controller.text}');
      _selectedItem = _controller.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Detail Transaksi'),
        backgroundColor: Colors.indigo,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Untuk kembali ke halaman sebelumnya
          },
        ),
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage('lib/assets/WarmindoStarboy.jpg'),
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
              color: Colors.white.withOpacity(0.6),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ListTile(
                    title: Text(
                      'Transaksi WT1202311270001',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text(
                      'Total: Rp 50,000',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                  Divider(),
                  ListTile(
                    title: Text(
                      'Item 1',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                    subtitle: Text('Harga: Rp 20,000',
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Text(
                      'METODE PEMBAYARAN:',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: DropdownButton<String>(
                      value: _selectedItem,
                      hint: Text('Pilih metode pembayaran'),
                      icon: Icon(Icons.arrow_drop_down),
                      style: TextStyle(color: Colors.black),
                      underline: Container(
                        height: 2,
                        color: Colors.indigo,
                      ),
                      items: _dropdownItems.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: TextStyle(color: Colors.black),
                          ),
                        );
                      }).toList(),
                      onChanged: (newValue) {
                        setState(() {
                          _selectedItem = newValue;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Status',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        SizedBox(height: 8.0),
                        Text(
                          _statusMessage,
                          style: TextStyle(color: Colors.black),
                        ),
                        SizedBox(height: 16.0),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            ElevatedButton(
                              onPressed: () => _changeStatus('Proses'),
                              child: Text('Proses'),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            ElevatedButton(
                              onPressed: () => _changeStatus('Disajikan'),
                              child: Text('Disajikan'),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                              ),
                            ),
                            SizedBox(width: 8.0),
                            ElevatedButton(
                              onPressed: () => _changeStatus('Selesai'),
                              child: Text('Selesai'),
                              style: ElevatedButton.styleFrom(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 16.0, vertical: 8.0),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Fungsi untuk menyimpan detail transaksi
          print('Detail transaksi disimpan.');
        },
        child: Icon(Icons.check),
        backgroundColor: Colors.indigo,
      ),
    );
  }
}
