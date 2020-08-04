import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(  
      backgroundColor: Colors.white,
      body: Container(
        height: height,
        width: width,
        child: Stack(
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromRGBO(0, 32, 50, 1),
                    Color.fromRGBO(0, 64, 96, 1),
                  ],
                  stops: [0.0, 1.0],
                  begin: const FractionalOffset(0.5, 0.0),
                  end: const FractionalOffset(0.0, 0.0),
                ),
              ),
              height: MediaQuery.of(context).size.height * 0.25,
              child: Center(
                  child: Container(
                width: 130,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage('assets/logo.png'),
                )),
              )),
            ),
            Positioned(
              top: 150,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 170,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 247, 251, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: <Widget>[
                        Container(
                          child: Column(
                            children: <Widget>[
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 20, left: 10),
                                    child: Row(
                                      children: <Widget>[
                                        CircleAvatar(
                                          radius: 25,
                                          child: Text('RA',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 12)),
                                          backgroundColor:
                                              Color.fromRGBO(210, 213, 226, 1),
                                        ),
                                        SizedBox(width: 10),
                                        Column(
                                          children: <Widget>[
                                            Container(
                                              margin: EdgeInsets.only(bottom: 7),
                                              child: Text('Operador',
                                                  style: TextStyle(fontSize: 15, color: Color(0xFFB9B9C5))),
                                            ),
                                            Text('112222',  style: TextStyle(fontSize: 15, color: Color(0xFFB9B9C5)))
                                          ],
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        right: 10),
                                    child: Container(
                                      height: 30,
                                      width: 90,
                                      decoration: BoxDecoration(
                                        border: Border.all(
                                           color: Colors.grey[200]
                                        ),
                                        borderRadius: BorderRadius.circular(5)
                                        ),
                                      child: InkWell(
                                        onTap: (){},
                                        child: 
                                           Center(child: Text('TROCAR', style: TextStyle(fontSize: 10, color: Colors.grey[700], fontWeight: FontWeight.bold)))
                                      )
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 40),
                              InkWell(
                                onTap: () {},
                                child: Center(
                                  child: Container(
                                    height: 50,
                                    width: width * 0.55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      gradient: LinearGradient(
                                        colors: [
                                          Color.fromRGBO(0, 32, 50, 1),
                                          Color.fromRGBO(0, 64, 96, 1),
                                        ],
                                        stops: [0.0, 1.0],
                                        begin: const FractionalOffset(0.5, 0.0),
                                        end: const FractionalOffset(0.0, 0.0),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        'ENTRAR',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontWeight: FontWeight.bold),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 340,
              width: width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: MediaQuery.of(context).size.width * 0.9,
                    decoration: BoxDecoration(
                      color: Color.fromRGBO(246, 247, 251, 1),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Container(
                            width: 130,
                            decoration: BoxDecoration(
                              image: DecorationImage(
                                image: AssetImage('assets/isafe.png'),
                              ),
                            ),
                          ),
                          Column(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.only(bottom: 10),
                                height: 50,
                                width: 50,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(6.0),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: <Widget>[
                                    _littleDot(),
                                    _littleDot(),
                                    _littleDot(),
                                    _littleDot(),
                                  ],),
                                ),
                              ),
                              Text('Gerar', style: TextStyle(color: Color(0xFF8b8b93), fontSize: 12))
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: 600,
              left: 50,
              right: 50,
              child: Column(children: <Widget>[
                Text('Em caso de dúvidas entre em contato', style: TextStyle(fontSize: 12, color: Color(0xFFC0C4CA), fontWeight: FontWeight.bold)),
                SizedBox(height: 2),
                Text('Capitais e região metropolitana 3003-4070', style: TextStyle(fontSize: 12, color: Color(0xFFC0C4CA))),
                SizedBox(height: 2),
                Text('Demais localidade: 0800 940 0007', style: TextStyle(fontSize: 12, color: Color(0xFFC0C4CA))),
              ],),
            ),
          ],
        ),

      ),
    );
  }
}


 Widget _littleDot() {
    return Container(
      width: 6,
      height: 6,
      decoration: BoxDecoration(
        border: Border.all(
          color: Color(0XFFFE6829),
          width: 2,
        ),
        borderRadius: BorderRadius.circular(100),
      ),
    );
  }