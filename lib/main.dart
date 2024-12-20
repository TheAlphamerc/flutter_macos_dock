import 'package:flutter/material.dart';
import 'package:flutter_macos_dock/mac_os_doc.dart';
import 'package:flutter_macos_dock/placeholder_widget.dart';

/// Entrypoint of the application.
void main() {
  runApp(const MyApp());
}

/// [Widget] building the [MaterialApp].
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.grey[800],
        body: Center(
          child: MacOSDock(
            items: const [
              Icons.person,
              Icons.message,
              Icons.call,
              Icons.camera,
              Icons.photo,
              Icons.music_note,
              Icons.location_on,
            ],
            builder: (icon, scale) {
              return Container(
                constraints: const BoxConstraints(minWidth: 48, minHeight: 48),
                margin: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color:
                      Colors.primaries[icon.hashCode % Colors.primaries.length],
                ),
                child: Center(
                  child: Transform.scale(
                    scale: scale,
                    child: Icon(
                      icon,
                      color: Colors.white,
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
