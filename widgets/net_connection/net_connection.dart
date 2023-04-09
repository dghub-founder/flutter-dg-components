import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

class NetConnection extends StatefulWidget {
  final Widget child;
  const NetConnection({required this.child, Key? key}) : super(key: key);

  @override
  State<NetConnection> createState() => _NetConnectionState();
}

class _NetConnectionState extends State<NetConnection> {
  bool isConnected = true;

  @override
  void initState() {
    Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) async {
      if (await InternetConnectionChecker().hasConnection) {
        setState(() {
          isConnected = true;
        });
      } else {
        setState(() {
          isConnected = false;
        });
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          AnimatedContainer(
            color: isConnected ? Colors.green : Colors.red,
            padding: isConnected ? null : const EdgeInsets.all(8.0),
            duration: Duration(seconds: 2),
            child: isConnected
                ? null
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(isConnected ? Icons.wifi : Icons.wifi_off,
                          color: Colors.white),
                      SizedBox(width: 5),
                      Text(
                        isConnected ? 'Connected' : 'Disconnected',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
          ),
          widget.child
        ],
      ),
    );
  }
}
