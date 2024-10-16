import 'package:flutter/material.dart';

class CardData{
  final String balance;
  final String date;
  final String number;
  final Color color;
  final String image;
  // final Size size;

  CardData({required this.balance, required this.date, required this.number, required this.color,required this.image});
}

List<CardData> cards = [
  CardData(
    balance: '17,944.20',
    date: '12/26',
    number:'499.60(1.20%)',
    color: Colors.blue,
    image: "assets/mastercard.png",

  ),
  CardData(
      balance: '41,131.75',
      date: '01/23',
      number:'499.60(1.20%)',
      color: Colors.red,
      image: "assets/mastercard.png"

  ),
  CardData(
      balance: '18,434.10',
      date: '07/24',
      number:'153.70(0.83%)',
      color: Colors.green,
      image: "assets/mastercard.png"

  )
];

class LastInvestmentData{
  final int value;
  final String name;
  LastInvestmentData({required this.value,required this.name});
}

List<LastInvestmentData> lastInvestment=[
  LastInvestmentData(value: 174 ,name: "NTPC,174.25"),
  LastInvestmentData(value: 4527 , name: "Britannia, 4,527.85"),
  LastInvestmentData(value: 2446, name: "Reliance,2,446.80")
];

class LasttInvestmentData{
  final int value;
  final String name;
  LasttInvestmentData({required this.value,required this.name});
}

List<LastInvestmentData> lasttInvestment=[
  LastInvestmentData(value: 174 ,name: "NTPC,174.25"),
  LastInvestmentData(value: 4527 , name: "Britannia, 4,527.85"),
  LastInvestmentData(value: 2446, name: "Reliance,2,446.80")
];

class Recommended{
  final String name;
  final String subtitle;
  final String icon;
  final String value;
  Recommended({required this.name, required this.subtitle, required this.icon, required this.value});
}

List<Recommended> recommendedList=[
  Recommended(name: "Netflix, Inc. ao",subtitle: "324.12, DVD",value: "+5.81(1.76%)",icon: "assets/netflix.jpg"),
  Recommended(name: "Ozon, Inc. ao",subtitle: "11.6",value: "+0.41(5.00%)",icon: "assets/ozon.jpg"),
  Recommended(name: "Tesla, Inc. ao",subtitle: "161.83",value: "-2.48(-1.51%)",icon: "assets/tesla.jpg"),
];
