import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Web Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
        useMaterial3: true,
      ),
      home: const WelcomePage(),
    );
  }
}

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  int _taps = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF1A237E), Color(0xFF3949AB), Color(0xFF5C6BC0)],
          ),
        ),
        child: Center(
          child: Card(
            elevation: 8,
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 48, vertical: 40),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('🌕', style: TextStyle(fontSize: 56)),
                  const SizedBox(height: 16),
                  const Text(
                    'Flutter Web Demo',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    'Flutter 3.38.10 · macOS 13 · 链路验证通过',
                    style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
                  ),
                  const SizedBox(height: 32),
                  Text(
                    '$_taps',
                    style: const TextStyle(
                        fontSize: 48,
                        fontWeight: FontWeight.w300,
                        color: Colors.indigo),
                  ),
                  const Text('次点击', style: TextStyle(fontSize: 14)),
                  const SizedBox(height: 24),
                  FilledButton.icon(
                    onPressed: () => setState(() => _taps++),
                    icon: const Icon(Icons.touch_app),
                    label: const Text('点我'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
