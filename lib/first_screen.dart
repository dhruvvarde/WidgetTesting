
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:widget_testing/SecondScreen.dart';
import 'package:widget_testing/profile.dart';

import 'ThirdScreen.dart';

class TapClass extends StatelessWidget {

  const TapClass({Key? key}) : super(key: key);
  static const  profile =  Key("profile");
  static const  image1 =  Key("image1");
  static const navigateToDetailsButtonKey = Key('navigateToDetails');

  void _navigateToNextScreen(BuildContext context) {
    Navigator.of(context).push(MaterialPageRoute(builder: (context) => ProfileScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            InkWell(
                key: navigateToDetailsButtonKey,
                child: Text("Profile"),
                onTap: (){
                  _navigateToNextScreen(context);

                }),
            InkWell(
                key: profile,
                child: Text("Profile"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => SecondScreen()));
                  // _navigateToNextScreen(context);

                }),
            InkWell(
                key: image1,
                child: Text("Image"),
                onTap: (){
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => ThirdScreen()));
                  // _navigateToNextScreen(context);

                }),
          ],
          // child: InkWell(
          //     key: navigateToDetailsButtonKey,
          //     child: Text("Profile"),
          //     onTap: (){
          //       _navigateToNextScreen(context);
          //
          //     }),
        ),
      ),
    );
  }
}

// class TapClass extends StatefulWidget {
//   final _appNavigatorFactory;
//   TapClass(this._appNavigatorFactory, {Key? key}) : super(key: key);
//
//   // const TapClass({Key? key}) : super(key: key);
//
//   @override
//   State<TapClass> createState() => _TapClassState(_appNavigatorFactory);
// }
//
// class _TapClassState extends State<TapClass> {
//   final _appNavigatorFactory;
//
//   _TapClassState(this._appNavigatorFactory);
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: InkWell(
//             // key: navigateToDetailsButtonKey,
//             child: Text("Profile"),
//             onTap: (){
//               _appNavigatorFactory.get(context).showNextscreen();
//
//             }),
//       ),
//     );
//   }
// }
