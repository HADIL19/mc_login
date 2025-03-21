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
      body: Stack(
        children: [
          Positioned(
            top: 20,
            right: 20,
            child: FloatingActionButton(
            onPressed: () {
             themeProvider.toggleTheme();
              },
               backgroundColor: isDarkMode ? Colors.black : Colors.white,
               foregroundColor: isDarkMode ? Colors.white : Colors.black,
              child: Icon(isDarkMode ? Icons.light_mode : Icons.dark_mode),
)
          ),
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(height: 180),
                SizedBox(
                  width: 120,
                  height: 120,
                  child: SvgPicture.asset(
                    isDarkMode ? 'assets/mc_black.svg' : 'assets/microclub_logo.svg',
                  ),
                ),
                const SizedBox(height: 20),
                const Text(
                  'Micro Club',
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                ElevatedButton.icon(
                  onPressed: () {},
                  icon: const Icon(Icons.discord, color: Colors.black),
                  label: const Text(
                    'Discord',
                    style: TextStyle(color: Colors.black),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(horizontal: 100, vertical: 5),
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
                const Spacer(flex: 1),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: isDarkMode ? Colors.black : Colors.white,
    );
  }
}
