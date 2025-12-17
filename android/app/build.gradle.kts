plugins {
    id("com.android.application")
    // START: FlutterFire Configuration
    id("com.google.gms.google-services")
    // END: FlutterFire Configuration
    id("com.google.firebase.crashlytics")
    id("kotlin-android")
    id("dev.flutter.flutter-gradle-plugin")
}

android {
    namespace = "com.example.sbi_demo"
    compileSdk = flutter.compileSdkVersion
    ndkVersion = flutter.ndkVersion

    compileOptions {
        sourceCompatibility = JavaVersion.VERSION_17
        targetCompatibility = JavaVersion.VERSION_17
    }

    buildFeatures {
        buildConfig = true
    }

    kotlin {
        jvmToolchain(17)
    }

    defaultConfig {
        applicationId = "com.example.sbi_demo"
        minSdk = flutter.minSdkVersion
        targetSdk = flutter.targetSdkVersion
        versionCode = flutter.versionCode
        versionName = flutter.versionName
    }

    buildTypes {

        getByName("debug") {
            isDebuggable = true
            isMinifyEnabled = false
            isShrinkResources = false
        }

        getByName("release") {
            signingConfig = signingConfigs.getByName("debug")
            isMinifyEnabled = false
            isShrinkResources = false
        }
    }

    flavorDimensions += "environment"

    productFlavors {
        create("dev") {
            dimension = "environment"
            applicationIdSuffix = ".dev"
            versionNameSuffix = "-dev"
            resValue("string", "app_name", "SBI Demo Dev")
            manifestPlaceholders["appLabel"] = "SBI Demo Dev"

            buildConfigField("boolean", "CRASHLYTICS_ENABLED", "false")
        }
        create("staging") {
            dimension = "environment"
            applicationIdSuffix = ".staging"
            versionNameSuffix = "-stg"
            resValue("string", "app_name", "SBI Demo Staging")
            manifestPlaceholders["appLabel"] = "SBI Demo Staging"

            buildConfigField("boolean", "CRASHLYTICS_ENABLED", "true")
        }
        create("prod") {
            dimension = "environment"
            resValue("string", "app_name", "SBI Demo")
            manifestPlaceholders["appLabel"] = "SBI Demo"

            buildConfigField("boolean", "CRASHLYTICS_ENABLED", "true")
        }
    }

    // REQUIRED FOR FIREBASE + FLAVORS
    sourceSets {
        getByName("dev") {
            res.srcDirs("src/dev/res")
        }
        getByName("staging") {
            res.srcDirs("src/staging/res")
        }
        getByName("prod") {
            res.srcDirs("src/prod/res")
        }
    }
}

flutter {
    source = "../.."
}
