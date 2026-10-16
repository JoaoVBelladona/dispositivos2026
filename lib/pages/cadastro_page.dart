// ignore_for_file: strict_top_level_inference, annotate_overrides

import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final emailcontroller= TextEditingController();
  final senhacontroller= TextEditingController();

  abrirTelaCadastro(BuildContext context){
    Navigator.push(context,
      MaterialPageRoute(builder:(context) => CadastroPage()));
  }

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'), 
        centerTitle: true,    
        ),
      body: Padding(
        padding: EdgeInsets.all(100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            TextField(
              controller: emailcontroller,
              decoration: InputDecoration(
                label: Text('E-mail')
              ), 
            ),
  
            SizedBox(height: 50),

            TextField(
              controller: senhacontroller,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Senha'),
              ), 
            ),
            
            SizedBox(
              height: 100,
            ),

            ElevatedButton(
              onPressed: (){}, 
              child: Text("Cadastrar")
              
            ),

            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),   
    );
  }
}