import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'theme_provider.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    bool isDarkMode = themeProvider.themeMode == ThemeMode.dark;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Login"),
        actions: [
          IconButton(
            icon: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
            onPressed: () {
              themeProvider.toggleTheme();
            },
          ),
          
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min, 
          children: [
            SizedBox(height: 20),
            SvgPicture.asset(
              'assets/microclub_logo.svg',
              width: 120,
            ),
            const SizedBox(height: 20),
            const Text(
              'Micro Club',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
             
              },
              icon: const Icon(Icons.discord, color: Colors.black),
              label: const Text(
                'Discord',
                style: TextStyle(color: Colors.black),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding:
                    const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            const SizedBox(height: 20), // Space between button and text
         
              
              const Text(
                "By signing in, you certify that you're\n an MC member.",
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 15, color: Colors.grey),
              ),
           const Spacer(flex: 1), // 🔹 Increased space at the bottom
          ],
        ),
      ),
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
    );
  }
}
