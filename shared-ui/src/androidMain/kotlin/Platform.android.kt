import android.os.Build

class AndroidPlatform : PlatformUi {
    override val name: String = "Android ${Build.VERSION.SDK_INT}"
}

actual fun getPlatformUi(): PlatformUi = AndroidPlatform()