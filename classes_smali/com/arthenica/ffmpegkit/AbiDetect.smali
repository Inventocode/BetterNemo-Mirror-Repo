.class public Lcom/arthenica/ffmpegkit/AbiDetect;
.super Ljava/lang/Object;
.source "AbiDetect.java"


# static fields
.field private static armV7aNeonLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    .line 30
    invoke-static {}, Lcom/arthenica/ffmpegkit/NativeLoader;->loadFFmpegKitAbiDetect()V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAbi()Ljava/lang/String;
    .registers 1

    .line 60
    sget-boolean v0, Lcom/arthenica/ffmpegkit/AbiDetect;->armV7aNeonLoaded:Z

    if-eqz v0, :cond_7

    const-string v0, "arm-v7a-neon"

    return-object v0

    .line 63
    :cond_7
    invoke-static {}, Lcom/arthenica/ffmpegkit/AbiDetect;->getNativeAbi()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static native getNativeAbi()Ljava/lang/String;
.end method

.method static native getNativeBuildConf()Ljava/lang/String;
.end method

.method static native getNativeCpuAbi()Ljava/lang/String;
.end method

.method static native isNativeLTSBuild()Z
.end method

.method static setArmV7aNeonLoaded()V
    .registers 1

    const/4 v0, 0x1

    .line 51
    sput-boolean v0, Lcom/arthenica/ffmpegkit/AbiDetect;->armV7aNeonLoaded:Z

    return-void
.end method
