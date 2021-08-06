package org.aospextended.device;

import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;

public class PerfmodeTileService extends TileService {
    public static Tile mtile;
    @Override
    public void onStartListening() {
        int currentState = FileUtils.getintProp(RealmeParts.PERFMODE_SYSTEM_PROPERTY, 0);

        Tile tile = getQsTile();
        mtile = getQsTile();
        if (FileUtils.getintProp(RealmeParts.BATTERYSAVER_SYSTEM_PROPERTY, 0) == 1){
          tile.setState(Tile.STATE_UNAVAILABLE);
        } else {
          tile.setState(Tile.STATE_ACTIVE);
        }

        tile.setLabel(getResources().getStringArray(R.array.perfboost_profiles)[currentState]);

        tile.updateTile();
        super.onStartListening();
    }

    @Override
    public void onClick() {
        int currentState = FileUtils.getintProp(RealmeParts.PERFMODE_SYSTEM_PROPERTY, 0);

        int nextState;
        if (currentState == 3) {
            nextState = 0;
        } else {
            nextState = currentState + 1;
        }

        Tile tile = getQsTile();
        FileUtils.setintProp(RealmeParts.PERFMODE_SYSTEM_PROPERTY, nextState);
        tile.setLabel(getResources().getStringArray(R.array.perfboost_profiles)[nextState]);

        tile.updateTile();
        super.onClick();
    }
    public static Tile getQs() {
      return mtile;
    }
}
