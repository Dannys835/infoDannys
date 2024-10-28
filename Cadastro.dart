import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _cadastroPageState();
}

class _cadastroPageState extends State<CadastroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: true,
        backgroundColor: const Color.fromARGB(255, 6, 230, 215),
        body: Padding(
            padding: const EdgeInsets.all(
                10), //da o espaçamento determinado para o elemento
            child: Center(
                child: Column(
                    //crossAxisAlignment: CrossAxisAlignment
                    //.stretch, // Alinha os widgets filhos para esticar e ocupar todo o espaço disponível no eixo transversal.
                    children: [
                  const CircleAvatar(
                    radius: 100, // Tamanho do avatar
                    backgroundImage: AssetImage(
                        'assets/login_image.png'), // endereço da imagem
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    'Bem-vindo, vamos começar o seu cadastro!', // Texto de boas-vindas
                    style: TextStyle(
                      fontSize: 18, // Tamanho da fonte
                      color: Colors.black, // Cor do texto
                      fontWeight: FontWeight.bold, // Negrito
                    ),
                    textAlign: TextAlign.center, // Centraliza o texto
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    //caixa de texto
                    keyboardType: TextInputType.text,
                    autofocus:
                        true, // Define que o campo de entrada deve receber o foco automaticamente ao ser exibido.
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Nome completo ',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'CPF:',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                   groupId: Calendario(),
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Data de Nascimento',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'E-mail:',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Confirme seu e-mail:',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Crie uma senha:',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    style: const TextStyle(color: Colors.black),
                    decoration: const InputDecoration(
                      labelText: 'Confirme sua senha:',
                      labelStyle: TextStyle(color: Colors.black),
                    ),
                  ),
                  const SizedBox(height: 90),
                  SizedBox(
                    //width: 0, // Defina a largura desejada
                    child: ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, 'loginPage');
                      },
                      style: ElevatedButton.styleFrom(
                          minimumSize: const Size(200, 40)),
                      child: const Text(
                        'Enviar',
                        style: TextStyle(color: Colors.black),
                      ),
                    ),
                  ),
                ]))));
  }}

class Calendario {
  static DateTime? selectedDay;

  static Widget buildCalendar(
    DateTime selectedDay,
    DateTime focusedDay,
    Function(DateTime) onDaySelected,
  ) {
    return TableCalendar(
      focusedDay: focusedDay,
      firstDay: DateTime.utc(1924, 1, 1), // Corrigido para DateTime
      lastDay: DateTime.utc(2024, 1, 1),  // Corrigido para DateTime
      selectedDayPredicate: (day) => isSameDay(selectedDay, day),
      onDaySelected: (selectedDay, focusedDay) {
        onDaySelected(selectedDay);
      },
    );
  }
}
