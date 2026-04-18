.class public Lcom/codemao/toolssdk/dsp/AudioEvent;
.super Ljava/lang/Object;
.source "AudioEvent.java"


# instance fields
.field private byteBuffer:[B

.field private bytesProcessed:J

.field private final converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

.field private floatBuffer:[F

.field private final format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

.field private overlap:I


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)V
    .registers 2

    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 78
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    .line 79
    invoke-static {p1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->getConverter(Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;)Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    const/4 p1, 0x0

    .line 80
    iput p1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->overlap:I

    return-void
.end method

.method public static calculateMax([F)D
    .registers 7

    .line 246
    array-length v0, p0

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    :goto_4
    if-ge v3, v0, :cond_14

    aget v4, p0, v3

    .line 247
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    invoke-static {v4, v5, v1, v2}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_14
    return-wide v1
.end method

.method public static calculateRMS([F)D
    .registers 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    .line 228
    :goto_3
    array-length v3, p0

    if-ge v2, v3, :cond_11

    .line 229
    aget v3, p0, v2

    aget v4, p0, v2

    mul-float v3, v3, v4

    float-to-double v3, v3

    add-double/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 231
    :cond_11
    array-length p0, p0

    int-to-double v2, p0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    div-double/2addr v0, v2

    .line 232
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method private static linearToDecibel(D)D
    .registers 4

    .line 287
    invoke-static {p0, p1}, Ljava/lang/Math;->log10(D)D

    move-result-wide p0

    const-wide/high16 v0, 0x4034000000000000L  # 20.0

    mul-double p0, p0, v0

    return-wide p0
.end method

.method private static soundPressureLevel([F)D
    .registers 3

    .line 275
    invoke-static {p0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->calculateRMS([F)D

    move-result-wide v0

    .line 276
    invoke-static {v0, v1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->linearToDecibel(D)D

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public getBufferSize()I
    .registers 2

    .line 96
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public getByteBuffer()[B
    .registers 4

    .line 173
    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v0

    array-length v0, v0

    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result v1

    mul-int v0, v0, v1

    .line 174
    iget-object v1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->byteBuffer:[B

    if-eqz v1, :cond_14

    array-length v1, v1

    if-eq v1, v0, :cond_18

    .line 175
    :cond_14
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->byteBuffer:[B

    .line 177
    :cond_18
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->converter:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->byteBuffer:[B

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFloatConverter;->toByteArray([F[B)[B

    .line 178
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->byteBuffer:[B

    return-object v0
.end method

.method public getFloatBuffer()[F
    .registers 2

    .line 194
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->floatBuffer:[F

    return-object v0
.end method

.method public getOverlap()I
    .registers 2

    .line 112
    iget v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->overlap:I

    return v0
.end method

.method public getTimeStamp()D
    .registers 5

    .line 137
    iget-wide v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->bytesProcessed:J

    long-to-double v0, v0

    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getFrameSize()I

    move-result v2

    int-to-double v2, v2

    div-double/2addr v0, v2

    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->format:Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/dsp/io/TarsosDSPAudioFormat;->getSampleRate()F

    move-result v2

    float-to-double v2, v2

    div-double/2addr v0, v2

    return-wide v0
.end method

.method public getdBSPL()D
    .registers 3

    .line 215
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->floatBuffer:[F

    invoke-static {v0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->soundPressureLevel([F)D

    move-result-wide v0

    return-wide v0
.end method

.method public setBytesProcessed(J)V
    .registers 3

    .line 129
    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->bytesProcessed:J

    return-void
.end method

.method public setFloatBuffer([F)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->floatBuffer:[F

    return-void
.end method

.method public setOverlap(I)V
    .registers 2

    .line 120
    iput p1, p0, Lcom/codemao/toolssdk/dsp/AudioEvent;->overlap:I

    return-void
.end method
