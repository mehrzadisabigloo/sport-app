import 'package:flutter/material.dart';


class LineUpList extends StatefulWidget {
  const LineUpList({super.key});

  @override
  State<LineUpList> createState() => _LineUpListState();
}

class _LineUpListState extends State<LineUpList> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(
        itemCount: 5,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 5),
              padding: const EdgeInsets.symmetric(horizontal: 20),
              width: double.infinity,
              height: 60,
              decoration: BoxDecoration(
                  color: Colors.blue.shade900,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Text(index.toString()),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    color: Colors.black,
                    height: double.infinity,
                    width: 2,
                  )
                ],
              ),
            );
          },
      ),
    );
  }
}
