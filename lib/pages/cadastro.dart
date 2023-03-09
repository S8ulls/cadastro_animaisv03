import 'package:cadastro_animais/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

class CadastroAnimal extends StatefulWidget {
  const CadastroAnimal({Key? key}) : super(key: key);

  @override
  createState() => _CadastroAnimalState();
}

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

class _CadastroAnimalState extends State<CadastroAnimal> {
  final nomeAnimalController = TextEditingController();
  final especieController = TextEditingController();
  final descricaoAnimalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: const Text(''),
          backgroundColor: const Color(0xFF3CB371),
        ),
        body: Padding(
            padding: const EdgeInsets.all(12.0),

            // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

            // começo do children

            child: Center(
                child: Form(
                    child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Icon(
                  Icons.pets,
                  color: Color(0xFF3CB371),
                  size: 50,
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                const SizedBox(width: 10),
                const Text(
                  ' Hora de criar um perfil para seu animal !',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 35,
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF3CB371),
                  ),
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                const SizedBox(
                  height: 20,
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF3CB371),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    controller: nomeAnimalController,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(
                      color: Colors.green,
                      fontSize: 18,
                    ),
                    decoration: InputDecoration(
                      hintText: 'Nome do seu animalzinho',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 15,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                const SizedBox(
                  height: 10,
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                Container(
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: const Color(0xFF3CB371),
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: TextFormField(
                    textAlign: TextAlign.center,
                    controller: descricaoAnimalController,
                    autofocus: true,
                    keyboardType: TextInputType.text,
                    style: const TextStyle(color: Colors.green, fontSize: 18),
                    decoration: InputDecoration(
                      hintText: 'Adicione aqui a descrição do animal',
                      hintStyle: TextStyle(
                        color: Colors.black.withOpacity(0.5),
                        fontSize: 15,
                      ),
                      border: InputBorder.none,
                    ),
                  ),
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                const SizedBox(height: 10),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                const Text(
                  'Escolha uma imagem para dar identidade ao seu animalzinho ! Imagens que ferem as diretrizes da comunidade muito provavelmente vão acarretar em "perma-ban" ( banimento vitalício por justa causa ). Recomenda-se ler as diretrizes de usuário',
                  textAlign: TextAlign.center,
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                const SizedBox(height: 10),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                // Select Image Button

                Container(
                  margin: const EdgeInsets.only(top: 10),
                  height: 50,
                  decoration: BoxDecoration(
                    color: const Color(0xFF3CB371),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: TextButton(
                    onPressed: () {
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: const Text(
                              "Selecione uma imagem",
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 20,
                              ),
                            ),
                            content: SingleChildScrollView(
                              child: ListBody(
                                children: <Widget>[
                                  GestureDetector(
                                    child: const Text("Galeria"),
                                    onTap: () {
                                      _pickImage(ImageSource.gallery);
                                      Navigator.pop(context);
                                    },
                                  ),
                                  const Padding(padding: EdgeInsets.all(8.0)),
                                  GestureDetector(
                                    child: const Text("Câmera"),
                                    onTap: () {
                                      _pickImage(ImageSource.camera);
                                      Navigator.pop(context);
                                    },
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    },
                    child: const Center(
                      child: Text(
                        'Selecionar imagem',
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                        ),
                      ),
                    ),
                  ),
                ),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

                Container(
                    margin: const EdgeInsets.only(top: 10),
                    height: 50,
                    decoration: BoxDecoration(
                      color: const Color(0xFF3CB371),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    child: TextButton(
                      child: const Center(
                        child: Text(
                          'Criar cadastro do animal',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontStyle: FontStyle.normal,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    )),

                // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
              ], // fim do children

              // XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX
            )))));
  }

  void _pickImage(ImageSource gallery) {}
  // uploader ( está acima )
} // fim do class

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

/*import 'package:cadastro_animais/pages/home.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class CadastroAnimal extends StatefulWidget {
  const CadastroAnimal({Key? key}) : super(key: key);

  @override
  createState() => _CadastroAnimalState();
}

class _CadastroAnimalState extends State<CadastroAnimal> {
  final nomeAnimalController = TextEditingController();
  final especieController = TextEditingController();
  final descricaoAnimalController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Center(
          child: Form(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: nomeAnimalController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.green, fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'Nome do seu animalzinho!',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                TextFormField(
                  controller: especieController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.green, fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'Espécie',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                TextFormField(
                  controller: descricaoAnimalController,
                  autofocus: true,
                  keyboardType: TextInputType.text,
                  style: const TextStyle(color: Colors.green, fontSize: 20),
                  decoration: const InputDecoration(
                    labelText: 'Descrição do animal',
                    labelStyle: TextStyle(color: Colors.black),
                  ),
                ),
                Container(
                    margin:
                        (const EdgeInsets.only(top: 10, left: 25, right: 25)),
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(15))),
                    child: TextButton(
                      child: const Center(
                        child: Text(
                          'Criar cadastro',
                          style: TextStyle(color: Colors.white, fontSize: 19),
                        ),
                      ),
                      onPressed: () async {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const HomePage()));
                      },
                    )),
                ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: const Text("Selecione uma imagem"),
                          content: SingleChildScrollView(
                            child: ListBody(
                              children: <Widget>[
                                GestureDetector(
                                  child: const Text("Galeria"),
                                  onTap: () {
                                    _pickImage(ImageSource.gallery);
                                    Navigator.pop(context);
                                  },
                                ),
                                const Padding(padding: EdgeInsets.all(8.0)),
                                GestureDetector(
                                  child: const Text("Câmera"),
                                  onTap: () {
                                    _pickImage(ImageSource.camera);
                                    Navigator.pop(context);
                                  },
                                )
                              ],
                            ),
                          ),
                        );
                      },
                    );
                  },
                  child: const Text("Selecionar imagem"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void _pickImage(ImageSource gallery) {}
}
*/

/*margin: const EdgeInsets.only(top: 10, left: 25, right: 25),
                    height: 50,
                    width: 200,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 2),
                          blurRadius: 2,
                        ),
                      ],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Builder(builder: (context) {
                      return ElevatedButton(
                        onPressed: () async {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()));
                        },
                      );
                    })),*/

// XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

/*class SeletorDeOpcoes extends StatefulWidget {
  final List<String> opcoes;
  final String valorSelecionado;
  final Function(String) aoSelecionarOpcao;

  SeletorDeOpcoes({
    required this.opcoes,
    required this.valorSelecionado,
    required this.aoSelecionarOpcao,
  });

  @override
  _SeletorDeOpcoesState createState() => _SeletorDeOpcoesState();
}

class _SeletorDeOpcoesState extends State<SeletorDeOpcoes> {
  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.valorSelecionado,
      items: widget.opcoes
          .map((opcao) => DropdownMenuItem(value: opcao, child: Text(opcao)))
          .toList(),
      onChanged: (novaOpcaoSelecionada) {
        widget.aoSelecionarOpcao(novaOpcaoSelecionada.toString());
      },
    );
  }
}

class MeuApp extends StatefulWidget {
  @override
  _MeuAppState createState() => _MeuAppState();
}

class _MeuAppState extends State<MeuApp> {
  String _opcaoSelecionada = 'Opção 1';

  void _aoSelecionarOpcao(String novaOpcao) {
    setState(() {
      _opcaoSelecionada = novaOpcao;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Seletor de Opções')),
      body: Center(
        child: SeletorDeOpcoes(
          opcoes: ['Opção 1', 'Opção 2', 'Opção 3'],
          valorSelecionado: _opcaoSelecionada,
          aoSelecionarOpcao: _aoSelecionarOpcao,
        ),
      ),
    );
  }
}
*/