import 'package:flutter/material.dart';

class ItemCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: 3,
      itemBuilder: (BuildContext context, int index) {
        return Row(
          children: [
            Container(
              margin: EdgeInsets.only(left: 20, top: 15),
              child: Image.asset('images/image3.png'),
            ),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Intrinsic aims to make industrial robots...",
                      style:
                          TextStyle(fontSize: 17, fontWeight: FontWeight.w700),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Text(
                      "Alphabet Inc | 2h ago",
                      style: TextStyle(
                          fontSize: 16,
                          color: Color(0x000002).withOpacity(.4)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        );
      },
    );
  }
}
