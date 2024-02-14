class UiGreeting {
    private val platform = getPlatform()

    fun greet(): String {
        return "Ui, ${platform.name}!"
    }
}