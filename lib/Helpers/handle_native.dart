/*
 *  This file is part of AllInOneMusicPlayer (https://github.com/syedarsalankazmi/AllInOneMusicPlayer).
 * 
 * AllInOneMusicPlayer is free software: you can redistribute it and/or modify
 * it under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation, either version 3 of the License, or
 * (at your option) any later version.
 *
 * AllInOneMusicPlayer is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
 * GNU Lesser General Public License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public License
 * along with AllInOneMusicPlayer.  If not, see <http://www.gnu.org/licenses/>.
 * 
 * Copyright (c) 2021-2022, Syed Arsalan Kazmi
 */

import 'package:all_in_one_music_player/Helpers/route_handler.dart';
import 'package:flutter/material.dart';

void handleSharedText(
  String sharedText,
  GlobalKey<NavigatorState> navigatorKey,
) {
  // Add a delay to allow the app to load completely before handling the route
  Future.delayed(const Duration(seconds: 1), () {
    final route = HandleRoute.handleRoute(sharedText);
    if (route != null) navigatorKey.currentState?.push(route);
  });
}
