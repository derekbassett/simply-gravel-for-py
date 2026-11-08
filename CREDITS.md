# Simply Gravel for Py

Copyright (C) 2026 TheDreadPirate

This program is free software: you can redistribute it and/or modify it under
the terms of the GNU General Public License as published by the Free Software
Foundation, either version 3 of the License, or (at your option) any later
version. See the LICENSE file for the full text.

## Derived from

- **Simply Gravel** by Chesapeake [moth.monster] — https://mods.factorio.com/mod/simply-gravel
  (GNU GPLv3). The tile definition in `data.lua` is adapted from this mod.
- **Dectorio** by PantherX — https://mods.factorio.com/mod/Dectorio,
  source: https://github.com/jpanther/dectorio (GNU GPLv3).
  All images in `graphics/` and `thumbnail.png` are from Dectorio, unmodified.

## Changes from Simply Gravel (2026-10-03)

- The tile is now placed with Pyanodon's `gravel` item instead of base `stone`,
  and mining it returns `gravel`.
- Renamed the mod to `simply-gravel-for-py` and the tile to `sgfp-gravel`.
- Added a dependency on `pycoalprocessing`.
- Added a migration that converts existing Simply Gravel tiles in a save to this mod's tile.
