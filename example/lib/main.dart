import 'package:flutter/material.dart';
import 'package:f_toggle_button/src.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xFFE21221)),
        useMaterial3: true,
        appBarTheme: AppBarTheme(
          backgroundColor: const Color(0xFFE21221),
          scrolledUnderElevation: 0,
          titleTextStyle: Theme.of(context).textTheme.titleLarge,
        ),
      ),
      home: const MyHomePage(title: 'Toggle button'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FToggleButton(
              isEnable: false,
              onChangeStatus: (bool value) {

              },
              bgSwitchLeft: Colors.white,
              bgSwitchRight: Theme.of(context).colorScheme.primary,
              bgDisable: Colors.grey.withOpacity(0.5),
              borderColorEnable: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              borderColorDisEnable: Colors.grey.withOpacity(0.5),
            ),
            const SizedBox(height: 24,),
            FToggleButton(
              isEnable: true,
              onChangeStatus: (bool value) {

              },
              bgSwitchLeft: Colors.white,
              bgSwitchRight: Theme.of(context).colorScheme.primary,
              bgDisable: Colors.grey.withOpacity(0.5),
              borderColorEnable: Theme.of(context).colorScheme.primary.withOpacity(0.5),
              borderColorDisEnable: Colors.grey.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
