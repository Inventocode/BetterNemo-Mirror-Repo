.class public final Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;
.super Ljava/lang/Object;
.source "RealtimePcmPlayerWithAudioTrack.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;

.field private static final END_OF_STREAM:[B


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final audioFormat:I

.field private audioTrack:Landroid/media/AudioTrack;

.field private bufferSizeInBytes:I

.field private final channelConfig:I

.field private isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final pcmDataQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "[B>;"
        }
    .end annotation
.end field

.field private playThread:Ljava/lang/Thread;

.field private final sampleRateInHz:I


# direct methods
.method public static synthetic $r8$lambda$EMSD-O2QlRb9H01_BKAetEb6r2U(Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;Lkotlin/jvm/functions/Function1;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->startPlaying$lambda$0(Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->Companion:Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$Companion;

    const/4 v0, 0x0

    new-array v0, v0, [B

    .line 29
    sput-object v0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->END_OF_STREAM:[B

    return-void
.end method

.method public constructor <init>(III)V
    .registers 4

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->sampleRateInHz:I

    .line 16
    iput p2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->channelConfig:I

    .line 17
    iput p3, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioFormat:I

    const-string p1, "audio_stream"

    .line 20
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    .line 23
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 p2, 0x400

    invoke-direct {p1, p2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->pcmDataQueue:Ljava/util/concurrent/BlockingQueue;

    .line 24
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 33
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->initializeAudioTrack()V

    return-void
.end method

.method public synthetic constructor <init>(IIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 7

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_6

    const/16 p1, 0x3e80

    :cond_6
    and-int/lit8 p5, p4, 0x2

    const/4 v0, 0x4

    if-eqz p5, :cond_c

    const/4 p2, 0x4

    :cond_c
    and-int/2addr p4, v0

    if-eqz p4, :cond_10

    const/4 p3, 0x2

    .line 14
    :cond_10
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;-><init>(III)V

    return-void
.end method

.method public static final synthetic access$getEND_OF_STREAM$cp()[B
    .registers 1

    .line 14
    sget-object v0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->END_OF_STREAM:[B

    return-object v0
.end method

.method private final initializeAudioTrack()V
    .registers 13

    .line 37
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_109

    const/4 v0, 0x0

    .line 41
    :try_start_5
    iget v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->sampleRateInHz:I

    .line 42
    iget v2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->channelConfig:I

    .line 43
    iget v3, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioFormat:I

    .line 40
    invoke-static {v1, v2, v3}, Landroid/media/AudioTrack;->getMinBufferSize(III)I

    move-result v1

    iput v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->bufferSizeInBytes:I

    if-gtz v1, :cond_1b

    .line 46
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v2, "无法获取有效的最小缓冲区大小。"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 49
    :cond_1b
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "最小缓冲区大小: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->bufferSizeInBytes:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " 字节"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-lt v1, v2, :cond_93

    .line 54
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v2, "使用 AudioTrack.Builder 初始化"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance v1, Landroid/media/AudioTrack$Builder;

    invoke-direct {v1}, Landroid/media/AudioTrack$Builder;-><init>()V

    .line 57
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 58
    invoke-virtual {v2, v4}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 59
    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    .line 56
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioAttributes(Landroid/media/AudioAttributes;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 63
    new-instance v2, Landroid/media/AudioFormat$Builder;

    invoke-direct {v2}, Landroid/media/AudioFormat$Builder;-><init>()V

    .line 64
    iget v5, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->sampleRateInHz:I

    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setSampleRate(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 65
    iget v5, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioFormat:I

    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setEncoding(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 66
    iget v5, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->channelConfig:I

    invoke-virtual {v2, v5}, Landroid/media/AudioFormat$Builder;->setChannelMask(I)Landroid/media/AudioFormat$Builder;

    move-result-object v2

    .line 67
    invoke-virtual {v2}, Landroid/media/AudioFormat$Builder;->build()Landroid/media/AudioFormat;

    move-result-object v2

    .line 62
    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setAudioFormat(Landroid/media/AudioFormat;)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 69
    iget v2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->bufferSizeInBytes:I

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2}, Landroid/media/AudioTrack$Builder;->setBufferSizeInBytes(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 70
    invoke-virtual {v1, v4}, Landroid/media/AudioTrack$Builder;->setTransferMode(I)Landroid/media/AudioTrack$Builder;

    move-result-object v1

    .line 71
    invoke-virtual {v1}, Landroid/media/AudioTrack$Builder;->build()Landroid/media/AudioTrack;

    move-result-object v1

    .line 55
    iput-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    goto :goto_ae

    .line 73
    :cond_93
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v2, "使用旧的 AudioTrack 构造函数初始化"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Landroid/media/AudioTrack;

    const/4 v6, 0x3

    .line 76
    iget v7, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->sampleRateInHz:I

    .line 77
    iget v8, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->channelConfig:I

    .line 78
    iget v9, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioFormat:I

    .line 79
    iget v2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->bufferSizeInBytes:I

    mul-int/lit8 v10, v2, 0x2

    const/4 v11, 0x1

    move-object v5, v1

    .line 74
    invoke-direct/range {v5 .. v11}, Landroid/media/AudioTrack;-><init>(IIIIII)V

    iput-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 84
    :goto_ae
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v2, 0x0

    if-eqz v1, :cond_ba

    invoke-virtual {v1}, Landroid/media/AudioTrack;->getState()I

    move-result v1

    if-ne v1, v4, :cond_ba

    goto :goto_bb

    :cond_ba
    const/4 v4, 0x0

    :goto_bb
    if-eqz v4, :cond_c5

    .line 85
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v2, "AudioTrack 初始化完成。"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_109

    .line 87
    :cond_c5
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioTrack 初始化失败。状态: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v3, :cond_de

    invoke-virtual {v3}, Landroid/media/AudioTrack;->getState()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    goto :goto_df

    :cond_de
    move-object v3, v0

    :goto_df
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;
    :try_end_eb
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_eb} :catch_ec

    goto :goto_109

    :catch_ec
    move-exception v1

    .line 91
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "创建 AudioTrack 实例失败: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    :cond_109
    :goto_109
    return-void
.end method

.method private static final startPlaying$lambda$0(Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;Lkotlin/jvm/functions/Function1;)V
    .registers 7

    const-string v0, "播放线程已结束。"

    const-string v1, "this$0"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    :cond_7
    :goto_7
    :try_start_7
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_75

    .line 135
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->pcmDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    .line 136
    sget-object v2, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->END_OF_STREAM:[B

    const/4 v3, 0x0

    if-ne v1, v2, :cond_37

    .line 137
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "接收到流结束标记。"

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dAIKids(Ljava/lang/String;)V

    .line 138
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 139
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Landroid/media/AudioTrack;->stop()V

    :cond_2f
    if-eqz p1, :cond_75

    .line 140
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-interface {p1, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_75

    .line 143
    :cond_37
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 144
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v2, :cond_47

    array-length v4, v1

    invoke-virtual {v2, v1, v3, v4}, Landroid/media/AudioTrack;->write([BII)I

    .line 145
    :cond_47
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "队列_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "写入数据到 AudioTrack，大小: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v1, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " 字节"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_74
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_74} :catch_7d
    .catchall {:try_start_7 .. :try_end_74} :catchall_7b

    goto :goto_7

    .line 151
    :cond_75
    :goto_75
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_99

    :catchall_7b
    move-exception p1

    goto :goto_9a

    :catch_7d
    move-exception p1

    .line 149
    :try_start_7e
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "播放线程被中断: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_98
    .catchall {:try_start_7e .. :try_end_98} :catchall_7b

    goto :goto_75

    :goto_99
    return-void

    .line 151
    :goto_9a
    iget-object p0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw p1
.end method


# virtual methods
.method public final destroy()V
    .registers 1

    .line 189
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->releasePlayer()V

    return-void
.end method

.method public final enqueuePcmData([B)V
    .registers 5

    const-string v0, "data"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 104
    :try_start_5
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->pcmDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V

    .line 106
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "队列_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "添加 PCM 数据到播放队列，大小: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " 字节，队列大小: "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->pcmDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {p1}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_40
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_40} :catch_41

    goto :goto_5c

    :catch_41
    move-exception p1

    .line 110
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "向 PCM 播放队列添加数据时被中断: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5c
    return-void
.end method

.method public final releasePlayer()V
    .registers 3

    .line 180
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "释放 AudioTrack 资源。"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-virtual {p0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->stopPlaying()V

    .line 182
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/media/AudioTrack;->release()V

    :cond_11
    const/4 v0, 0x0

    .line 183
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    .line 184
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->pcmDataQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 185
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "AudioTrack 已释放，队列已清空。"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public final startPlaying(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 118
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "开始播放实时 PCM 数据。"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-nez v0, :cond_e

    .line 120
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->initializeAudioTrack()V

    .line 123
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Landroid/media/AudioTrack;->getState()I

    move-result v0

    if-ne v0, v1, :cond_1c

    const/4 v0, 0x1

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_45

    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_2e

    invoke-virtual {v0}, Landroid/media/AudioTrack;->play()V

    .line 129
    :cond_2e
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "AudioTrack 开始播放。"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;Lkotlin/jvm/functions/Function1;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->playThread:Ljava/lang/Thread;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_62

    .line 155
    :cond_45
    iget-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz p1, :cond_50

    invoke-virtual {p1}, Landroid/media/AudioTrack;->getState()I

    move-result p1

    if-ne p1, v1, :cond_50

    goto :goto_51

    :cond_50
    const/4 v1, 0x0

    :goto_51
    if-nez v1, :cond_5b

    .line 156
    iget-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v0, "AudioTrack 未初始化，无法开始播放。"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_62

    .line 158
    :cond_5b
    iget-object p1, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v0, "AudioTrack 播放已在进行中。"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_62
    return-void
.end method

.method public final stopPlaying()V
    .registers 4

    .line 166
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "停止播放实时 PCM 数据。"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->isPlaying:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_27

    .line 168
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->playThread:Ljava/lang/Thread;

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 169
    :cond_18
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->audioTrack:Landroid/media/AudioTrack;

    if-eqz v0, :cond_1f

    invoke-virtual {v0}, Landroid/media/AudioTrack;->stop()V

    .line 170
    :cond_1f
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "AudioTrack 已停止。"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2e

    .line 172
    :cond_27
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/streamaudio/RealtimePcmPlayerWithAudioTrack;->TAG:Ljava/lang/String;

    const-string v1, "AudioTrack 播放尚未开始或已停止。"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2e
    return-void
.end method
