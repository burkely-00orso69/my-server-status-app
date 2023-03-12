import 'package:flutter/material.dart';

import 'package:my_server_status/screens/home/home.dart';
import 'package:my_server_status/screens/settings/settings.dart';
import 'package:my_server_status/screens/connect/connect.dart';

import 'package:my_server_status/models/app_screen.dart';

List<AppScreen> screensSelectServer = [
  const AppScreen(
    name: "connect", 
    icon: Icons.link_rounded, 
    body: ConnectScreen(),
  ),
  const AppScreen(
    name: "settings", 
    icon: Icons.settings_rounded,
    body: SettingsScreen()
  )
];

List<AppScreen> screensServerConnected = [
  const AppScreen(
    name: "home", 
    icon: Icons.home_rounded, 
    body: HomeScreen(),
  ),
  const AppScreen(
    name: "settings", 
    icon: Icons.settings_rounded,
    body: SettingsScreen()
  )
];