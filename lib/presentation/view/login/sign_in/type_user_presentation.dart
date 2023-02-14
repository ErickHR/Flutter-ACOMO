import 'package:app_acomo/utils/color_utils.dart';
import 'package:flutter/material.dart';

import 'package:app_acomo/domain/var_global/var_global.dart';

class TypeUserPresentation extends StatefulWidget {
  final dynamic selectUserCallBack;

  const TypeUserPresentation({super.key, required this.selectUserCallBack});

  @override
  State<TypeUserPresentation> createState() => _TypeUserPresentationState();
}

class _TypeUserPresentationState extends State<TypeUserPresentation> {
  
  String selectUser = typeUserDefault;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 18.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          typeUser('Persona Natural', 'P'),
          typeUser('Empresa', 'E'),
        ],
      ),
    );
  }

  Widget typeUser(name, valueUser) {
    return GestureDetector(
      child: Container(
        decoration: BoxDecoration(
          color: green.withOpacity(valueUser == selectUser ? 1.0 : .6),
          borderRadius: const BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        width: 150.0,
        height: 40.0,
        alignment: Alignment.center,
        child: Text(
          name,
          style: TextStyle(
            color: black.withOpacity(valueUser == selectUser ? 1.0 : .6),
            fontWeight: FontWeight.w600,
          ),
        ),
      ),
      onTap: () {
        setState(() {
          selectUser = valueUser;
        });
        widget.selectUserCallBack(valueUser);
      },
    );
  }
}
