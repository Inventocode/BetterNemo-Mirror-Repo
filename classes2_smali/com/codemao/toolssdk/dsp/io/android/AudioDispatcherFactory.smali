.class public Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;
.super Ljava/lang/Object;
.source "AudioDispatcherFactory.java"


# static fields
.field private static pipe_counter:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static closePipe(Ljava/lang/String;)V
    .registers 3

    .line 167
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 168
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 169
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 170
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Pipe deleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioDispatcherFactory"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_24
    return-void
.end method

.method public static fromDefaultMicrophone(Landroid/content/Context;III)Lcom/codemao/toolssdk/dsp/AudioDispatcher;
    .registers 20

    move/from16 v6, p1

    move/from16 v7, p2

    const/16 v0, 0x10

    const/4 v1, 0x2

    .line 74
    invoke-static {v6, v0, v1}, Landroid/media/AudioRecord;->getMinBufferSize(III)I

    move-result v0

    .line 77
    div-int/lit8 v2, v0, 0x2

    if-gt v2, v7, :cond_51

    const-string v0, "android.permission.RECORD_AUDIO"

    move-object/from16 v1, p0

    .line 79
    invoke-static {v1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    const-string v8, "TAG"

    if-eqz v0, :cond_22

    const-string v0, "RECORD_AUDIO permission not granted can\'t open microphone"

    .line 80
    invoke-static {v8, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return-object v0

    .line 83
    :cond_22
    new-instance v9, Landroid/media/AudioRecord;

    const/4 v1, 0x1

    const/16 v3, 0x10

    const/4 v4, 0x2

    mul-int/lit8 v5, v7, 0x2

    move-object v0, v9

    move/from16 v2, p1

    invoke-direct/range {v0 .. v5}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 84
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    int-to-float v11, v6

    const/16 v12, 0x10

    const/4 v13, 0x1

    const/4 v14, 0x1

    const/4 v15, 0x0

    move-object v10, v0

    invoke-direct/range {v10 .. v15}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;-><init>(FIIZZ)V

    .line 85
    new-instance v1, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;

    invoke-direct {v1, v9, v0}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioInputStream;-><init>(Landroid/media/AudioRecord;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V

    .line 87
    invoke-virtual {v9}, Landroid/media/AudioRecord;->startRecording()V

    const-string v0, "Needed permission is granted listening from microphone"

    .line 88
    invoke-static {v8, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    new-instance v0, Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move/from16 v2, p3

    invoke-direct {v0, v1, v7, v2}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;II)V

    return-object v0

    .line 92
    :cond_51
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Buffer size too small should be at least "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    mul-int/lit8 v0, v0, 0x2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static fromPipe(Landroid/content/Context;Landroid/net/Uri;DDIII)Lcom/codemao/toolssdk/dsp/AudioDispatcher;
    .registers 26

    move-wide/from16 v0, p2

    move-wide/from16 v2, p4

    move/from16 v4, p6

    .line 121
    sget-object v5, Lcom/codemao/toolssdk/FFmpegCallback;->INSTANCE:Lcom/codemao/toolssdk/FFmpegCallback;

    invoke-virtual {v5}, Lcom/codemao/toolssdk/FFmpegCallback;->getCallBack()Lcom/codemao/toolssdk/FFmpegCallback$CallBack;

    move-result-object v6

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-interface {v6, v7, v8}, Lcom/codemao/toolssdk/FFmpegCallback$CallBack;->getSafParameterForRead(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v6

    .line 123
    invoke-static/range {p0 .. p0}, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->registerNewPipe(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "Read the file from "

    const-string v9, "AudioDispatcherFactory"

    const-string v10, " -ac 1 "

    const-string v11, " -f s16le -acodec pcm_s16le -ar "

    const-string v12, " -i "

    const-string v13, "-y -ss "

    const-wide/16 v14, 0x0

    cmpl-double v16, v2, v14

    if-lez v16, :cond_7b

    .line 127
    invoke-virtual {v5}, Lcom/codemao/toolssdk/FFmpegCallback;->getCallBack()Lcom/codemao/toolssdk/FFmpegCallback$CallBack;

    move-result-object v5

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v13, " -t "

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/codemao/toolssdk/FFmpegCallback$CallBack;->execute(Ljava/lang/String;)V

    .line 128
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, "s to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-double/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, " s"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ba

    .line 131
    :cond_7b
    invoke-virtual {v5}, Lcom/codemao/toolssdk/FFmpegCallback;->getCallBack()Lcom/codemao/toolssdk/FFmpegCallback$CallBack;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/codemao/toolssdk/FFmpegCallback$CallBack;->execute(Ljava/lang/String;)V

    .line 132
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "s to the end"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :goto_ba
    new-instance v0, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;

    new-instance v1, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    int-to-float v2, v4

    const/16 v3, 0x10

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object/from16 p0, v1

    move/from16 p1, v2

    move/from16 p2, v3

    move/from16 p3, v4

    move/from16 p4, v5

    move/from16 p5, v6

    invoke-direct/range {p0 .. p5}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;-><init>(FIIZZ)V

    invoke-direct {v0, v7, v1}, Lcom/codemao/toolssdk/dsp/io/UniversalAudioInputStream;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V

    .line 136
    new-instance v1, Lcom/codemao/toolssdk/dsp/AudioDispatcher;

    move/from16 v2, p7

    move/from16 v3, p8

    invoke-direct {v1, v0, v2, v3}, Lcom/codemao/toolssdk/dsp/AudioDispatcher;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioInputStream;II)V

    return-object v1
.end method

.method public static registerNewPipe(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    .line 147
    new-instance v0, Ljava/io/File;

    const-string v1, "pipes"

    invoke-direct {v0, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 149
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    const/4 v1, 0x1

    if-nez p0, :cond_2e

    .line 150
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result p0

    if-nez p0, :cond_2e

    new-array p0, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 152
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    aput-object v0, p0, v1

    const-string v0, "Failed to create pipes directory: %s."

    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "AudioDispatcherFactory"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    .line 157
    :cond_2e
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "/pipe"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->pipe_counter:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 158
    sget v0, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->pipe_counter:I

    add-int/2addr v0, v1

    sput v0, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->pipe_counter:I

    .line 161
    invoke-static {p0}, Lcom/codemao/toolssdk/dsp/io/android/AudioDispatcherFactory;->closePipe(Ljava/lang/String;)V

    return-object p0
.end method
