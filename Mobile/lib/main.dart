import 'package:flutter/material.dart';
import 'presentation/pages/app_shell.dart';
import 'core/theme/app_theme.dart';

void main() => runApp(const UpbApp());

class UpbApp extends StatelessWidget {
  const UpbApp({super.key});
  @override
  Widget build(BuildContext context) => MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'UPB-CIENTÍFICA',
    theme: AppTheme.light(),
    home: const AppShell(),
  );
}
