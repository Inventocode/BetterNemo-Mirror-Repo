.class public final Landroidx/camera/core/VideoCapture$Defaults;
.super Ljava/lang/Object;
.source "VideoCapture.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/camera/core/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Defaults"
.end annotation


# static fields
.field private static final DEFAULT_CONFIG:Landroidx/camera/core/impl/VideoCaptureConfig;

.field private static final DEFAULT_MAX_RESOLUTION:Landroid/util/Size;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    .line 1338
    new-instance v0, Landroid/util/Size;

    const/16 v1, 0x780

    const/16 v2, 0x438

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    sput-object v0, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_MAX_RESOLUTION:Landroid/util/Size;

    .line 1346
    new-instance v1, Landroidx/camera/core/VideoCapture$Builder;

    invoke-direct {v1}, Landroidx/camera/core/VideoCapture$Builder;-><init>()V

    const/16 v2, 0x1e

    .line 1347
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setVideoFrameRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/high16 v2, 0x800000

    .line 1348
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1349
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setIFrameInterval(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const v3, 0xfa00

    .line 1350
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setAudioBitRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/16 v3, 0x1f40

    .line 1351
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setAudioSampleRate(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 1352
    invoke-virtual {v1, v2}, Landroidx/camera/core/VideoCapture$Builder;->setAudioChannelCount(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    const/16 v3, 0x400

    .line 1353
    invoke-virtual {v1, v3}, Landroidx/camera/core/VideoCapture$Builder;->setAudioMinBufferSize(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v1

    .line 1354
    invoke-virtual {v1, v0}, Landroidx/camera/core/VideoCapture$Builder;->setMaxResolution(Landroid/util/Size;)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 1355
    invoke-virtual {v0, v1}, Landroidx/camera/core/VideoCapture$Builder;->setSurfaceOccupancyPriority(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1356
    invoke-virtual {v0, v2}, Landroidx/camera/core/VideoCapture$Builder;->setTargetAspectRatio(I)Landroidx/camera/core/VideoCapture$Builder;

    move-result-object v0

    .line 1358
    invoke-virtual {v0}, Landroidx/camera/core/VideoCapture$Builder;->getUseCaseConfig()Landroidx/camera/core/impl/VideoCaptureConfig;

    move-result-object v0

    sput-object v0, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/VideoCaptureConfig;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 1322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getConfig()Landroidx/camera/core/impl/VideoCaptureConfig;
    .registers 2

    .line 1364
    sget-object v0, Landroidx/camera/core/VideoCapture$Defaults;->DEFAULT_CONFIG:Landroidx/camera/core/impl/VideoCaptureConfig;

    return-object v0
.end method
