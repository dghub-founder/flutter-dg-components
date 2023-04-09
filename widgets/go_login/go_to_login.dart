import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:user_app/dg-components/constants/extensions.dart';

class GoToLogin extends StatelessWidget {
  final double width;
  final double height;
  final Function onClick;
  const GoToLogin(
      {required this.onClick, this.width = 200, this.height = 200, Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Lottie.asset('assets/lotties/login.json',
              fit: BoxFit.fill, repeat: true, width: width, height: height),
          Text(
            context.l().account_login,
            style: TextStyle(fontSize: 15),
          ),
          Text(
            context.l().please_login_your_account,
            style: TextStyle(color: Colors.grey, fontSize: 12),
          ),
          const SizedBox(
            height: 30,
          ),
          ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                primary: theme.primaryColor, // background
                onPrimary: Colors.white, // foreground
              ),
              onPressed: () {
                onClick();
              },
              child: Text(context.l().login)),
        ],
      ),
    );
  }
}
