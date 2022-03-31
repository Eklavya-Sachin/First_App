// ignore_for_file: file_names
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: const [
          UserAccountsDrawerHeader(
            accountName: Text("Eklavya Sachin"),
            accountEmail: Text("ojaz07860@gmail.com"),
            currentAccountPicture: CircleAvatar(
              backgroundImage: NetworkImage(
                  "https://scontent.fdel24-1.fna.fbcdn.net/v/t39.30808-6/246157451_1203012603527972_2221714166710547354_n.jpg?_nc_cat=109&ccb=1-5&_nc_sid=09cbfe&_nc_ohc=AcWOjy66ERUAX9ddWly&_nc_ht=scontent.fdel24-1.fna&oh=00_AT9kqNT1V1piAniLdgd362nWAwDMesJcqIlNnjXLTK49UQ&oe=6247FD32"),
            ),
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text("Account"),
            subtitle: Text("Eklavya Sachin"),
            trailing: Icon(Icons.edit),
          ),
          ListTile(
            leading: Icon(Icons.email),
            title: Text("email"),
            subtitle: Text("ojaz07860@gmail.com"),
            trailing: Icon(Icons.edit),
          )
        ],
      ),
    );
  }
}
