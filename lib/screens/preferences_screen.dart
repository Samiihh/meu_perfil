// TELA DE PREFERENCIAS

import 'package:flutter/material.dart';

// Nossa tela tera mudanças, por isso escolhemos a opção de StatefullWidget
class PreferencesScreen extends StatefulWidget {
  const PreferencesScreen({super.key});

  @override
  // estamos preparando o widget para ter alteração de estado
  State<PreferencesScreen> createState() => _PreferencesScreenState();
}

// Estado da Tela
// A classe State guarda os valores que podem mudar
// e contem o metodo build() que monta a interface
class _PreferencesScreenState extends State<PreferencesScreen> {
  //String esta guarando texto  com algumas valores já inicial
  //Iniciaremos o dropdown
  String temaSelecionado = 'Tecnologia';
  // Essa guarda o valor do Radio selecionado, que começa inicialmente com iniciante
  String nivelSelecionado = 'Iniciante';
  // false significa que a opção começa desmarcada
  bool receberNovidades = false;
  // Começa com false  portanto o Switch iniciara desligado
  bool receberNotificacao = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Preferencias')),

      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,

            children: [
              const Text(
                'Configure suas preferencias',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),

              SizedBox(height: 24),

              // Os componentes seram adicionados aqui
              const Text(
                'Seu nome',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),

              TextField(
                decoration: const InputDecoration(
                  labelText: 'Nome',
                  hintText: 'Digite seu nome',
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
              ),
              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
