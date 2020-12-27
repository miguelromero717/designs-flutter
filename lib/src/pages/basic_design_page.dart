import 'package:flutter/material.dart';

class BasicDesignPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
      child: Column(
        children: <Widget>[
          _createImage(context),
          _homeButton(context),
          _createTitle(),
          SizedBox(height: 20.0,),
          _createActions(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
          _createText(),
        ],
      ),
    ));
  }

  Widget _createImage(BuildContext context) {
    return Container(
      width: double.infinity,
      child: GestureDetector(
        onTap: () => Navigator.pushNamed(context, 'scroll'),
        child: Image(
          image: NetworkImage(
              'https://images.pexels.com/photos/4275885/pexels-photo-4275885.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260'),
          height: 260.0,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Widget _createTitle() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.0, vertical: 20.0),
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Paisaje',
                    style: TextStyle(
                      fontSize: 20.0, 
                      fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(height: 3.0),
                  Text(
                    'Montañas del paisaje',
                    style: TextStyle(fontSize: 16.0),
                  )
                ],
          )),
          Icon(Icons.star, color: Colors.red),
          Text('5.0')
        ],
      ),
    );
  }

  Widget _createActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        _createAction(Icons.call, 'CALL'),
        _createAction(Icons.near_me, 'ROUTE'),
        _createAction(Icons.share, 'SHARE'),
      ],
    );
  }

  Widget _createAction(IconData icon, String text) {
    return Column(
      children: <Widget>[
        Icon(icon, color: Colors.blue,),
        SizedBox(height: 10.0,),
        Text(text, style: TextStyle(color: Colors.blue),)
      ],
    );
  }

  Widget _createText() {
    return SafeArea(
      child: Container(
        padding: EdgeInsets.symmetric( horizontal: 30.0 ),
        child: Text(
          'Sit minim aliqua minim laborum duis occaecat consectetur aliquip id ad deserunt. Adipisicing qui reprehenderit eu eu qui occaecat exercitation et aliqua laboris dolor. Nisi duis consectetur veniam id nulla deserunt aliqua velit ullamco. Deserunt exercitation adipisicing nostrud amet eu.',
          textAlign: TextAlign.justify,
        ),
      ),
    );
  }

  Widget _homeButton(BuildContext context) {
    return Container(
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10.0,),
            FloatingActionButton(
              tooltip: 'Home',
              child: Icon(Icons.home),
              onPressed: () {
                Navigator.pushNamed(context, '/');
              }
            ),
          ],
        ),
      ),
    );
  }
}
