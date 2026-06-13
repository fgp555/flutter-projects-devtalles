import 'package:flutter/material.dart';

class MenuItems {
  final String title;
  final String subTitle;
  final String link;
  final IconData icon;

  const MenuItems({
    required this.title,
    required this.subTitle,
    required this.link,
    required this.icon,
  });
}

const appMenuItems = <MenuItems>[
  MenuItems(
    title: "Riverpod Counter",
    subTitle: "Introduccion a riverpod",
    link: "/counter-river",
    icon: Icons.list_alt_rounded,
  ),

  MenuItems(
    title: "Buttons",
    subTitle: "Varios botones en flutter",
    link: "/buttons",
    icon: Icons.smart_button_outlined,
  ),

  MenuItems(
    title: "Tarjetas",
    subTitle: "Un contenedor estilizado",
    link: "/cards",
    icon: Icons.credit_card,
  ),

  MenuItems(
    title: "Progress Indicators",
    subTitle: "Generals y controlados",
    link: "/progress",
    icon: Icons.refresh_rounded,
  ),

  MenuItems(
    title: "Snackbars y dialogos",
    subTitle: "Generals y controlados",
    link: "/snackbars",
    icon: Icons.info_outline,
  ),

  MenuItems(
    title: "Animated container",
    subTitle: "Stateful widget animado",
    link: "/animated",
    icon: Icons.check_box_outline_blank_rounded,
  ),

  MenuItems(
    title: "UI Controls + Tiles",
    subTitle: "Una serie de controles",
    link: "/ui-controls",
    icon: Icons.car_rental_outlined,
  ),

  MenuItems(
    title: "Intro to app",
    subTitle: "tutorial de la app",
    link: "/tutorial",
    icon: Icons.accessible_rounded,
  ),

  MenuItems(
    title: "InfiniteScroll y Pull",
    subTitle: "Listas infinitas y pull to refresh",
    link: "/infinite",
    icon: Icons.list_alt_rounded,
  ),

  MenuItems(
    title: "Cambiar tema",
    subTitle: "Cambiar tema de la aplicacion",
    link: "/theme-changer",
    icon: Icons.color_lens_outlined,
  ),
];
