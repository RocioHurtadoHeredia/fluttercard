import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatelessWidget {
  final String title;
  const MyHomePage({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // The title text which will be shown on the action bar
        title: Text(title),
      ),
      body: Card(
        child: Container(
          height: 100,
          color: Colors.white,
          child: Row(
            children: [
              const Center(
                child: Padding(
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child: Image(image: AssetImage('assets/img/logo5.jpg')),
                    flex: 2,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  alignment: Alignment.topLeft,
                  child: Column(
                    children: [
                      const Expanded(
                        flex: 5,
                        child: ListTile(
                          title: Text("Carls Jr"),
                          subtitle: Text("Restaurante"),
                        ),
                      ),
                      Expanded(
                        flex: 5,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            TextButton(
                              child: const Text("Visitar"),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            TextButton(
                              child: const Text("Añadir a favoritos"),
                              onPressed: () {},
                            ),
                            const SizedBox(
                              width: 8,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                flex: 8,
              ),
            ],
          ),
        ),
        elevation: 8,
        margin: const EdgeInsets.all(10),
      ),
    );
  }
}
