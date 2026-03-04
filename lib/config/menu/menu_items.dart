import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subtitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subtitle,
    required this.link,
    required this.icon,
  });
}

const menuItems = <MenuItems>[
  MenuItems(
    title: 'botones',
    subtitle: 'Varios Botones de flutter',
    link: '/botones',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Varias Tarjetas en flutter',
    link: '/tarjetas',
    icon: Icons.credit_card_off_outlined,
  ),
];
