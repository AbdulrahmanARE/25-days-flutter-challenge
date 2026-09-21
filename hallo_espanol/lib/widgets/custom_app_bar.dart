import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black87,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        spacing: 20,
        children: [
          Image.asset('assets/app_logo/spain.png', width:40 ),
          Text('Hallo Español', style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold,),),
          Image.asset('assets/app_logo/spain.png', width:40 ),
        ],
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
