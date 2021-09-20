import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SearchCard extends StatelessWidget {
  const SearchCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25),
      height: 300,
      padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 40),
      width: double.maxFinite,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          image: DecorationImage(
              image: AssetImage('assets/images/search_bg.png'),
              fit: BoxFit.cover)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Fast Search',
            style: TextStyle(color: Colors.white, fontSize: 26),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            'You can search quickly for \n the job you want',
            style: TextStyle(
                height: 1.8, color: Colors.white, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Container(
            padding: const EdgeInsets.all(15),
            child: Row(
              children: [
                Image.asset(
                  'assets/icons/search.png',
                  width: 20,
                ),
                SizedBox(
                  width: 10,
                ),
                Text('Search',
                    style: TextStyle(color: Colors.grey, fontSize: 18))
              ],
            ),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(30)),
          )
        ],
      ),
    );
  }
}
