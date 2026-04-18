.class public final Lcom/codemao/toolssdk/utils/RecordHelper;
.super Ljava/lang/Object;
.source "RecordHelper.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

.field private static angle:F

.field private static endSystemMill:J

.field private static isRecording:Z

.field private static mMediaRecorder:Landroid/media/MediaRecorder;

.field private static final minAngle:F

.field private static recordPath:Ljava/lang/String;

.field private static recordingListener:Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;

.field private static startSystemMill:J

.field private static timer:Ljava/util/Timer;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/utils/RecordHelper;

    invoke-direct {v0}, Lcom/codemao/toolssdk/utils/RecordHelper;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->INSTANCE:Lcom/codemao/toolssdk/utils/RecordHelper;

    const v0, 0x3f923a14

    .line 174
    sput v0, Lcom/codemao/toolssdk/utils/RecordHelper;->minAngle:F

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMMediaRecorder$p()Landroid/media/MediaRecorder;
    .registers 1

    .line 12
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-object v0
.end method

.method private final getRecordFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 163
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordParentFilePath(Landroid/content/Context;)Ljava/lang/String;

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

.method private final getRecordParentFilePath(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 166
    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 167
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/CMTools/records/"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getSamplingRate()I
    .registers 7

    const/4 v0, 0x5

    new-array v1, v0, [I

    .line 105
    fill-array-data v1, :array_1c

    const/4 v2, 0x0

    :goto_7
    if-ge v2, v0, :cond_17

    .line 104
    aget v3, v1, v2

    const/4 v4, 0x2

    const/4 v5, 0x1

    .line 107
    invoke-static {v3, v5, v4}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v4

    if-lez v4, :cond_14

    return v3

    :cond_14
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_17
    const v0, 0xac44

    return v0

    nop

    :array_1c
    .array-data 4
        0x1f40
        0x2b11
        0x3e80
        0x5622
        0xac44
    .end array-data
.end method


# virtual methods
.method public final clearCache(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordParentFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 159
    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V

    return-void
.end method

.method public final getRecordFileDuration()I
    .registers 8

    const/4 v0, 0x0

    .line 145
    :try_start_1
    new-instance v1, Landroid/media/MediaPlayer;

    invoke-direct {v1}, Landroid/media/MediaPlayer;-><init>()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_6} :catch_1d
    .catchall {:try_start_1 .. :try_end_6} :catchall_18

    .line 146
    :try_start_6
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->recordPath:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 147
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->prepare()V

    .line 148
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_12} :catch_16
    .catchall {:try_start_6 .. :try_end_12} :catchall_2e

    .line 153
    :goto_12
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    goto :goto_2d

    :catch_16
    move-exception v0

    goto :goto_21

    :catchall_18
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    goto :goto_2f

    :catch_1d
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    .line 150
    :goto_21
    :try_start_21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 151
    sget-wide v2, Lcom/codemao/toolssdk/utils/RecordHelper;->endSystemMill:J

    sget-wide v4, Lcom/codemao/toolssdk/utils/RecordHelper;->startSystemMill:J
    :try_end_28
    .catchall {:try_start_21 .. :try_end_28} :catchall_2e

    sub-long/2addr v2, v4

    long-to-int v0, v2

    if-eqz v1, :cond_2d

    goto :goto_12

    :cond_2d
    :goto_2d
    return v0

    :catchall_2e
    move-exception v0

    :goto_2f
    if-eqz v1, :cond_34

    .line 153
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    :cond_34
    throw v0
.end method

.method public final getRecordPath()Ljava/lang/String;
    .registers 2

    .line 17
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->recordPath:Ljava/lang/String;

    return-object v0
.end method

.method public final readAudioBuffer(Landroid/media/MediaRecorder;)D
    .registers 4

    if-eqz p1, :cond_9

    .line 178
    :try_start_2
    invoke-virtual {p1}, Landroid/media/MediaRecorder;->getMaxAmplitude()I

    move-result p1

    goto :goto_a

    :catch_7
    move-exception p1

    goto :goto_27

    :cond_9
    const/4 p1, 0x0

    :goto_a
    const/16 v0, 0x64

    int-to-float v0, v0

    .line 179
    sget v1, Lcom/codemao/toolssdk/utils/RecordHelper;->minAngle:F

    mul-float v0, v0, v1

    int-to-float p1, p1

    mul-float v0, v0, p1

    const p1, 0x8000

    int-to-float p1, p1

    div-float/2addr v0, p1

    sput v0, Lcom/codemao/toolssdk/utils/RecordHelper;->angle:F

    const/high16 p1, 0x42c80000  # 100.0f

    cmpl-float v0, v0, p1

    if-lez v0, :cond_23

    .line 181
    sput p1, Lcom/codemao/toolssdk/utils/RecordHelper;->angle:F

    .line 184
    :cond_23
    sget p1, Lcom/codemao/toolssdk/utils/RecordHelper;->angle:F
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_25} :catch_7

    float-to-double v0, p1

    return-wide v0

    .line 186
    :goto_27
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "侦测音量报错"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "流程-录音-recordHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    return-wide v0
.end method

