.class public final Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;
.super Ljava/lang/Object;
.source "DSAudioRecorder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDSAudioRecorder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DSAudioRecorder.kt\ncom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,345:1\n1#2:346\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;

.field private static final enableCompress:Z


# instance fields
.field private audioRecord:Landroid/media/AudioRecord;

.field private final bufferSize$delegate:Lkotlin/Lazy;

.field private dbCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private isRecording:Z

.field private lastDBVolume:Ljava/lang/Double;

.field private mediaCodec:Landroid/media/MediaCodec;

.field private presentationTimeUs:J

.field private final recordingRunnable:Ljava/lang/Runnable;

.field private recordingThread:Ljava/lang/Thread;

.field private startRecordListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private streamCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private volumeTimes:I


# direct methods
.method public static synthetic $r8$lambda$3f0-bh2B46TKOCzv5MEPzO3oNqY(Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingRunnable$lambda$5(Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->Companion:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$Companion;

    const/4 v0, 0x1

    .line 31
    sput-boolean v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->enableCompress:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    sget-object v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;->INSTANCE:Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$bufferSize$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->bufferSize$delegate:Lkotlin/Lazy;

    .line 131
    new-instance v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method public static final synthetic access$getEnableCompress$cp()Z
    .registers 1

    .line 22
    sget-boolean v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->enableCompress:Z

    return v0
.end method

.method private final addAdtsHeader([BI)[B
    .registers 8

    const/4 v0, 0x7

    new-array v1, v0, [B

    .line 277
    array-length v2, p1

    add-int/2addr v2, v0

    const/4 v3, 0x0

    const/4 v4, -0x1

    aput-byte v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, -0x7

    aput-byte v4, v1, v3

    .line 284
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->sampleRateIndex(I)I

    move-result p2

    and-int/lit8 p2, p2, 0xf

    const/4 v3, 0x2

    shl-int/2addr p2, v3

    or-int/lit8 p2, p2, 0x40

    or-int/2addr p2, v3

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    shr-int/lit8 p2, v2, 0xb

    const/4 v3, 0x3

    and-int/2addr p2, v3

    or-int/lit16 p2, p2, 0x80

    int-to-byte p2, p2

    aput-byte p2, v1, v3

    shr-int/lit8 p2, v2, 0x3

    int-to-byte p2, p2

    const/4 v3, 0x4

    aput-byte p2, v1, v3

    and-int/lit8 p2, v2, 0x7

    const/4 v0, 0x5

    shl-int/2addr p2, v0

    or-int/lit8 p2, p2, 0x1f

    int-to-byte p2, p2

    aput-byte p2, v1, v0

    const/4 p2, 0x6

    const/4 v0, -0x4

    aput-byte v0, v1, p2

    .line 306
    invoke-static {v1, p1}, Lkotlin/collections/ArraysKt;->plus([B[B)[B

    move-result-object p1

    return-object p1
.end method

.method private final calculateDbLevel([S)D
    .registers 10

    .line 174
    array-length v0, p1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_13

    aget-short v4, p1, v3

    int-to-double v4, v4

    const/4 v6, 0x2

    int-to-double v6, v6

    .line 175
    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    add-double/2addr v1, v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 177
    :cond_13
    array-length p1, p1

    int-to-double v3, p1

    div-double/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    const/16 p1, 0x14

    int-to-double v2, p1

    const/16 p1, 0x7fff

    int-to-double v4, p1

    div-double/2addr v0, v4

    .line 178
    invoke-static {v0, v1}, Ljava/lang/Math;->log10(D)D

    move-result-wide v0

    mul-double v2, v2, v0

    return-wide v2
.end method

.method private final convertToByteArray([S)[B
    .registers 4

    .line 182
    array-length v0, p1

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 183
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/nio/ShortBuffer;->put([S)Ljava/nio/ShortBuffer;

    .line 186
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    const-string v0, "allocate(samples.size * …es)\n            }.array()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final encodeAac([S)[B
    .registers 13

    .line 224
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    const/4 v1, 0x0

    if-eqz v0, :cond_c3

    const-wide/16 v2, 0x2710

    invoke-virtual {v0, v2, v3}, Landroid/media/MediaCodec;->dequeueInputBuffer(J)I

    move-result v5

    .line 225
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_c3

    invoke-virtual {v0, v5}, Landroid/media/MediaCodec;->getInputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    if-nez v0, :cond_17

    goto/16 :goto_c3

    .line 227
    :cond_17
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->convertToByteArray([S)[B

    move-result-object p1

    .line 229
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    array-length v6, p1

    if-ge v4, v6, :cond_52

    .line 230
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "输入缓冲区溢出: 需要"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", 剩余"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dStreamAAC(Ljava/lang/String;)V

    .line 231
    iget-object v4, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_51

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    :cond_51
    return-object v1

    .line 235
    :cond_52
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 237
    iget-object v4, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v4, :cond_61

    const/4 v6, 0x0

    .line 240
    array-length v7, p1

    .line 241
    iget-wide v8, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->presentationTimeUs:J

    const/4 v10, 0x0

    .line 237
    invoke-virtual/range {v4 .. v10}, Landroid/media/MediaCodec;->queueInputBuffer(IIIJI)V

    .line 244
    :cond_61
    iget-wide v4, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->presentationTimeUs:J

    const-wide/32 v6, 0xfa00

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->presentationTimeUs:J

    .line 246
    new-instance p1, Landroid/media/MediaCodec$BufferInfo;

    invoke-direct {p1}, Landroid/media/MediaCodec$BufferInfo;-><init>()V

    .line 247
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_c3

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    move-result v0

    if-ltz v0, :cond_98

    .line 251
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v2, :cond_80

    invoke-virtual {v2, v0}, Landroid/media/MediaCodec;->getOutputBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 252
    :cond_80
    iget p1, p1, Landroid/media/MediaCodec$BufferInfo;->size:I

    new-array p1, p1, [B

    if-eqz v1, :cond_89

    .line 253
    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 254
    :cond_89
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_91

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/media/MediaCodec;->releaseOutputBuffer(IZ)V

    :cond_91
    const/16 v0, 0x3e80

    .line 255
    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->addAdtsHeader([BI)[B

    move-result-object v1

    goto :goto_c3

    :cond_98
    const/4 v4, -0x2

    if-ne v0, v4, :cond_c3

    .line 261
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_a4

    invoke-virtual {v0}, Landroid/media/MediaCodec;->getOutputFormat()Landroid/media/MediaFormat;

    move-result-object v0

    goto :goto_a5

    :cond_a4
    move-object v0, v1

    .line 262
    :goto_a5
    sget-object v4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "输出格式变化: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dStreamAAC(Ljava/lang/String;)V

    .line 264
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v0, :cond_c3

    invoke-virtual {v0, p1, v2, v3}, Landroid/media/MediaCodec;->dequeueOutputBuffer(Landroid/media/MediaCodec$BufferInfo;J)I

    nop

    :cond_c3
    :goto_c3
    return-object v1
.end method

.method private final getBufferSize()I
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->bufferSize$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    return v0
.end method

.method private final initAacEncoder()V
    .registers 6

    const-string v0, "audio/mp4a-latm"

    .line 61
    :try_start_2
    invoke-static {v0}, Landroid/media/MediaCodec;->createEncoderByType(Ljava/lang/String;)Landroid/media/MediaCodec;

    move-result-object v1

    const/16 v2, 0x3e80

    const/4 v3, 0x1

    .line 62
    invoke-static {v0, v2, v3}, Landroid/media/MediaFormat;->createAudioFormat(Ljava/lang/String;II)Landroid/media/MediaFormat;

    move-result-object v0

    const-string v4, "bitrate"

    .line 67
    invoke-virtual {v0, v4, v2}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "aac-profile"

    const/4 v4, 0x2

    .line 68
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "max-input-size"

    const/16 v4, 0x800

    .line 72
    invoke-virtual {v0, v2, v4}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "channel-count"

    .line 73
    invoke-virtual {v0, v2, v3}, Landroid/media/MediaFormat;->setInteger(Ljava/lang/String;I)V

    const-string v2, "createAudioFormat(\n     …UNT, 1)\n                }"

    .line 66
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v0, v2, v2, v3}, Landroid/media/MediaCodec;->configure(Landroid/media/MediaFormat;Landroid/view/Surface;Landroid/media/MediaCrypto;I)V

    .line 76
    invoke-virtual {v1}, Landroid/media/MediaCodec;->start()V

    .line 61
    iput-object v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;
    :try_end_32
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_32} :catch_33

    goto :goto_4a

    :catch_33
    move-exception v0

    .line 79
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "初始化aac异常："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dStreamAAC(Ljava/lang/String;)V

    :goto_4a
    return-void
.end method

.method private final initializeAudioRecorder()V
    .registers 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "MissingPermission"
        }
    .end annotation

    .line 94
    sget-boolean v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->enableCompress:Z

    if-eqz v0, :cond_7

    .line 95
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->initAacEncoder()V

    .line 97
    :cond_7
    new-instance v0, Landroid/media/AudioRecord;

    const/16 v3, 0x3e80

    const/16 v4, 0x10

    const/4 v5, 0x2

    .line 102
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->getBufferSize()I

    move-result v1

    mul-int/lit8 v6, v1, 0x2

    const/4 v2, 0x6

    move-object v1, v0

    .line 97
    invoke-direct/range {v1 .. v6}, Landroid/media/AudioRecord;-><init>(IIIII)V

    .line 103
    invoke-virtual {v0}, Landroid/media/AudioRecord;->getState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_21

    goto :goto_22

    :cond_21
    const/4 v2, 0x0

    :goto_22
    if-eqz v2, :cond_25

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 97
    :goto_26
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    return-void
.end method

.method private static final recordingRunnable$lambda$5(Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;)V
    .registers 10

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-boolean v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->enableCompress:Z

    if-eqz v0, :cond_c

    const/16 v0, 0x400

    goto :goto_10

    :cond_c
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->getBufferSize()I

    move-result v0

    :goto_10
    new-array v0, v0, [S

    .line 134
    :cond_12
    :goto_12
    iget-boolean v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecording:Z

    if-eqz v1, :cond_8f

    .line 135
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_21

    const/4 v2, 0x0

    array-length v3, v0

    invoke-virtual {v1, v0, v2, v3}, Landroid/media/AudioRecord;->read([SII)I

    move-result v1

    goto :goto_22

    :cond_21
    const/4 v1, -0x1

    :goto_22
    if-gtz v1, :cond_2f

    const/4 v2, -0x3

    if-ne v1, v2, :cond_12

    const-string p0, "AudioRecorder"

    const-string v0, "Invalid audio recording operation"

    .line 139
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 146
    :cond_2f
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->calculateDbLevel([S)D

    move-result-wide v1

    .line 148
    iget v3, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->volumeTimes:I

    const/4 v4, 0x1

    if-lez v3, :cond_73

    .line 149
    iget-object v3, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->lastDBVolume:Ljava/lang/Double;

    if-nez v3, :cond_4b

    .line 150
    iget-object v3, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->dbCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_6d

    int-to-double v5, v4

    mul-double v5, v5, v1

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6d

    :cond_4b
    if-eqz v3, :cond_52

    .line 152
    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    goto :goto_54

    :cond_52
    const-wide/16 v5, 0x0

    :goto_54
    sub-double v5, v1, v5

    const-wide v7, 0x3fc999999999999aL  # 0.2

    mul-double v5, v5, v7

    sub-double v5, v1, v5

    .line 155
    iget-object v3, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->dbCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v3, :cond_6d

    int-to-double v7, v4

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    invoke-interface {v3, v5}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 157
    :cond_6d
    :goto_6d
    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->lastDBVolume:Ljava/lang/Double;

    .line 159
    :cond_73
    iget v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->volumeTimes:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->volumeTimes:I

    .line 164
    sget-boolean v1, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->enableCompress:Z

    if-eqz v1, :cond_81

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->encodeAac([S)[B

    move-result-object v1

    goto :goto_85

    :cond_81
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->convertToByteArray([S)[B

    move-result-object v1

    :goto_85
    if-eqz v1, :cond_12

    .line 167
    iget-object v2, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->streamCallback:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_12

    invoke-interface {v2, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_12

    :cond_8f
    :goto_8f
    return-void
.end method

.method private final sampleRateIndex(I)I
    .registers 3

    const/16 v0, 0x8

    sparse-switch p1, :sswitch_data_20

    goto :goto_1e

    :sswitch_6
    const/4 v0, 0x0

    goto :goto_1e

    :sswitch_8
    const/4 v0, 0x1

    goto :goto_1e

    :sswitch_a
    const/4 v0, 0x2

    goto :goto_1e

    :sswitch_c
    const/4 v0, 0x3

    goto :goto_1e

    :sswitch_e
    const/4 v0, 0x4

    goto :goto_1e

    :sswitch_10
    const/4 v0, 0x5

    goto :goto_1e

    :sswitch_12
    const/4 v0, 0x6

    goto :goto_1e

    :sswitch_14
    const/4 v0, 0x7

    goto :goto_1e

    :sswitch_16
    const/16 v0, 0x9

    goto :goto_1e

    :sswitch_19
    const/16 v0, 0xa

    goto :goto_1e

    :sswitch_1c
    const/16 v0, 0xb

    :goto_1e
    :sswitch_1e
    return v0

    nop

    :sswitch_data_20
    .sparse-switch
        0x1f40 -> :sswitch_1c
        0x2b11 -> :sswitch_19
        0x2ee0 -> :sswitch_16
        0x3e80 -> :sswitch_1e
        0x5622 -> :sswitch_14
        0x5dc0 -> :sswitch_12
        0x7d00 -> :sswitch_10
        0xac44 -> :sswitch_e
        0xbb80 -> :sswitch_c
        0xfa00 -> :sswitch_a
        0x15888 -> :sswitch_8
        0x17700 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final destroy()V
    .registers 5

    const/4 v0, 0x0

    .line 329
    iput-boolean v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecording:Z

    .line 330
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_c

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V

    :cond_c
    const/4 v0, 0x0

    .line 331
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingThread:Ljava/lang/Thread;

    .line 332
    :try_start_f
    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 333
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v1, :cond_1c

    .line 334
    invoke-virtual {v1}, Landroid/media/AudioRecord;->stop()V

    .line 335
    invoke-virtual {v1}, Landroid/media/AudioRecord;->release()V

    goto :goto_1d

    :cond_1c
    move-object v1, v0

    .line 332
    :goto_1d
    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_21
    .catchall {:try_start_f .. :try_end_21} :catchall_22

    goto :goto_2d

    :catchall_22
    move-exception v1

    sget-object v2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 337
    :goto_2d
    invoke-static {v1}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_3a

    const-string v2, "AudioRecorder"

    const-string v3, "Stop recording failed"

    .line 338
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 340
    :cond_3a
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    .line 341
    iget-object v1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    if-eqz v1, :cond_43

    invoke-virtual {v1}, Landroid/media/MediaCodec;->stop()V

    .line 342
    :cond_43
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->mediaCodec:Landroid/media/MediaCodec;

    return-void
.end method

.method public final isRecord()Z
    .registers 2

    .line 219
    iget-boolean v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecording:Z

    return v0
.end method

.method public final setAudioDataCallback(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-[B",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 190
    new-instance v0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$setAudioDataCallback$1;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder$setAudioDataCallback$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->streamCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setVolumeLevelChangeListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Double;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 198
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->dbCallback:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final startRecording(Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 109
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->startRecordListener:Lkotlin/jvm/functions/Function2;

    .line 110
    iget-boolean v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecording:Z

    if-eqz v0, :cond_17

    .line 111
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x1bbc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 114
    :cond_17
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-nez v0, :cond_1e

    .line 115
    invoke-direct {p0}, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->initializeAudioRecorder()V

    :cond_1e
    const/4 v0, 0x0

    .line 117
    iput v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->volumeTimes:I

    const/4 v0, 0x1

    .line 118
    iput-boolean v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecording:Z

    .line 120
    :try_start_24
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Landroid/media/AudioRecord;->startRecording()V

    .line 121
    :cond_2b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const/16 v1, 0x7d0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_36} :catch_37

    goto :goto_42

    .line 123
    :catch_37
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const/16 v1, 0x1bc3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    :goto_42
    new-instance p1, Ljava/lang/Thread;

    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingRunnable:Ljava/lang/Runnable;

    const-string v1, "AudioRecorder-Thread"

    invoke-direct {p1, v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    .line 126
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 125
    iput-object p1, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingThread:Ljava/lang/Thread;

    return-void
.end method

.method public final stopRecording()V
    .registers 4

    const/4 v0, 0x0

    .line 202
    iput-boolean v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->isRecording:Z

    .line 204
    :try_start_3
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 205
    :cond_a
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->recordingThread:Ljava/lang/Thread;

    if-eqz v0, :cond_13

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Ljava/lang/Thread;->join(J)V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_13} :catch_13

    .line 208
    :catch_13
    :cond_13
    :try_start_13
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 209
    iget-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->audioRecord:Landroid/media/AudioRecord;

    if-eqz v0, :cond_1c

    .line 210
    invoke-virtual {v0}, Landroid/media/AudioRecord;->stop()V

    :cond_1c
    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/codemao/toolssdk/aikids/steamrecord/DSAudioRecorder;->lastDBVolume:Ljava/lang/Double;

    .line 213
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 208
    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_25
    .catchall {:try_start_13 .. :try_end_25} :catchall_26

    goto :goto_31

    :catchall_26
    move-exception v0

    sget-object v1, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v0}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 213
    :goto_31
    invoke-static {v0}, Lkotlin/Result;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_3e

    const-string v1, "AudioRecorder"

    const-string v2, "Stop recording failed"

    .line 214
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3e
    return-void
.end method
