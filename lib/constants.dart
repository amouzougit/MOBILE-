import 'package:flutter/material.dart';

int hexColor(String color) {
  String newColor = '0xff' + color;
  newColor = newColor.replaceAll('#', '');
  int finalColor = int.parse(newColor);
  return finalColor;
}

const String familyFont = 'Sofia';
Color kPrimaryColor = Color(hexColor('#6C63FF'));
//Color kPrimaryColor = Colors.black;
Color kPrimaryLightColor = Color(hexColor('##eeeeee'));
const String version = '1.0.0';
const String conditions =
    "Le choix de la branche dans laquelle vous souhaitez trader ne regarde que vous, cependant nous pouvons nous essayer à quelques conseils. Pour quelqu'un dont la journée est remplie de travail et d'indisponibilités (employés, étudiants,...), il sera préférable de choisir une méthode de swing ou de moyen terme. De cette manière, il n'est pas nécessaire d'être bloqué devant son écran toute la journée, il suffit de regarder ses positions le soir ou le matin. Pour une personne pleinement disponible et ayant la pleine envie de faire du trading full time, nous conseillons le trading intraday voir le scalping. Ainsi vous pouvez trader toute la journée et ne rien attendre. C'est une stratégie très agressive qui consiste à réaliser un trading à haute fréquence sur de petits timeframes, les positions peuvent durer entre quelques secondes et quelques minutes et les objectifs sont vraiment très restreints. L'avantage principal c'est que l'on peut trader sans arrêt toute la journée, par ailleurs la fréquence de trading permet d'avoir des gains réguliers mensuellement. L'inconvénient c'est clairement le spread, il impacte lourdement la stratégie et force le trader à s'adapter à cette perte sèche. C'est un profil de carry trader généralement, ce sont des positions de plusieurs mois. La longue période permet de trader en même temps les différentiels de taux d'intérêts et ainsi augmenter ses gains. Ici, on voit presque un profil d'investisseur action plutôt qu'un profil de trader forex particulier ou amateur. Alors, nous avons vu quel timeframe de référence à préférer selon chacun, maintenant voyons comment en utiliser plusieurs différents. Pour les débutants, il est assez peu conseillé de s'égarer dans une pléthore d'unités de temps. Il est clairement préférable d'utiliser un timeframe de référence sur lequel on trouve nos signaux d'entrées. Et ensuite de regarder d'autres timeframes pour juger à titre indicatif la situation globale Pourquoi donc ? Simplement, vous allez vous embrouiller. Autant deux timeframes pourront corroborer votre avis, qu'ils pourront tout aussi bien le discréditer. Exemple: Vous trader sur EUR/USD en H1, vous observer un signal d'achat avec un rebond sur une moyenne mobile. Ensuite vous regardez en H4 et puis là vous voyez une divergence baissière sur le RSI qui n'apparaissait pas en H1. Alors que faire ? Eh bien, difficile à dire. Ce qui est important c'est de se focaliser sur un timeframe. Vous trouverez toujours le moyen de discréditer votre signal d'entrée par un autre timeframe et donc vous ne traderez jamais. Il peut être intéressant de regarder d'autres unités de temps mais il ne faut pas que ce que vous y voyez influe votre plan de trading. Le mieux au début (et même pour les plus expérimentés) c'est de ne regarder qu'une (ou deux à la limite selon la stratégie) unité de temps. Le concept reste assez évident et il n'est pas nécessaire d'illustrer ceci mais vous pouvez très bien aussi avoir des informations qui confirment vos prévisions, et dans ce cas votre analyse sera d'autant plus valable. Par ailleurs, si vous souhaitez utiliser plusieurs unités de temps simultanément, certaines triades de timeframe s'accordent assez bien, voyez donc ";
