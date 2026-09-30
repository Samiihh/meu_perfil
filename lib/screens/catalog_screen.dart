// Tela de Catalogo

import 'package:flutter/material.dart';

class CatalogScreen extends StatelessWidget {
  const CatalogScreen({super.key});

  // dados do nosso catalogo
  // List<String> Siginifica:
  // List -> uma coleção de valores;
  // String -> é que cada valor sera guardado em formato de texto;
  final List<String> produtos = const [
    'Notebook',
    'Celular',
    'Headset',
    'Teclado',
    'Mouse',
    'Monitor',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Catalogo')),

      body: Padding(
        padding: const EdgeInsets.all(16),

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Produtos em destaque',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 12),
            // A listview sera adicionada aqui

            SizedBox(
              // Como a nossa listview sera horizontal, precisamos reservas uma altura para essa aerea, que ela podera ocupar
              height: 120,

              child: ListView.builder(
                // Por padrão, a listview rola verticalmente
                //Axis.horizontal muda a direção da rolagem
                scrollDirection: Axis.horizontal,

                // Define quantos itens a listview irá contruir
                itemCount: produtos.length,

                //descreve como cada item sera montado
                itemBuilder: (context, index) {
                  return Container(
                    width: 150,
                    margin: const EdgeInsets.only(right: 12),
                    padding: const EdgeInsets.all(12),

                    decoration: BoxDecoration(
                      color: Colors.blueGrey.shade50,
                      borderRadius: BorderRadius.circular(12),
                    ),

                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(Icons.star, size: 32),
                        const SizedBox(height: 8),

                        Text(
                          // Index indical qual a posição esta sendo contruida
                          produtos[index],
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),

            const SizedBox(height: 24),

            const Text(
              'Todos os Produto',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),

            const SizedBox(height: 24),

            // Nossa GridView sera adicionada aqui
          ],
        ),
      ),
    );
  }
}
