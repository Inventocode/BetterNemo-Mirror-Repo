.class public Lcom/arthenica/ffmpegkit/NativeLoader;
.super Ljava/lang/Object;
.source "NativeLoader.java"


# static fields
.field static final FFMPEG_LIBRARIES:[Ljava/lang/String;

.field static final LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 9

    const-string v0, "avutilneko"

    const-string v1, "swscaleneko"

    const-string v2, "swresampleneko"

    const-string v3, "avcodecneko"

    const-string v4, "avformatneko"

    const-string v5, "avfilterneko"

    const-string v6, "avdeviceneko"

    .line 37
    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->FFMPEG_LIBRARIES:[Ljava/lang/String;

    const-string v1, "chromaprint"

    const-string v2, "openh264"

    const-string v3, "rubberband"

    const-string v4, "snappy"

    const-string v5, "srt"

    const-string v6, "tesseract"

    const-string v7, "x265"

    const-string v8, "zimg"

    .line 39
    filled-new-array/range {v1 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;

    return-void
.end method

.method static getDeviceDebugInformation()Ljava/lang/String;
    .registers 3

    .line 195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "brand: "

    .line 197
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", model: "

    .line 199
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", device: "

    .line 201
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 202
    sget-object v1, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", api level: "

    .line 203
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x15

    if-lt v1, v2, :cond_5c

    const-string v1, ", abis: "

    .line 207
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 208
    sget-object v1, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 32bit abis: "

    .line 209
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    sget-object v1, Landroid/os/Build;->SUPPORTED_32_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", 64bit abis: "

    .line 211
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    sget-object v1, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    invoke-static {v1}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->argumentsToString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_70

    :cond_5c
    const-string v1, ", cpu abis: "

    .line 214
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    sget-object v1, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cpu abi2s: "

    .line 216
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 217
    sget-object v1, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 220
    :goto_70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static isTestModeDisabled()Z
    .registers 1

    const-string v0, "enable.ffmpeg.kit.test.mode"

    .line 42
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method static loadAbi()Ljava/lang/String;
    .registers 1

    .line 72
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 73
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 75
    :cond_b
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static loadBuildDate()Ljava/lang/String;
    .registers 3

    .line 116
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 117
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getBuildDate()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 119
    :cond_b
    new-instance v0, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v1

    const-string v2, "yyyyMMdd"

    invoke-direct {v0, v2, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static loadExternalLibraries()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 56
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 57
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getExternalLibraries()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 59
    :cond_b
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static loadFFmpeg()Z
    .registers 7

    .line 137
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-ge v0, v2, :cond_78

    .line 140
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadExternalLibraries()Ljava/util/List;

    move-result-object v0

    .line 141
    sget-object v2, Lcom/arthenica/ffmpegkit/NativeLoader;->LIBRARIES_LINKED_WITH_CXX:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_f
    if-ge v4, v3, :cond_22

    aget-object v5, v2, v4

    .line 142
    invoke-interface {v0, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1f

    const-string v0, "c++_sharedneko"

    .line 143
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    goto :goto_22

    :cond_1f
    add-int/lit8 v4, v4, 0x1

    goto :goto_f

    .line 148
    :cond_22
    :goto_22
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadNativeAbi()Ljava/lang/String;

    move-result-object v0

    const-string v2, "arm-v7a"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_66

    .line 150
    :try_start_2f
    sget-object v0, Lcom/arthenica/ffmpegkit/NativeLoader;->FFMPEG_LIBRARIES:[Ljava/lang/String;

    array-length v3, v0

    const/4 v4, 0x0

    :goto_33
    if-ge v4, v3, :cond_4e

    aget-object v5, v0, v4

    .line 151
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "_neon"

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_4b
    .catch Ljava/lang/Error; {:try_start_2f .. :try_end_4b} :catch_50

    add-int/lit8 v4, v4, 0x1

    goto :goto_33

    :cond_4e
    const/4 v0, 0x0

    goto :goto_68

    :catch_50
    move-exception v0

    new-array v3, v2, [Ljava/lang/Object;

    .line 155
    invoke-static {v0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    const-string v0, "NEON supported armeabi-v7a ffmpeg library not found. Loading default armeabi-v7a library.%s"

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "ffmpeg-kit"

    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    goto :goto_67

    :cond_66
    const/4 v0, 0x0

    :goto_67
    const/4 v2, 0x0

    :goto_68
    if-nez v2, :cond_77

    .line 161
    sget-object v2, Lcom/arthenica/ffmpegkit/NativeLoader;->FFMPEG_LIBRARIES:[Ljava/lang/String;

    array-length v3, v2

    :goto_6d
    if-ge v1, v3, :cond_77

    aget-object v4, v2, v1

    .line 162
    invoke-static {v4}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_6d

    :cond_77
    move v1, v0

    :cond_78
    return v1
.end method

.method static loadFFmpegKit(Z)V
    .registers 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p0, :cond_33

    .line 173
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadNativeAbi()Ljava/lang/String;

    move-result-object p0

    const-string v2, "arm-v7a"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_33

    :try_start_10
    const-string p0, "ffmpegkit_armv7a_neon"

    .line 180
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V
    :try_end_15
    .catch Ljava/lang/Error; {:try_start_10 .. :try_end_15} :catch_1c

    .line 182
    :try_start_15
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->setArmV7aNeonLoaded()V
    :try_end_18
    .catch Ljava/lang/Error; {:try_start_15 .. :try_end_18} :catch_19

    goto :goto_34

    :catch_19
    move-exception p0

    const/4 v2, 0x1

    goto :goto_1e

    :catch_1c
    move-exception p0

    const/4 v2, 0x0

    :goto_1e
    new-array v0, v0, [Ljava/lang/Object;

    .line 184
    invoke-static {p0}, Lcom/arthenica/smartexception/java/Exceptions;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, v1

    const-string p0, "NEON supported armeabi-v7a ffmpegkit library not found. Loading default armeabi-v7a library.%s"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "ffmpeg-kit"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_34

    :cond_33
    const/4 v0, 0x0

    :goto_34
    if-nez v0, :cond_3b

    const-string p0, "ffmpegkitneko"

    .line 189
    invoke-static {p0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    :cond_3b
    return-void
.end method

.method static loadFFmpegKitAbiDetect()V
    .registers 1

    const-string v0, "ffmpegkit_abidetectneko"

    .line 130
    invoke-static {v0}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method static loadIsLTSBuild()Z
    .registers 1

    .line 100
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 101
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->isNativeLTSBuild()Z

    move-result v0

    return v0

    :cond_b
    const/4 v0, 0x1

    return v0
.end method

.method private static loadLibrary(Ljava/lang/String;)V
    .registers 5

    .line 46
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 48
    :try_start_6
    invoke-static {p0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_6 .. :try_end_9} :catch_a

    goto :goto_21

    :catch_a
    move-exception p0

    .line 50
    new-instance v0, Ljava/lang/Error;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->getDeviceDebugInformation()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "FFmpegKit failed to start on %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :cond_21
    :goto_21
    return-void
.end method

.method static loadLogLevel()I
    .registers 1

    .line 108
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 109
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getNativeLogLevel()I

    move-result v0

    return v0

    .line 111
    :cond_b
    sget-object v0, Lcom/arthenica/ffmpegkit/Level;->AV_LOG_DEBUG:Lcom/arthenica/ffmpegkit/Level;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Level;->getValue()I

    move-result v0

    return v0
.end method

.method private static loadNativeAbi()Ljava/lang/String;
    .registers 1

    .line 64
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 65
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 67
    :cond_b
    sget-object v0, Lcom/arthenica/ffmpegkit/Abi;->ABI_X86_64:Lcom/arthenica/ffmpegkit/Abi;

    invoke-virtual {v0}, Lcom/arthenica/ffmpegkit/Abi;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static loadPackageName()Ljava/lang/String;
    .registers 1

    .line 80
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 81
    invoke-static {}, Lcom/arthenica/ffmpegkit/Packages;->getPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "test"

    return-object v0
.end method

.method static loadVersion()Ljava/lang/String;
    .registers 3

    .line 90
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->isTestModeDisabled()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 91
    invoke-static {}, Lcom/arthenica/ffmpegkit/FFmpegKitConfig;->getVersion()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 92
    :cond_b
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadIsLTSBuild()Z

    move-result v0

    const-string v1, "6.0"

    if-eqz v0, :cond_20

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "%s-lts"

    .line 93
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_20
    return-object v1
.end method
