import android.app.Application;

public class MyApplication extends Application {
    @Override
    public void onCreate() {
        super.onCreate();
        // Call MultiDex.install(this) here
        androidx.multidex.MultiDex.install(this);
    }
}