.method public final startRecordVoice(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/RecordOption;Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;)Z
    .registers 13

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "recordOption"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecordVoice,开始录音方法,recordOption:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "流程-录音-RecordHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    new-instance v0, Ljava/io/File;

    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordParentFilePath(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_32

    .line 33
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 35
    :cond_32
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->getAudioTypeSafe()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/utils/RecordHelper;->getRecordFilePath(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/codemao/toolssdk/utils/RecordHelper;->recordPath:Ljava/lang/String;

    .line 36
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "音频文件名称:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->recordPath:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    new-instance p1, Ljava/io/File;

    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->recordPath:Ljava/lang/String;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    if-nez v0, :cond_64

    return v2

    .line 41
    :cond_64
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_7b

    .line 42
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 44
    :cond_7b
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_84

    .line 45
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 47
    :cond_84
    invoke-virtual {p0}, Lcom/codemao/toolssdk/utils/RecordHelper;->stopRecordVoice()V

    const/4 v0, 0x1

    .line 48
    sput-boolean v0, Lcom/codemao/toolssdk/utils/RecordHelper;->isRecording:Z

    .line 56
    :try_start_8a
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-nez v3, :cond_95

    .line 57
    new-instance v3, Landroid/media/MediaRecorder;

    invoke-direct {v3}, Landroid/media/MediaRecorder;-><init>()V

    sput-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    .line 60
    :cond_95
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_9c

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setAudioSource(I)V

    .line 61
    :cond_9c
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->isAudioTypeAmr()Z

    move-result v3

    if-eqz v3, :cond_b3

    .line 62
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_aa

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 63
    :cond_aa
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_c3

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    goto :goto_c3

    .line 65
    :cond_b3
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_bb

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setOutputFormat(I)V

    .line 66
    :cond_bb
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_c3

    const/4 v4, 0x3

    invoke-virtual {v3, v4}, Landroid/media/MediaRecorder;->setAudioEncoder(I)V

    .line 68
    :cond_c3
    :goto_c3
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_ca

    invoke-virtual {v3, v0}, Landroid/media/MediaRecorder;->setAudioChannels(I)V

    .line 70
    :cond_ca
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->getSampleRate()Ljava/lang/Integer;

    move-result-object v3

    if-eqz v3, :cond_e3

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->getSampleRate()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_e3

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/RecordOption;->getSampleRate()Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    goto :goto_e7

    :cond_e3
    invoke-direct {p0}, Lcom/codemao/toolssdk/utils/RecordHelper;->getSamplingRate()I

    move-result p2

    .line 71
    :goto_e7
    sget-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v3, :cond_ee

    invoke-virtual {v3, p2}, Landroid/media/MediaRecorder;->setAudioSamplingRate(I)V

    .line 72
    :cond_ee
    sget-object p2, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_f8

    const v3, 0x1f400

    invoke-virtual {p2, v3}, Landroid/media/MediaRecorder;->setAudioEncodingBitRate(I)V

    .line 73
    :cond_f8
    sget-object p2, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p2, :cond_103

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/media/MediaRecorder;->setOutputFile(Ljava/lang/String;)V

    .line 79
    :cond_103
    sget-object p1, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_10a

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->prepare()V

    :cond_10a
    const-string p1, "mediaRecorder,调用start"

    .line 80
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    sget-object p1, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz p1, :cond_116

    invoke-virtual {p1}, Landroid/media/MediaRecorder;->start()V

    .line 82
    :cond_116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    sput-wide p1, Lcom/codemao/toolssdk/utils/RecordHelper;->startSystemMill:J

    if-eqz p3, :cond_13a

    .line 84
    sput-object p3, Lcom/codemao/toolssdk/utils/RecordHelper;->recordingListener:Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;

    .line 86
    sget-object p1, Lcom/codemao/toolssdk/utils/RecordHelper;->timer:Ljava/util/Timer;

    if-eqz p1, :cond_127

    invoke-virtual {p1}, Ljava/util/Timer;->cancel()V

    .line 87
    :cond_127
    new-instance v3, Ljava/util/Timer;

    invoke-direct {v3}, Ljava/util/Timer;-><init>()V

    sput-object v3, Lcom/codemao/toolssdk/utils/RecordHelper;->timer:Ljava/util/Timer;

    .line 88
    new-instance v4, Lcom/codemao/toolssdk/utils/RecordHelper$startRecordVoice$1;

    invoke-direct {v4, p3}, Lcom/codemao/toolssdk/utils/RecordHelper$startRecordVoice$1;-><init>(Lcom/codemao/toolssdk/utils/RecordHelper$RecordingListener;)V

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x12c

    invoke-virtual/range {v3 .. v8}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_13a
    .catch Ljava/lang/Exception; {:try_start_8a .. :try_end_13a} :catch_13b

    :cond_13a
    return v0

    :catch_13b
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 98
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "开始录音报错:"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public final stopRecordVoice()V
    .registers 5

    .line 121
    sget-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->timer:Ljava/util/Timer;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_7
    const/4 v0, 0x0

    .line 122
    sput-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->timer:Ljava/util/Timer;

    .line 125
    sget-boolean v1, Lcom/codemao/toolssdk/utils/RecordHelper;->isRecording:Z

    if-nez v1, :cond_f

    return-void

    :cond_f
    const/4 v1, 0x0

    .line 126
    sput-boolean v1, Lcom/codemao/toolssdk/utils/RecordHelper;->isRecording:Z

    .line 127
    sget-object v1, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    if-eqz v1, :cond_2e

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sput-wide v2, Lcom/codemao/toolssdk/utils/RecordHelper;->endSystemMill:J

    .line 132
    :try_start_1c
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->stop()V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1f} :catch_25
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    .line 136
    :goto_1f
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    goto :goto_2e

    :catchall_23
    move-exception v0

    goto :goto_2a

    :catch_25
    move-exception v2

    .line 134
    :try_start_26
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_29
    .catchall {:try_start_26 .. :try_end_29} :catchall_23

    goto :goto_1f

    .line 136
    :goto_2a
    invoke-virtual {v1}, Landroid/media/MediaRecorder;->release()V

    throw v0

    .line 139
    :cond_2e
    :goto_2e
    sput-object v0, Lcom/codemao/toolssdk/utils/RecordHelper;->mMediaRecorder:Landroid/media/MediaRecorder;

    return-void
.end method
