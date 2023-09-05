import 'package:flutter/material.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  State<loginScreen> createState() => loginScreenState();
}

class loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    TextEditingController txtConUser = TextEditingController();
    TextEditingController txtConPass = TextEditingController();

    final txtUser = TextField(
      controller: txtConUser,
      decoration: const InputDecoration(border: OutlineInputBorder()),
    );

    final txtPass = TextField(
      controller: txtConPass,
      decoration: const InputDecoration(border: OutlineInputBorder()),
      obscureText: true,
    );

    final imgLogo = Container(
      width: 100,
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: NetworkImage(
                  'https://w7.pngwing.com/pngs/221/753/png-transparent-kirito-asuna-sinon-sword-art-online-t-shirt-asuna-text-logo-cartoon.png'))),
    );

    final btnEntrar = FloatingActionButton.extended(
        icon: Icon(Icons.login),
        label: Text('Entrar'),
        onPressed: () {
          Navigator.pushNamed(context, '/dash');
        });

    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        decoration: const BoxDecoration(
            image: DecorationImage(
                opacity: 0.8,
                fit: BoxFit.cover,
                image: NetworkImage(
                    'https://i.pinimg.com/originals/0f/5b/c5/0f5bc560123be5bbf0a10a87c9c28537.jpg') //('https://i.pinimg.com/564x/26/e8/c0/26e8c0495b5fd47424ab6605f2a87529.jpg')
                )),
        child: Padding(
          padding: const EdgeInsets.only(bottom: 60.0),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Container(
                height: 200,
                margin: const EdgeInsets.symmetric(horizontal: 30),
                padding: const EdgeInsets.all(30),
                //color: Color.fromARGB(88, 77, 205, 255),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color.fromARGB(88, 77, 205, 255),
                ),
                child: Column(
                  children: [
                    txtUser,
                    const SizedBox(
                      height: 10,
                    ),
                    txtPass
                  ],
                ),
              ),
              imgLogo
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: btnEntrar,
    );
  }
}
