import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Warmindo Starboy'),
        backgroundColor: Colors.white.withOpacity(0.5), 
        elevation: 0, 
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
                'lib/assets/ojakturu.jpeg'), 
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Center(
            child: SizedBox(
              width: MediaQuery.of(context).size.width *
                  0.8, 
              child: Card(
                elevation: 4.0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                
                color: Colors.white.withOpacity(0.5),
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextField(
                          controller: _usernameController,
                          decoration: InputDecoration(labelText: 'Username'),
                        ),
                        TextField(
                          controller: _passwordController,
                          obscureText: true,
                          decoration: InputDecoration(labelText: 'Password'),
                        ),
                        SizedBox(height: 20),
                        ElevatedButton(
                          onPressed: () {
                            //logila logila untuk login ya bre
                          },
                          child: Text('Login'),
                        ),
                        SizedBox(height: 10), 
                        ElevatedButton(
                          onPressed: () {
                            // logika logilaregistrasi ye ppk
                          },
                          child: Text('Register'),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
