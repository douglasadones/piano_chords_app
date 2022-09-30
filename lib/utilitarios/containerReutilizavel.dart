import 'package:flutter/material.dart';

class ContainerReutilizavel extends StatelessWidget {
  const ContainerReutilizavel(
      {super.key, required this.funcao, required this.flex, this.onPress});

  final String funcao;
  final int flex;
  final VoidCallback? onPress;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: flex,
      child: GestureDetector(
        onTap: onPress,
        child: Container(
          margin: const EdgeInsets.all(15),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: const [
              BoxShadow(
                spreadRadius: 2,
                color: Colors.black12,
                blurRadius: 6,
              ),
            ],
            color: Colors.blue[100],
          ),
          child: Center(
            child: Text(
              funcao,
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40),
            ),
          ),
        ),
      ),
    );
  }
}
