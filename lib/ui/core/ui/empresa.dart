import 'package:flutter/material.dart';

class Empresa extends StatelessWidget {
  const Empresa({
    super.key,
    required this.nomeEmpresa,
  });

  final String nomeEmpresa;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .6,
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: BoxBorder.all(color: Colors.blue, width: 2),
        borderRadius: BorderRadius.circular(40),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Icon(Icons.business_sharp, color: Colors.blue),
          SizedBox(
            width: size.width * .45,
            child: Text(nomeEmpresa, style: TextStyle(color: Colors.blue)),
          ),
        ],
      ),
    );
  }
}
