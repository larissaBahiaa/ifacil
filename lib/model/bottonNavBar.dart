import 'package:app_ifacil/pallete.dart';
import 'package:flutter/material.dart';

class Bottonnavbar extends StatefulWidget {
  const Bottonnavbar({super.key});

  @override
  State <Bottonnavbar> createState() => _BottonnavbarState();

}

class _BottonnavbarState extends State<Bottonnavbar>{
  int _curret = 0;
  @override
  Widget build(BuildContext context) {
     return BottomNavigationBar(
       backgroundColor: Pallete.greenColor,
       type: BottomNavigationBarType.fixed,
       selectedItemColor: Pallete.blackColor,
       unselectedItemColor: Pallete.backgroundColor,
       currentIndex: _curret,
       onTap: (index){
         setState((){
           _curret = index;
         });
       },
       items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
            label: 'Início'
          ),
         BottomNavigationBarItem(
             icon: Icon(Icons.description_outlined),
           label: 'Questões'
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.groups_outlined),
           label: 'Turmas'
         ),
         BottomNavigationBarItem(
             icon: Icon(Icons.folder_open),
         label: 'Mural',
         )
       ],
     );
  }
}