import 'package:flutter/material.dart';
import 'package:phone_text_field/phone_text_field.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

void main() => runApp(const PrefixIconExampleApp());

class PrefixIconExampleApp extends StatelessWidget {
  const PrefixIconExampleApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Scaffold(body: InputDecoratorExample()),
    );
  }
}

class InputDecoratorExample extends StatelessWidget {
  const InputDecoratorExample({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Formulário de denúncia'),
          
        ),
        resizeToAvoidBottomInset: false,
        body:const SingleChildScrollView( child: Column(
          
          children: [
            Padding(padding: EdgeInsets.all(10)),
            Center(
            child: SizedBox(
              width: 370,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Entre com o nome da vitima(Obrigatório)',
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.person,
                        ),
                      ))),
            ),),

            Padding(padding: EdgeInsets.all(10.0)),

            SizedBox(
              width: 370,
              child: PhoneTextField(
                initialCountryCode: 'br',
                locale: Locale('br', 'PT-BR'),
                decoration: InputDecoration(
                  labelText: "entre com o telefone da vitima(Obrigatório)",
                  border: OutlineInputBorder(),
                  prefixIcon: Align(
                    widthFactor: 1.0,
                    heightFactor: 1.0,
                    child: Icon(
                      Icons.call,
                    ),
                  ),
                ),
              ),
            ),

            Padding(padding: EdgeInsets.all(10.0)),

            SizedBox(
              width: 370,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Entre com o nome do agressor (Opcional)',
                      prefixIcon: Align(
                        widthFactor: 2.0,
                        heightFactor: 2.0,
                        child: Icon(
                          Icons.person_2,
                          color: Color.fromARGB(255, 252, 1, 1),
                        ),
                      ))),
            ),

            Padding(padding: EdgeInsets.all(10.0)),
            /*  Criar minimapa  */
            // GoogleMap(
            //   initialCameraPosition: CameraPosition(target: ] ,zoom: 11.0),
            //   liteModeEnabled: true,/
            // ),
            /*  Criar descrição da ocorrencia   */
            SizedBox(
              width: 370,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'local da Ocorrido(Obrigatório)',
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.location_on,
                        ),
                      ))),
            ),

          Padding(padding: EdgeInsets.all(10)),

            SizedBox(
              width: 370,
              child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Descrição do ocorrido (Opcional)',
                      prefixIcon: Align(
                        widthFactor: 1.0,
                        heightFactor: 1.0,
                        child: Icon(
                          Icons.edit_square,
                        ),
                      ))),
            ),
            // SizedBox(height: 30,),
            // ElevatedButton(: AlertDialog(), child: Text("enviar"),)
            //* criar botão para enviar formulário */

            // ElevatedButton(onPressed: () {} )
          ],
        ),
        ),
      ),
    );
  }
}
