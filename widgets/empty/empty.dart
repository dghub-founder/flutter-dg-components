import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/dg-components/constants/extensions.dart';

class Empty extends StatelessWidget {
  final double width;
  final double height;
  const Empty({this.width = 200, this.height = 200, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: AlwaysScrollableScrollPhysics(),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 20,
            ),
            Lottie.asset('assets/lotties/empty.json',
                fit: BoxFit.fill, repeat: true, width: width, height: height),
            Text(
              context.l().no_data_found,
              style: TextStyle(fontSize: 15),
            ),
            Text(
              context.l().this_data_is_empty,
              style: TextStyle(color: Colors.grey, fontSize: 12),
            ),
            SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
