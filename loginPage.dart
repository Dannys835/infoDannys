import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({super.key});

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 6, 230, 215),
      body: Padding(
        padding: const EdgeInsets.all(
            10), //da o espaçamento determinado para o elemento
        child: Center(
            child: Column(
          //crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 90, // Tamanho do avatar
              backgroundImage:
                  AssetImage('assets/login_image.png'), // endereço da imagem
            ),
            const Divider(height: 30),
            TextFormField(
              //caixa de texto
              keyboardType: TextInputType.number,
              autofocus: true,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                labelText: 'CPF',
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const Divider(height: 10),
            TextFormField(
              //caixa de texto
              keyboardType: TextInputType.text,
              obscureText: true,
              style: const TextStyle(color: Colors.black),
              decoration: const InputDecoration(
                labelText: 'Senha',
                labelStyle: TextStyle(color: Colors.black),
              ),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment:
                  MainAxisAlignment.end, // Alinha ao final (direita)
              children: [
                TextButton(
                  onPressed: () {
                    // Ação ao pressionar
                  },
                  child: const Text(
                    'E͟s͟q͟u͟e͟c͟i͟ ͟M͟i͟n͟h͟a͟ ͟S͟e͟n͟h͟a͟',
                    style: TextStyle(color: Color.fromARGB(255, 138, 69, 249)),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            ButtonTheme(
                height: 10,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'main');
                  },
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 40)),
                  child: const Text(
                    'Entrar',
                    style: TextStyle(color: Colors.black),
                  ),
                )),
            const SizedBox(height: 10),
            ButtonTheme(
                height: 10,
                child: ElevatedButton(
                  onPressed: () => {Navigator.pushNamed(context, 'Cadastro')},
                  style: ElevatedButton.styleFrom(
                      minimumSize: const Size(200, 40)),
                  child: const Text(
                    'Criar conta',
                    style: TextStyle(color: Colors.black),
                  ),
                ))
          ],
        )),
      ),
    );
  }
}
