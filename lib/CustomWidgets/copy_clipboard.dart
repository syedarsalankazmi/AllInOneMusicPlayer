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

import 'package:all_in_one_music_player/CustomWidgets/snackbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

void copyToClipboard({
  required BuildContext context,
  required String text,
  String? displayText,
}) {
  Clipboard.setData(
    ClipboardData(text: text),
  );
  ShowSnackBar().showSnackBar(
    context,
    displayText ?? AppLocalizations.of(context)!.copied,
  );
}
