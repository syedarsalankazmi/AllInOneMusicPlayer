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

import 'package:supabase/supabase.dart';

class SupaBase {
  final SupabaseClient client = SupabaseClient(
    'https://gkvdxvaoirbtrpisbzyv.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdrdmR4dmFvaXJidHJwaXNienl2Iiwicm9sZSI6ImFub24iLCJpYXQiOjE2NzMwMjA3NzAsImV4cCI6MTk4ODU5Njc3MH0.gAUwfbnhCspr-ZR277iO8huTWIPotcbkAv1NrVzSoGc',
  );

  Future<Map> getUpdate() async {
    final response =
        await client.from('Update').select().order('LatestVersion');
    final List result = response.data as List;
    return result.isEmpty
        ? {}
        : {
            'LatestVersion': response.data[0]['LatestVersion'],
            'LatestUrl': response.data[0]['LatestUrl'],
            'arm64-v8a': response.data[0]['arm64-v8a'],
            'armeabi-v7a': response.data[0]['armeabi-v7a'],
            'universal': response.data[0]['universal'],
          };
  }

  Future<void> updateUserDetails(
    String? userId,
    String key,
    dynamic value,
  ) async {
    // final response = await client.from('Users').update({key: value},
    //     returning: ReturningOption.minimal).match({'id': userId}).execute();
    // print(response.toJson());
  }

  Future<void> createUser(Map data) async {
    await client.from('Users').insert(data);
  }
}
