import platform.UIKit.UIDevice

class IOSPlatformUi: PlatformUi {
    override val name: String = UIDevice.currentDevice.systemName() + " " + UIDevice.currentDevice.systemVersion
}

actual fun getPlatformUi(): PlatformUi = IOSPlatformUi()