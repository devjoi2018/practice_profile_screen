import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:profile_screen_practice/widgets/media_query_widgets.dart';

class HomePage extends StatefulWidget {
  static final routeName = 'homePage';

  @override
  _HomePageState createState() => new _HomePageState();
}

class _HomePageState extends State<HomePage> {
/**************************
 * COLORES PERSONALIZADOS *
 **************************/
  final Color _backGroundColor = Color(0xffE6EAEC);
  final Color _darkBlueTextColor = Color(0xff000755);
  final Color _greyTextColor = Color(0xffA2ADC6);
  final Color _blueColor = Color(0xff5563FF);

  /// Variable que almacena la seleccion del BottonNavBar
  int _index = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: _backGroundColor,
      body: _bodyHomePage(context),
    );
  }

  /// Este metodo contiene el cuerpo principal de esta pantalla.
  Widget _bodyHomePage(BuildContext context) {
    return Stack(
      children: <Widget>[
        SingleChildScrollView(
          child: Column(
            children: <Widget>[
              _profileContainer(context),
              SizedBox(
                height: mediaQueryHeight(context) * 0.010,
              ),
              _restaurantContainer(context),
            ],
          ),
        ),
        _bottonNavbar(context),
        _floatingActionBottom(context),
      ],
    );
  }

  /// Este metodo muestra un container con el perfil de usuario.
  Widget _profileContainer(BuildContext context) {
    /// Estilo de texto para la cantidad de seguidores, seguidos y reviews.
    final TextStyle _numbersTextStyle = TextStyle(
      fontSize: mediaQueryHeight(context) * 0.030,
      fontFamily: 'Josefin Sans',
      color: _blueColor,
    );

    /// Estilo de texto para los textos reviews, fallowers y fallowing.
    final TextStyle _greyTextStyle = TextStyle(
      fontSize: mediaQueryHeight(context) * 0.021,
      fontFamily: 'Josefin Sans',
      color: _greyTextColor,
    );

    return Container(
      padding: EdgeInsets.only(
        left: mediaQueryHeight(context) * 0.016,
        right: mediaQueryHeight(context) * 0.016,
      ),
      height: mediaQueryHeight(context) * 0.70,
      width: mediaQueryWidth(context),
      color: Colors.white,
      child: SafeArea(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: mediaQueryHeight(context) * 0.045,
            ),
            // Titulo principal.
            Text(
              'My Profile',
              style: TextStyle(
                fontSize: mediaQueryHeight(context) * 0.035,
                fontFamily: 'Josefin Sans',
              ),
            ),
            SizedBox(
              height: mediaQueryHeight(context) * 0.060,
            ),
            // Foto de perfil.
            CircleAvatar(
              backgroundImage: NetworkImage('https://bit.ly/30ciBzq'),
              radius: mediaQueryHeight(context) * 0.080,
            ),
            SizedBox(
              height: mediaQueryHeight(context) * 0.040,
            ),
            // Nombre.
            Text(
              'John Williams',
              style: TextStyle(
                fontSize: mediaQueryHeight(context) * 0.035,
                fontFamily: 'Josefin Sans',
                color: _darkBlueTextColor,
              ),
            ),
            SizedBox(
              height: mediaQueryHeight(context) * 0.010,
            ),
            // Correo electronico.
            Text(
              'john.williams@gmail.com',
              style: TextStyle(
                fontSize: mediaQueryHeight(context) * 0.021,
                color: _greyTextColor,
              ),
            ),
            SizedBox(
              height: mediaQueryHeight(context) * 0.050,
            ),
            // Numero de reviews, seguidores y a los que sigue.
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  // Reviews
                  Column(
                    children: <Widget>[
                      Text(
                        '250',
                        style: _numbersTextStyle,
                      ),
                      Text(
                        'Reviews',
                        style: _greyTextStyle,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2.0,
                    width: 5.0,
                  ),
                  // Seguidores
                  Column(
                    children: <Widget>[
                      Text(
                        '100k',
                        style: _numbersTextStyle,
                      ),
                      Text(
                        'Fallowers',
                        style: _greyTextStyle,
                      ),
                    ],
                  ),
                  VerticalDivider(
                    thickness: 2.0,
                    width: 5.0,
                  ),
                  // Seguidos
                  Column(
                    children: <Widget>[
                      Text(
                        '30',
                        style: _numbersTextStyle,
                      ),
                      Text(
                        'Fallowing',
                        style: _greyTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: mediaQueryHeight(context) * 0.050,
            ),
            // Botones de edicion y configuracion del perfil.
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                // Boton, edit profile.
                FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    height: mediaQueryHeight(context) * 0.070,
                    width: mediaQueryWidth(context) * 0.40,
                    decoration: BoxDecoration(
                      color: _blueColor,
                      borderRadius: BorderRadius.circular(
                        mediaQueryHeight(context) * 0.010,
                      ),
                    ),
                    child: Text(
                      'Edit Profile',
                      style: TextStyle(
                        fontSize: mediaQueryHeight(context) * 0.025,
                        fontFamily: 'Josefin Sans',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  onPressed: () {
                    print('Perfil Editado');
                  },
                ),
                // Boton, settings.
                FlatButton(
                  highlightColor: Colors.transparent,
                  splashColor: Colors.transparent,
                  child: Container(
                    alignment: Alignment.center,
                    height: mediaQueryHeight(context) * 0.070,
                    width: mediaQueryWidth(context) * 0.40,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.grey,
                        width: mediaQueryHeight(context) * 0.002,
                      ),
                      borderRadius: BorderRadius.circular(
                        mediaQueryHeight(context) * 0.010,
                      ),
                    ),
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: mediaQueryHeight(context) * 0.025,
                        fontFamily: 'Josefin Sans',
                        color: _greyTextColor,
                      ),
                    ),
                  ),
                  onPressed: () {
                    print('Configuracion');
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  /// Este metodo muestra un container con los restaurantes publicados por el usuario.
  Widget _restaurantContainer(BuildContext context) {
    // Colores para el gradiente decorativo.
    final Color _pinkGradient1 = Color(0xffFAAD90);
    final Color _pinkGradient2 = Color(0xffFE91A3);

    return Padding(
      padding: EdgeInsets.only(
        bottom: mediaQueryHeight(context) * 0.070,
      ),
      child: Container(
        padding: EdgeInsets.all(
          mediaQueryHeight(context) * 0.030,
        ),
        height: mediaQueryHeight(context) * 0.50,
        width: mediaQueryWidth(context),
        color: Colors.white,
        child: Material(
          color: Colors.transparent,
          elevation: mediaQueryHeight(context) * 0.020,
          borderRadius: BorderRadius.circular(
            mediaQueryHeight(context) * 0.020,
          ),
          child: Container(
            height: mediaQueryHeight(context),
            width: mediaQueryWidth(context),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(
                mediaQueryHeight(context) * 0.020,
              ),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(
                mediaQueryHeight(context) * 0.020,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  // Imagen de fondo.
                  Container(
                    height: mediaQueryHeight(context) * 0.33,
                    child: Stack(
                      fit: StackFit.expand,
                      children: <Widget>[
                        Image.network(
                          'https://bit.ly/3hPVeRW',
                          fit: BoxFit.cover,
                        ),
                        Positioned(
                          top: mediaQueryHeight(context) * 0.020,
                          right: mediaQueryHeight(context) * 0.020,
                          child: Container(
                            alignment: Alignment.center,
                            height: mediaQueryHeight(context) * 0.040,
                            width: mediaQueryWidth(context) * 0.15,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(
                                mediaQueryHeight(context) * 0.010,
                              ),
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  size: mediaQueryHeight(context) * 0.025,
                                  color: Colors.yellow,
                                ),
                                // Puntaje en estrellas.
                                Text(
                                  '4.2',
                                  style: TextStyle(
                                    fontSize: mediaQueryHeight(context) * 0.020,
                                    fontFamily: 'Josefin Sans',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: mediaQueryHeight(context) * 0.016,
                      right: mediaQueryHeight(context) * 0.016,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Gramercy Tavern',
                          style: TextStyle(
                            fontSize: mediaQueryHeight(context) * 0.030,
                            fontFamily: 'Josefin Sans',
                          ),
                        ),
                        // Etiqueta de tipo de comida del restaurant.
                        Container(
                          alignment: Alignment.center,
                          height: mediaQueryHeight(context) * 0.030,
                          width: mediaQueryWidth(context) * 0.15,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              colors: [
                                _pinkGradient1,
                                _pinkGradient2,
                              ],
                            ),
                            borderRadius: BorderRadius.circular(
                              mediaQueryHeight(context) * 0.015,
                            ),
                          ),
                          child: Text(
                            'Italian',
                            style: TextStyle(
                              fontSize: mediaQueryHeight(context) * 0.018,
                              fontFamily: 'Josefin Sans',
                              color: Colors.white,
                            ),
                          ),
                        ),
                        // Circle avatars superpuestos.
                        Container(
                          height: mediaQueryHeight(context) * 0.040,
                          width: mediaQueryWidth(context) * 0.15,
                          child: Stack(
                            alignment: Alignment.center,
                            fit: StackFit.expand,
                            children: <Widget>[
                              Positioned(
                                right: mediaQueryHeight(context) * 0.002,
                                child: CircleAvatar(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        mediaQueryHeight(context) * 1.0,
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width:
                                            mediaQueryHeight(context) * 0.002,
                                      ),
                                    ),
                                  ),
                                  backgroundImage:
                                      NetworkImage('https://bit.ly/2EupB1T'),
                                  radius: mediaQueryHeight(context) * 0.016,
                                  backgroundColor: Colors.blue,
                                ),
                              ),
                              Positioned(
                                right: mediaQueryHeight(context) * 0.015,
                                child: CircleAvatar(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        mediaQueryHeight(context) * 1.0,
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width:
                                            mediaQueryHeight(context) * 0.002,
                                      ),
                                    ),
                                  ),
                                  backgroundImage:
                                      NetworkImage('https://bit.ly/2X6hIGz'),
                                  radius: mediaQueryHeight(context) * 0.016,
                                  backgroundColor: Colors.yellow,
                                ),
                              ),
                              Positioned(
                                right: mediaQueryHeight(context) * 0.028,
                                child: CircleAvatar(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        mediaQueryHeight(context) * 1.0,
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width:
                                            mediaQueryHeight(context) * 0.002,
                                      ),
                                    ),
                                  ),
                                  backgroundImage:
                                      NetworkImage('https://bit.ly/2CTFXkw'),
                                  radius: mediaQueryHeight(context) * 0.016,
                                  backgroundColor: Colors.green,
                                ),
                              ),
                              Positioned(
                                right: mediaQueryHeight(context) * 0.042,
                                child: CircleAvatar(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(
                                        mediaQueryHeight(context) * 1.0,
                                      ),
                                      border: Border.all(
                                        color: Colors.white,
                                        width:
                                            mediaQueryHeight(context) * 0.002,
                                      ),
                                    ),
                                  ),
                                  backgroundImage:
                                      NetworkImage('https://bit.ly/3jOZ9QZ'),
                                  radius: mediaQueryHeight(context) * 0.016,
                                  backgroundColor: Colors.red,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Icon(
                          Icons.more_vert,
                          size: mediaQueryHeight(context) * 0.025,
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(
                      left: mediaQueryHeight(context) * 0.016,
                      right: mediaQueryHeight(context) * 0.016,
                    ),
                    child: Text(
                      '42 E 20th St New York 23 USA',
                      style: TextStyle(
                        fontSize: mediaQueryHeight(context) * 0.025,
                        fontFamily: 'Josefin Sans',
                        color: _greyTextColor,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: mediaQueryHeight(context) * 0.020,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Metodo que establece un BottonNavBar personalizado.
  Widget _bottonNavbar(BuildContext context) {
    return Positioned(
      bottom: 0.0,
      child: Container(
        height: mediaQueryHeight(context) * 0.070,
        width: mediaQueryWidth(context),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              mediaQueryHeight(context) * 0.030,
            ),
            topRight: Radius.circular(
              mediaQueryHeight(context) * 0.030,
            ),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.houseUser,
                size: mediaQueryHeight(context) * 0.025,
                color: _index == 0 ? _blueColor : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _index = 0;
                });
              },
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.tag,
                size: mediaQueryHeight(context) * 0.025,
                color: _index == 1 ? _blueColor : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _index = 1;
                });
              },
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.solidBell,
                size: mediaQueryHeight(context) * 0.025,
                color: _index == 2 ? _blueColor : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _index = 2;
                });
              },
            ),
            IconButton(
              icon: FaIcon(
                FontAwesomeIcons.solidUser,
                size: mediaQueryHeight(context) * 0.025,
                color: _index == 3 ? _blueColor : Colors.grey,
              ),
              onPressed: () {
                setState(() {
                  _index = 3;
                });
              },
            ),
          ],
        ),
      ),
    );
  }

  /// Metodo que construye el floating action bottom.
  Widget _floatingActionBottom(BuildContext context) {
    return Positioned(
      bottom: mediaQueryHeight(context) * 0.035,
      right: mediaQueryWidth(context) * 0.45,
      child: Material(
        elevation: mediaQueryHeight(context) * 0.010,
        shadowColor: _blueColor,
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(mediaQueryHeight(context) * 1.0),
        child: Container(
          height: mediaQueryHeight(context) * 0.060,
          width: mediaQueryHeight(context) * 0.060,
          decoration: BoxDecoration(
            color: _blueColor,
            borderRadius:
                BorderRadius.circular(mediaQueryHeight(context) * 1.0),
          ),
          child: Icon(
            Icons.add,
            size: mediaQueryHeight(context) * 0.040,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
