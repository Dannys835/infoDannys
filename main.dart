// ignore: unused_import
import 'package:desafio1/pages/loginPage.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:desafio1/pages/Cadastro.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, //remove o debug
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 247, 247, 247)),
        useMaterial3: true,
      ),
      home: const CadastroPage(), //MyHomePage(title: ''),
      /*routes: {
          'Loginpage' : (context)  => const Loginpage()
          'MyHomePage': (context) => const MyHomePage()
        },*/
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 150, // Tamanho do avatar
                backgroundImage:
                    AssetImage('assets/luz_teste.jpg'), // endereço da imagem
              ),
              const SizedBox(
                  height: 20), // Espaçamento entre a imagem e o texto
              const Text(
                'Luz Noceda',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 30,
                ),
              ),
              const SizedBox(height: 20), // Espaçamento entre o texto e icons
              Row(
                mainAxisAlignment: MainAxisAlignment.center, //centraliza icons
                children: [
                  IconButton(
                    icon:
                        const Icon(Icons.phone, size: 20, color: Colors.black),
                    onPressed: () {
                      launchUrl(Uri(scheme: 'tel', path: '(63) 991293982'));
                    },
                  ),
                  const SizedBox(width: 15), // espaçamento entre icons
                  IconButton(
                    icon:
                        const Icon(Icons.email, size: 20, color: Colors.black),
                    onPressed: () {
                      launchUrl(Uri(scheme: 'mailto', path: '(63) 991293982'));
                    },
                  ),
                  const SizedBox(width: 15),
                  IconButton(
                    icon: const Icon(Icons.sms, size: 20, color: Colors.black),
                    onPressed: () {
                      launchUrl(Uri(scheme: 'sms', path: '(63) 991293982'));
                    },
                  ),
                  const SizedBox(width: 15),
                  IconButton(
                    icon: const Icon(Icons.location_on,
                        size: 20, color: Colors.black),
                    onPressed: () {
                      final uri = Uri(
                        scheme: 'https',
                        host: 'www.google.com',
                        path: '/maps/search/',
                        queryParameters: {
                          'api': '1',
                          'query': '-10.176062328920437,-48.33561031704806',
                        },
                      );
                      launchUrl(uri);
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
