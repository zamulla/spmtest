class JVMPlatform: PlatformUi {
    override val name: String = "Java ${System.getProperty("java.version")}"
}

actual fun getPlatformUi(): PlatformUi = JVMPlatform()