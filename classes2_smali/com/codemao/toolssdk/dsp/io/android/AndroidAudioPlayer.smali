.class public Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;
.super Ljava/lang/Object;
.source "AndroidAudioPlayer.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# static fields
.field public static audioTrackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/AudioTrack;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final audioTrack:Landroid/media/AudioTrack;

.field private endSamples:J

.field private handler:Landroid/os/Handler;

.field private startSamples:J

.field private totalSamples:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->audioTrackList:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;II)V
    .registers 12

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->handler:Landroid/os/Handler;

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->startSamples:J

    .line 97
    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->endSamples:J

    .line 98
    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->totalSamples:J

    .line 52
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getChannels()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6a

    .line 57
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v0

    float-to-int v3, v0

    .line 60
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result v0

    mul-int p2, p2, v0

    div-int/lit8 v6, p2, 0x8

    const/4 p2, 0x4

    const/4 v0, 0x2

    .line 69
    invoke-static {v3, p2, v0}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result p2

    if-gt p2, v6, :cond_47

    .line 75
    new-instance p1, Landroid/media/AudioTrack;

    const/4 v4, 0x4

    const/4 v5, 0x2

    const/4 v7, 0x1

    move-object v1, p1

    move v2, p3

    invoke-direct/range {v1 .. v7}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    .line 76
    sget-object p2, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    invoke-virtual {p1}, Landroid/media/AudioTrack;->play()V

    return-void

    .line 71
    :cond_47
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "The buffer size should be at least "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleSizeInBits()I

    move-result p1

    div-int/lit8 p1, p1, 0x8

    div-int/2addr p2, p1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " (samples) according to  AudioTrack.getMinBufferSize()."

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 53
    :cond_6a
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "TarsosDSP only supports mono audio channel count: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getChannels()I

    move-result p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;IIJJ)V
    .registers 10

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;-><init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;II)V

    long-to-double p2, p4

    const-wide p4, 0x408f400000000000L  # 1000.0

    div-double/2addr p2, p4

    .line 92
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v0

    float-to-double v0, v0

    mul-double p2, p2, v0

    double-to-long p2, p2

    iput-wide p2, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->startSamples:J

    long-to-double p2, p6

    div-double/2addr p2, p4

    .line 93
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result p1

    float-to-double p4, p1

    mul-double p2, p2, p4

    double-to-long p1, p2

    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->endSamples:J

    return-void
.end method


# virtual methods
.method public onPlayEnd()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public onPlayStart()V
    .registers 1

    const p0, 0x0

    throw p0
.end method

.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 15

    .line 105
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getOverlap()I

    move-result v0

    .line 106
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getBufferSize()I

    move-result v1

    sub-int/2addr v1, v0

    .line 108
    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->startSamples:J

    const/4 v4, 0x1

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-ltz v7, :cond_77

    iget-wide v7, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->endSamples:J

    cmp-long v9, v7, v5

    if-lez v9, :cond_77

    .line 109
    iget-wide v5, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->totalSamples:J

    int-to-long v9, v1

    add-long/2addr v9, v5

    .line 110
    iput-wide v9, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->totalSamples:J

    const/4 v11, 0x0

    cmp-long v12, v2, v5

    if-ltz v12, :cond_48

    cmp-long v12, v9, v2

    if-lez v12, :cond_48

    .line 112
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v0

    .line 113
    iget-wide v1, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->totalSamples:J

    iget-wide v7, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->startSamples:J

    sub-long/2addr v1, v7

    long-to-int v2, v1

    new-array v1, v2, [F

    sub-long/2addr v7, v5

    long-to-int v3, v7

    .line 114
    invoke-static {v0, v3, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 115
    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    .line 116
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getOverlap()I

    move-result v0

    .line 117
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getBufferSize()I

    move-result v1

    sub-int/2addr v1, v0

    .line 118
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->onPlayStart()V

    goto :goto_77

    :cond_48
    cmp-long v12, v9, v2

    if-gez v12, :cond_4d

    return v4

    :cond_4d
    cmp-long v2, v7, v5

    if-ltz v2, :cond_72

    cmp-long v2, v9, v7

    if-lez v2, :cond_72

    .line 122
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v0

    .line 123
    iget-wide v1, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->endSamples:J

    sub-long/2addr v1, v5

    long-to-int v2, v1

    new-array v1, v2, [F

    .line 124
    invoke-static {v0, v11, v1, v11, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    .line 126
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getOverlap()I

    move-result v0

    .line 127
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getBufferSize()I

    move-result v1

    sub-int/2addr v1, v0

    .line 128
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->onPlayEnd()V

    goto :goto_77

    :cond_72
    cmp-long v2, v9, v7

    if-lez v2, :cond_77

    return v11

    .line 134
    :cond_77
    :goto_77
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getByteBuffer()[B

    move-result-object p1

    .line 136
    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->audioTrack:Landroid/media/AudioTrack;

    mul-int/lit8 v0, v0, 0x2

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, p1, v0, v1}, Landroid/media/AudioTrack;->write([BII)I

    move-result p1

    if-gez p1, :cond_9d

    .line 138
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudioTrack.write returned error code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "AndroidAudioPlayer"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9d
    return v4
.end method

.method public processingFinished()V
    .registers 5

    .line 157
    :try_start_0
    sget-object v0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioTrack;

    .line 158
    invoke-virtual {v1}, Landroid/media/AudioTrack;->pause()V

    .line 159
    invoke-virtual {v1}, Landroid/media/AudioTrack;->flush()V

    .line 160
    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    .line 161
    invoke-virtual {v1}, Landroid/media/AudioTrack;->release()V

    goto :goto_6

    .line 163
    :cond_1f
    sget-object v0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->audioTrackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_25

    goto :goto_35

    :catch_25
    move-exception v0

    .line 165
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 166
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;->handler:Landroid/os/Handler;

    new-instance v1, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/dsp/io/android/AndroidAudioPlayer;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_35
    return-void
.end method
