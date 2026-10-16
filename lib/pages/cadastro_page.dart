// ignore_for_file: strict_top_level_inference, annotate_overrides

import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebaseapp/services/login_service.dart';
import 'package:flutter/material.dart';

class CadastroPage extends StatefulWidget {
  const CadastroPage({super.key});

  @override
  State<CadastroPage> createState() => _CadastroPageState();
}

class _CadastroPageState extends State<CadastroPage> {
  final emailcontroller= TextEditingController();
  final senhacontroller= TextEditingController();

  cadastrarNovoUsuario() async{
    try{
    await LoginService.criarNovoUsuario(emailcontroller.text, senhacontroller.text);
    showMensagem('Cadastro realizado com sucesso', false);
    } on FirebaseAuthException catch (erro){
      print(erro.code);
    if(erro.code =='invalid-email'){
      showMensagem('Email Inválido',true);
    } else if(erro.code == 'weak-password'){
      showMensagem('A senha precisa de 6 carac.', true);
    } else if(erro.code == 'email-already-in-use'){
      showMensagem('E-mail já está em uso', true);
    }

  }
  }

  showMensagem(String msg, bool error){
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
        backgroundColor: error ? Colors.red : Colors.blue,
      )
    );
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
              controller: senhacontroller ,
              obscureText: true,
              decoration: InputDecoration(
                label: Text('Senha'),
              ), 
            ),
            
            SizedBox(
              height: 100,
            ),

            ElevatedButton(
              onPressed: (){
                cadastrarNovoUsuario();
              }, 
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