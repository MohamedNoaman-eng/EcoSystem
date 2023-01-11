import 'package:flutter/material.dart';


class CounterWidget extends StatelessWidget {
  const CounterWidget({Key? key}) : super(key: key);





  @override
  Widget build(BuildContext context) {


    return Center(
      child: Container(
        decoration: BoxDecoration(
            border:
                Border.all(color: const Color.fromRGBO(151, 151, 151, 1), width: 1.0),
            borderRadius: BorderRadius.circular(10.0)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Expanded(
              child: IconButton(
                  icon: const Icon(
                    Icons.remove,
                    size: 13,
                  ),
                  onPressed: () {

                  }),
            ),
            const Expanded(
              child: Center(
                  child: Text(
                "1",
                style: TextStyle(
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none),
              )),
            ),
            Expanded(
              child: IconButton(
                  icon: const Icon(
                    Icons.add,
                    size: 13,
                  ),
                  onPressed: () {

                  }),
            )
            // GestureDetector(
            //     onTap: () {
            //       // updateCount(1);
            //     },
            //     child: Container(
            //         color: Colors.red,
            //         width: 15.0,
            //         child: Center(
            //             child: Text(
            //           '+',
            //           style: TextStyle(
            //               fontSize: 25.0,
            //               fontWeight: FontWeight.bold,
            //               color: Colors.orange,
            //               decoration: TextDecoration.none),
            //         )))),
          ],
        ),
      ),
    );
  }
}
