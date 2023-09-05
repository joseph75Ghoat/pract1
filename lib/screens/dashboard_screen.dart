import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bienvenidos :)'),
      ),
      drawer: createDrawer(),
    );
  }

  Widget createDrawer() {
    return Drawer(
      child: ListView(
        children: [
          const UserAccountsDrawerHeader(
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage('https://i.pravatar.cc/300'),
              ),
              accountName: Text('Jose Israel Colesio Maldonado'),
              accountEmail: Text('maldonad@gmail.com')),
          ListTile(
            /* leading: Image.network(
                'https://png.pngtree.com/png-vector/20191009/ourlarge/pngtree-group-icon-png-image_1796653.jpg'), */ //
            leading: Image.asset('assets/windo.png'),

            trailing: const Icon(Icons.chevron_right),
            title: Text('App'),
            subtitle: const Text('Carrusel'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}


