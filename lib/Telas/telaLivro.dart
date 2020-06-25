import 'package:app_livraria/model/Aventura.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';

class TelaLivro extends StatefulWidget {
  @override
  _TelaLivroState createState() => _TelaLivroState();
}

class _TelaLivroState extends State<TelaLivro> {
 
//Image.network(listaTerror[index].image),


final String colecao = "aventura";

List<Aventura> listaAven = List();



Text txtTituilo = Text("");
Text txtAutor = Text("");
Text txtSinopse = Text("");
Image image = Image.network("");


//Instancia do Firebase
var db = Firestore.instance;

void getDocumento(String idDocumento) async{
  //Recuperar o documento no Firestore
  DocumentSnapshot doc = 
      await db.collection("aventura").document(idDocumento).get();

      setState(() {
      
    });

    }




  @override
  Widget build(BuildContext context) {

    final String idDocumento = ModalRoute.of(context).settings.arguments;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "DigiLib",
        ),
        leading: IconButton(
          tooltip: 'Retornar a Tela Anterior',
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(
              context,
            );
          },
        ),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.fromLTRB(
            20 /*left*/, 0.5 /*top*/, 18 /*right*/, 5 /*bottom*/),
        child: Container(
          decoration: BoxDecoration(
            border: Border.all(color: Colors.white, width: 1),
            borderRadius: BorderRadius.circular(10),
            gradient: LinearGradient(
                colors: [Colors.white, Colors.white],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight),
          ),
          child: Center(
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.fromLTRB(
                      20 /*left*/, 10 /*top*/, 20 /*right*/, 1 /*bottom*/),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          height: MediaQuery.of(context).size.height / 2.3,
                          width: MediaQuery.of(context).size.width / 2.3,
                          
                          //Image.network(listaTerror[index].image),
                         child: Image.asset("assets/imagens/livro2.jpg"),
                          //child: Image.network(listaAv[index].image)


                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(
                       'txtAutor',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            height: 2,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Text(


                        "Autor",


                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: Colors.black,
                            height: 1,
                            fontSize: 20,
                            fontWeight: FontWeight.normal),
                      ),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(2.0),


                        child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit."
                          "massa libero. Sed nec massa pulvinar tortor scelerisque viverra. "
                          "Sed pulvinar nisl sit amet velit varius vestibulum. In et sapien turpis. "
                          "Mauris quis arcu eu eros ornare hendrerit sit amet nec nisi. Curabitur vestibulum "
                          "libero et magna ultricies maximus. Maecenas et lobortis felis. Nam feugiat felis "
                          "ac blandit gravida.",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              height: 1,
                              fontSize: 20,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                RaisedButton(
                  color: Colors.blueGrey,
                  child: Text(
                    "Ler",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        height: 1,
                        fontSize: 30,
                        fontWeight: FontWeight.bold),
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/telaLeitura");
                    
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

      
    
  
}