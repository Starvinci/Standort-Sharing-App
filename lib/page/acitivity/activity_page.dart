import 'package:flutter/material.dart';

final List<int> _items = List<int>.generate(51, (int index) => index);

void main() => runApp(const AppBarApp());

class AppBarApp extends StatelessWidget {
  const AppBarApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorSchemeSeed: const Color(0xff6750a4),
        useMaterial3: true,
      ),
      home: const AppBarExample(),
    );
  }
}

class AppBarExample extends StatefulWidget {
  const AppBarExample({super.key});

  @override
  State<AppBarExample> createState() => _AppBarExampleState();
}

class _AppBarExampleState extends State<AppBarExample> {
  bool shadowColor = false;
  double? scrolledUnderElevation;

  @override
  Widget build(BuildContext context) {
    final ColorScheme colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Aktivitäten deiner Freunde "),
      ),
      body: GridView.builder(
        shrinkWrap: true,
        itemCount: _items.length,
        padding: const EdgeInsets.all(8.0),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
          childAspectRatio: 4.0,
          mainAxisSpacing: 10.0,
        ),
        itemBuilder: (BuildContext context, int index) {
          //when no activity
          /* if (index == 0) {
            return const Center(
              
            );
          } */
          return Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                //color: Color.fromARGB(255, 245, 248, 252),
                borderRadius: BorderRadius.circular(10.0),
                //border: Border.all(width: 2),
              ),
              child: Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                elevation: 3.5,
                child: Padding(
                  padding: const EdgeInsets.all(10),
                  child: Center(
                      child: Row(
                    children: [
                      const SizedBox(width: 2),
                      const Icon(Icons.assignment_ind),
                      Text('ActivitySlot Nr: $index'),
                    ],
                  )),
                ),
              )
              //child: Text('ActivitySlot Nr: $index'),
              );
        },
      ),
      /* bottomNavigationBar: BottomAppBar(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: OverflowBar(
            overflowAlignment: OverflowBarAlignment.center,
            alignment: MainAxisAlignment.center,
            overflowSpacing: 5.0,
            children: const <Widget>[
               SizedBox(height: 24),
            ],
          ),
        ),
      ), */
    );
  }
}
