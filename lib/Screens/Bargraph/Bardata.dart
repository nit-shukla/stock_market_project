<<<<<<< HEAD
import 'package:flutter/material.dart';


=======
>>>>>>> f4d6e5be3f5b3532dd6d10dfa7ed9f24d52ec2a2
import 'Graph.dart';

class BarData {
  final double januaryAmmount;
  final double FebuaryAmmount;
  final double MarchAmmount;
  final double AprilAmmount;
  final double MayAmmount;
  final double JuneAmmount;
  final double JulayAmmount;
  final double AugustAmmount;
  final double SeptemerAmmount;
  final double OctoberAmmount;
  final double NovemberAmmount;
  final double DecemberAmmount;

  BarData({
    required this.januaryAmmount,
    required this.FebuaryAmmount,
    required this.MarchAmmount,
    required this.AprilAmmount,
    required this.MayAmmount,
    required this.JuneAmmount,
    required this.JulayAmmount,
    required this.AugustAmmount,
    required this.SeptemerAmmount,
    required this.OctoberAmmount,
    required this.NovemberAmmount,
    required this.DecemberAmmount,
  });
  List<IndivisualBar> bardata = [];

  void initializedBarData() {
    bardata = [
      IndivisualBar(x: 0, y: januaryAmmount),
      IndivisualBar(x: 1, y: FebuaryAmmount),
      IndivisualBar(x: 2, y: MarchAmmount),
      IndivisualBar(x: 3, y: AprilAmmount),
      IndivisualBar(x: 4, y: MayAmmount),
      IndivisualBar(x: 5, y: JuneAmmount),
      IndivisualBar(x: 6, y: JulayAmmount),
      IndivisualBar(x: 7, y: AugustAmmount),
      IndivisualBar(x: 8, y: SeptemerAmmount),
      IndivisualBar(x: 9, y: OctoberAmmount),
      IndivisualBar(x: 10, y: NovemberAmmount),
      IndivisualBar(x: 11, y: DecemberAmmount),
    ];
  }
}
