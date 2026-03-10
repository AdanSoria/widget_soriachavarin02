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
    title: 'Botones',
    subtitle: 'Varios botones en Flutter',
    link: '/buttons',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Tarjetas',
    subtitle: 'Un contenedor estilizado',
    link: '/cards',
    icon: Icons.credit_card,
  ),
  MenuItems(
    title: 'Progress Indicators',
    subtitle: 'Generales y controlados',
    link: '/progress',
    icon: Icons.refresh_rounded,
  ),
  MenuItems(
    title: 'snackbar',
    subtitle: 'G',
    link: '/snackbar',
    icon: Icons.smart_button_outlined,
  ),
  MenuItems(
    title: 'Animation',
    subtitle: 'Animaciones generales',
    link: '/animated',
    icon: Icons.animation,
  ),
  MenuItems(
    title: 'Tutorial',
    subtitle: 'Tutorial de Scroll infinito',
    link: '/app_tutorial',
    icon: Icons.score_sharp,
  ),
  MenuItems(
    title: 'UI Controls',
    subtitle: 'Controles UI',
    link: '/ui_controls',
    icon: Icons.settings,
  ),

  MenuItems(
    title: 'HOME',
    subtitle: 'Pagina principal',
    link: '/home',
    icon: Icons.home,
  ),
  MenuItems(
    title: 'Scroll Infinited',
    subtitle: 'Scroll infinito',
    link: '/infinite_scroll',
    icon: Icons.settings,
  ),
];
