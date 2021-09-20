import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
          top: MediaQuery.of(context).padding.top, left: 25, right: 25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome Home',
                style:
                    TextStyle(color: Colors.grey, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 10,
              ),
              Text(
                'Annie Bryant',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
              )
            ],
          ),
          Row(
            children: [
              Container(
                  margin: const EdgeInsets.only(top: 30, right: 10),
                  transform: Matrix4.rotationZ(100),
                  child: Stack(
                    children: [
                      Icon(
                        Icons.notifications_none_outlined,
                        size: 30,
                        color: Colors.grey,
                      ),
                      Positioned(
                        top: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.red,
                            shape: BoxShape.circle,
                          ),
                        ),
                      )
                    ],
                  )),
              const SizedBox(
                width: 20,
              ),
              ClipOval(
                child: Image.asset(
                  'assets/images/avatar.png',
                  width: 40,
                  fit: BoxFit.cover,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
