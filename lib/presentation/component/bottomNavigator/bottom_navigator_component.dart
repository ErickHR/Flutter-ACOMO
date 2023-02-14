import 'package:app_acomo/utils/color_utils.dart';
import 'package:app_acomo/utils/icons_utils.dart';
import 'package:flutter/material.dart';

class BottomNavigatorComponent extends StatefulWidget {
  const BottomNavigatorComponent({super.key});

  @override
  State<BottomNavigatorComponent> createState() =>
      _BottomNavigatorComponentState();
}

class _BottomNavigatorComponentState extends State<BottomNavigatorComponent> {
  int selectionBottom = 0;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 20.0,
      items: <BottomNavigationBarItem>[
        bottomNavigatorBarItem(name: 'history', label: 'Historial'),
        bottomNavigatorBarItem(name: 'claim', label: 'Reclamo'),
        bottomNavigatorBarItem(name: 'credit_card', label: 'Cuentas Bancarias'),
        bottomNavigatorBarItem(name: 'user', label: 'Perfil'),
      ],
      currentIndex: selectionBottom,
      selectedItemColor: black,
      onTap: (index) {
        setState(() {
          selectionBottom = index;
        });
      },
    );
  }

  BottomNavigationBarItem bottomNavigatorBarItem({
    required String name,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Icon(
        iconUtils[name],
        color: black,
      ),
      label: label,
    );
  }
}
