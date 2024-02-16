import org.jetbrains.kotlin.gradle.plugin.mpp.apple.XCFramework

plugins {
    alias(libs.plugins.kotlinMultiplatform)
    alias(libs.plugins.androidLibrary)
}

kotlin {
    androidTarget {
        compilations.all {
            kotlinOptions {
                jvmTarget = "1.8"
            }
        }
    }
    
    jvm()

    val frameworkName = "umbrella"
    val xcf = XCFramework()

    listOf(
        iosX64(),
        iosArm64(),
        iosSimulatorArm64()
    ).forEach { iosTarget ->
        iosTarget.binaries.framework {
            baseName = frameworkName
            export(projects.shared)
            export(projects.sharedUi)
            xcf.add(this)
        }
    }

    sourceSets {
        commonMain.dependencies {
            api(projects.shared)
            api(projects.sharedUi)
        }
    }
}

android {
    namespace = "kmp.project.spmtest.umbrella"
    compileSdk = libs.versions.android.compileSdk.get().toInt()
    defaultConfig {
        minSdk = libs.versions.android.minSdk.get().toInt()
    }
}
