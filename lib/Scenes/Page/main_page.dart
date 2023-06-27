import 'package:flutter/material.dart';

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.black,
          unselectedItemColor: Colors.red,
          items: const [
              BottomNavigationBarItem(
                label: 'Home',
                icon: Icon(Icons.home, color: Colors.black)
              ),
              BottomNavigationBarItem(
                label: 'Settings',
                icon: Icon(Icons.calendar_month, color: Colors.black)
              ),
              BottomNavigationBarItem(
                label: 'Create',
                icon: Icon(Icons.create, color: Colors.black)
              )
              // BottomNavigationBarItem(
              //   label: 'Love', 
              //   icon: Icon(Icons.favorite, color: Colors.black)
              // )
          ],
        ),
      body: Container(
        alignment: Alignment.center,
        child: Text('Jordy Pinix Kecil Kontolnya'),
      ),
    );
  }
}
