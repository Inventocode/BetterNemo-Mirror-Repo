.class public final Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;
.super Ljava/lang/Object;
.source "CMToolsMicRecordUtil.kt"


# instance fields
.field private angle:F

.field private audio:Landroid/media/MediaRecorder;

.field private cacheFilePath:Ljava/lang/String;

.field private isMicRecording:Z

.field private final minAngle:F

.field private thread:Ljava/lang/Thread;


# direct methods
.method public static synthetic $r8$lambda$u4ui1uXFr7VL24dKmGUxN1Fes4M(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;FLkotlin/jvm/functions/Function1;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->startRecording$lambda$0(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;FLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x3f923a14

    .line 97
    iput v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->minAngle:F

    return-void
.end method

.method private final getRecordFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->getRecordParentFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/record_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 p1, 0x2e

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method static synthetic getRecordFilePath$default(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_6

    const-string p2, "amr"

    .line 113
    :cond_6
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->getRecordFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private final getRecordParentFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 117
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 118
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/CMTools/records/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final prepareRecording(Landroid/content/Context;)V
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    .line 23
    :try_start_2
    invoke-static {p0, p1, v1, v0, v1}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->getRecordFilePath$default(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;Landroid/content/Context;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 24
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    if-nez p1, :cond_12

    return-void

    .line 28
    :cond_12
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_29

    .line 29
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 31
    :cond_29
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_32

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 34
    :cond_32
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->cacheFilePath:Ljava/lang/String;

    .line 35
    new-instance p1, Landroid/media/MediaRecorder;

    invoke-direct {p1}, Landroid/media/MediaRecorder;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    const/4 v0, 0x1

    .line 36
    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 37
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_4b

    const/4 v1, 0x3

    invoke-virtual {p1, v1}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 38
    :cond_4b
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_52

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 39
    :cond_52
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_62

    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->cacheFilePath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V
    :try_end_5b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_5b} :catch_5c

    goto :goto_62

    :catch_5c
    move-exception p1

    const-string v0, "MicUtilException"

    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_62
    :goto_62
    return-void
.end method

.method private final readAudioBuffer()D
    .registers 3

    const/16 v0, 0x64

    int-to-float v0, v0

    .line 101
    :try_start_3
    iget v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->minAngle:F

    mul-float v0, v0, v1

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_10

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    int-to-float v1, v1

    mul-float v0, v0, v1

    const v1, 0x8000

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->angle:F

    const/high16 v1, 0x42c80000  # 100.0f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_23

    .line 103
    iput v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->angle:F

    .line 106
    :cond_23
    iget v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->angle:F
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_25} :catch_27

    float-to-double v0, v0

    return-wide v0

    :catch_27
    move-exception v0

    const-string v1, "RNMicException"

    .line 108
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    return-wide v0
.end method

.method public static synthetic startRecording$default(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;Landroid/content/Context;FLkotlin/jvm/functions/Function1;ILjava/lang/Object;)V
    .registers 6

    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_7

    const p2, 0x3e99999a  # 0.3f

    .line 45
    :cond_7
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->startRecording(Landroid/content/Context;FLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final startRecording$lambda$0(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;FLkotlin/jvm/functions/Function1;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$callback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    :goto_a
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_3f

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->isInterrupted()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 60
    :try_start_17
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-nez v0, :cond_25

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->thread:Ljava/lang/Thread;

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    :cond_22
    const/4 v0, 0x0

    .line 62
    iput-object v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->thread:Ljava/lang/Thread;

    :cond_25
    const/16 v0, 0x3e8

    int-to-float v0, v0

    mul-float v0, v0, p1

    float-to-int v0, v0

    int-to-long v0, v0

    .line 64
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    .line 65
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->readAudioBuffer()D

    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3a
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_3a} :catch_3b

    goto :goto_a

    :catch_3b
    const/4 v0, 0x0

    .line 69
    iput-boolean v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->isMicRecording:Z

    goto :goto_a

    :cond_3f
    return-void
.end method


# virtual methods
.method public final startRecording(Landroid/content/Context;FLkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "F",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    iget-boolean v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->isMicRecording:Z

    if-eqz v0, :cond_f

    return-void

    .line 49
    :cond_f
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->prepareRecording(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 50
    iput-boolean p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->isMicRecording:Z

    .line 52
    :try_start_15
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    .line 53
    :cond_1c
    iget-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_23} :catch_24

    goto :goto_27

    :catch_24
    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->isMicRecording:Z

    .line 57
    :cond_27
    :goto_27
    new-instance p1, Ljava/lang/Thread;

    new-instance v0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;FLkotlin/jvm/functions/Function1;)V

    invoke-direct {p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->thread:Ljava/lang/Thread;

    .line 73
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final stopRecording()V
    .registers 4

    const/4 v0, 0x0

    .line 78
    :try_start_1
    iput-boolean v0, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->isMicRecording:Z

    .line 79
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->thread:Ljava/lang/Thread;

    const/4 v2, 0x0

    if-eqz v1, :cond_f

    if-eqz v1, :cond_d

    .line 80
    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 81
    :cond_d
    iput-object v2, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->thread:Ljava/lang/Thread;

    .line 83
    :cond_f
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_21

    if-eqz v1, :cond_18

    .line 84
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V

    .line 85
    :cond_18
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_1f

    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    .line 86
    :cond_1f
    iput-object v2, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->audio:Landroid/media/MediaRecorder;

    .line 88
    :cond_21
    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->cacheFilePath:Ljava/lang/String;

    if-eqz v1, :cond_2b

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-nez v1, :cond_2c

    :cond_2b
    const/4 v0, 0x1

    :cond_2c
    if-nez v0, :cond_38

    .line 89
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/utils/CMToolsMicRecordUtil;->cacheFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_38} :catch_38

    :catch_38
    :cond_38
    return-void
.end method
