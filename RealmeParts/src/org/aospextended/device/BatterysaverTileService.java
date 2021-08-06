package org.aospextended.device;
import android.content.SharedPreferences;
import android.service.quicksettings.Tile;
import android.service.quicksettings.TileService;
import androidx.preference.PreferenceManager;

public class BatterysaverTileService extends TileService {

    private  int mcurrentState;
    private  int mclick = 0;
    private Tile mtile;
    // public PerfmodeTileService mPerfmodeTile  = new PerfmodeTileService() {
    //   @Override
    //   public void onStartListening() {
    //     mtile = getQsTile();
    //     int currentState = FileUtils.getintProp(RealmeParts.PERFMODE_SYSTEM_PROPERTY, 0);
    //     if (FileUtils.getintProp(RealmeParts.BATTERYSAVER_SYSTEM_PROPERTY, 0) == 1){
    //       mtile.setState(Tile.STATE_UNAVAILABLE);
    //     } else {
    //       mtile.setState(Tile.STATE_ACTIVE);
    //     }
    //     mtile.setLabel(getResources().getStringArray(R.array.perfboost_profiles)[currentState]);
    //     mtile.updateTile();
    //
    //     super.onStartListening();
    //   }
    // };
    @Override
    public void onStartListening() {
        int currentState = FileUtils.getintProp(RealmeParts.BATTERYSAVER_SYSTEM_PROPERTY, 0);
        Tile tile = getQsTile();
        tile.setState(currentState == 1 ? Tile.STATE_ACTIVE : Tile.STATE_INACTIVE);
        tile.updateTile();
        super.onStartListening();
    }

    @Override
    public void onClick() {
        mcurrentState = FileUtils.getintProp(RealmeParts.BATTERYSAVER_SYSTEM_PROPERTY, 0);
        mclick = 1;
        SharedPreferences sharedPrefs = PreferenceManager.getDefaultSharedPreferences(this);
        Tile tile = getQsTile();
        FileUtils.setintProp(RealmeParts.BATTERYSAVER_SYSTEM_PROPERTY, mcurrentState == 1 ? 0 : 1);
        sharedPrefs.edit().putBoolean(RealmeParts.BATTERY_SAVER, mcurrentState == 1 ? false : true).commit();
        getQsTile().setState( mcurrentState == 1  ? Tile.STATE_INACTIVE : Tile.STATE_ACTIVE);
        tile.updateTile();
        mtile = PerfmodeTileService.getQs();
        int setState =  1;
        if (FileUtils.getintProp(RealmeParts.BATTERYSAVER_SYSTEM_PROPERTY, 0) == 1){
          mtile.setState(Tile.STATE_UNAVAILABLE);
        } else {
          mtile.setState(Tile.STATE_ACTIVE);
        }
        FileUtils.setintProp(RealmeParts.PERFMODE_SYSTEM_PROPERTY, setState);
        mtile.setLabel(getResources().getStringArray(R.array.perfboost_profiles)[setState]);
        mtile.updateTile();
        super.onClick();

    }

}
