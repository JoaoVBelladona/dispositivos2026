// ignore_for_file: strict_top_level_inference, annotate_overrides

import 'package:firebaseapp/pages/cadastro_page.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
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
              child: Text("Entrar")
              
            ),

            SizedBox(
              height: 30,
            ),

            TextButton(
              onPressed: (){
                abrirTelaCadastro(context);
              }, 
              child: Text("Crie sua conta")
            ),
          ],
        ),
      ),

      floatingActionButton: IconButton(
        onPressed: (){
          abrirTelaCadastro(context);
        },
        icon: Icon(Icons.add),
        color: Colors.blue,
        )
      
    );
  }
}
