import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sesi_check/ui/core/themes/app_colors.dart';
import '../../../routing/routes.dart';

class BottomNavigation extends StatelessWidget {
  const BottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width,
      height: 100,
      margin: EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          BottomItem(selected: true, label: "INÍCIO", icon: Icons.home, route: Routes.home,),
          BottomItem(selected: false,label: "PERFIL", icon: Icons.person, route: Routes.profile,),
          BottomItem(selected: false,label: "NOTIFICAÇÕES", icon: Icons.newspaper, route: Routes.notification,),
          BottomItem(selected: false,label: "HISTÓRICO", icon: Icons.history, route: Routes.history,),
        ],
      ),
    );
  }
}

class BottomItem extends StatelessWidget {
  const BottomItem({
    super.key,
    required this.selected,
    required this.label,
    required this.icon,
    required this.route
  });

  final bool selected;
  final String label;
  final IconData icon;
  final String route;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        context.go(route);
      },
      child: Column(
        children: [
          Container(
            width: 72,
            height: 72,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(40),
              color: selected ? AppColors.bottomSelected : AppColors.bottomUnselected,
              border: BoxBorder.all(
                width: 10,
                color: Colors.white
              ),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  offset: Offset(0, 4),
                  blurRadius: 7
                )
              ]
            ),
            child: Icon(icon, color: Colors.white, size: 28,),
          ),
          SizedBox(height: 10),
          Text(label, style: TextStyle(fontSize: 12, fontWeight: FontWeight.normal, color: AppColors.secundaria),)
        ],
      ),
    );
  }
}