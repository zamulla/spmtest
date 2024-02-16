class UiGreeting {
    private val platform = getPlatformUi()

    fun greet(): String {
        return "Ui, ${platform.name}!"
    }
}