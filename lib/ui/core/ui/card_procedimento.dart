import 'package:flutter/material.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';

class CardProcedimento extends StatelessWidget {
  final String status;
  const CardProcedimento({
    super.key, required this.status,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: Colors.black26,
            offset: Offset(0, 4),
            blurRadius: 4
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(Icons.medication, color: AppColors.secundaria),
              SizedBox(width: 10),
              Text("PROCEDIMENTO", style: TextStyle(fontWeight: FontWeight.w500),),
            ],
          ),
          Row(
            children: [
              Visibility(
                visible: false,
                child: Text(status, style: TextStyle(fontWeight: FontWeight.w500),)),
              Icon(Icons.keyboard_arrow_right, color: AppColors.secundaria,),
            ],
          )
        ],
      ),
    );
  }
}

//to do: trocar por expansion tile