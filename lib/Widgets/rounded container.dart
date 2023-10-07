import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RoundedContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90.h,
      width: 150.w,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: const Padding(
        padding: EdgeInsets.only(left: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Save",
            ),
            Text(
              "0.18732",
              style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}

class RoundedContainer2 extends StatefulWidget {
  const RoundedContainer2({super.key});

  @override
  State<RoundedContainer2> createState() => _RoundedContainer2State();
}

class _RoundedContainer2State extends State<RoundedContainer2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(5)),
      height: 60.h,
      width: 310.w,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage:
                  AssetImage('assets/images/BCA_bank-removebg-preview.png'),
            ),
            SizedBox(
              width: 15,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "+35.942 ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text("Earn Bank BCA"),
              ],
            ),
            SizedBox(
              width: 30.w,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                height: 25,
                width: 100,
                child: Center(child: Text("Secured"))),
          ],
        ),
      ),
    );
  }
}

class RoundedContainer3 extends StatefulWidget {
  const RoundedContainer3({super.key});

  @override
  State<RoundedContainer3> createState() => _RoundedContainer3State();
}

class _RoundedContainer3State extends State<RoundedContainer3> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(5)),
      height: 60.h,
      width: 310.w,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage:
                  AssetImage('assets/images/Mandiri-removebg-preview.png'),
            ),
            SizedBox(
              width: 15,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "+576885 ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text("Earn Bank BCA"),
              ],
            ),
            SizedBox(
              width: 30.w,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                height: 25,
                width: 100,
                child: Center(child: Text("Secured"))),
          ],
        ),
      ),
    );
  }
}

class RoundedContainer4 extends StatefulWidget {
  const RoundedContainer4({super.key});

  @override
  State<RoundedContainer4> createState() => _RoundedContainer4State();
}

class _RoundedContainer4State extends State<RoundedContainer4> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(width: 0.1),
          borderRadius: BorderRadius.circular(5)),
      height: 60.h,
      width: 310.w,
      child: Padding(
        padding: EdgeInsets.only(left: 15),
        child: Row(
          children: [
            const CircleAvatar(
              backgroundColor: Colors.transparent,
              backgroundImage:
                  AssetImage('assets/images/BCA_bank-removebg-preview.png'),
            ),
            SizedBox(
              width: 15,
            ),
            const Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "+35.942 ",
                  style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                ),
                Text("Earn Bank BCA"),
              ],
            ),
            SizedBox(
              width: 30.w,
            ),
            Container(
                decoration: BoxDecoration(
                    color: Colors.greenAccent,
                    borderRadius: BorderRadius.circular(10)),
                height: 25,
                width: 100,
                child: Center(child: Text("Secured"))),
          ],
        ),
      ),
    );
  }
}
