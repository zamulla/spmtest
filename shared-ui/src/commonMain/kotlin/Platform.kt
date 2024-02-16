interface PlatformUi {
    val name: String
}

expect fun getPlatformUi(): PlatformUi