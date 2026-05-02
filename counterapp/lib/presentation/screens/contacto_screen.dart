import 'package:flutter/material.dart';

class ContactoScreen extends StatelessWidget {
  const ContactoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Contacto')),
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Contáctanos',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              Text(
                'Email: contacto@gmail.com',
                style: TextStyle(fontSize: 18),
              ),
              SizedBox(height: 10),
              Text('Teléfono: +57 300 123 4567', style: TextStyle(fontSize: 18)),
            ],
          ),
        ),
      ),
    );
  }
}
