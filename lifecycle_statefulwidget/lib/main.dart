import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(home: TelaPrincipal()));
}

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  TelaPrincipalState createState() => TelaPrincipalState();
}

class TelaPrincipalState extends State<TelaPrincipal> {
  bool mostrarWidget = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Ciclo de Vida')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (mostrarWidget) CicloDeVidaWidget(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  mostrarWidget = !mostrarWidget;
                });
              },
              child: Text(
                mostrarWidget ? 'Remover Widget' : 'Adicionar Widget',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CicloDeVidaWidget extends StatefulWidget {
  const CicloDeVidaWidget({super.key});

  @override
  CicloDeVidaWidgetState createState() => CicloDeVidaWidgetState();
}

class CicloDeVidaWidgetState extends State<CicloDeVidaWidget> {
  int contador = 0;

  @override
  void initState() {
    super.initState();
    debugPrint("🟢 initState chamado");
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    debugPrint("🔄 didChangeDependencies chamado");
  }

  @override
  void didUpdateWidget(covariant CicloDeVidaWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    debugPrint("🔁 didUpdateWidget chamado");
  }

  @override
  void dispose() {
    debugPrint("🔴 dispose chamado");
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint("📦 build chamado");
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text('Contador: $contador', style: TextStyle(fontSize: 20)),
        ElevatedButton(
          onPressed: () {
            setState(() {
              contador++;
            });
          },
          child: Text('Incrementar'),
        ),
      ],
    );
  }
}
