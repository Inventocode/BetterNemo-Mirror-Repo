.class public Lcom/codemao/toolssdk/dsp/resample/RateTransposer;
.super Ljava/lang/Object;
.source "RateTransposer.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# instance fields
.field private factor:D

.field private r:Lcom/codemao/toolssdk/dsp/resample/Resampler;


# direct methods
.method public constructor <init>(D)V
    .registers 9

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;->factor:D

    .line 58
    new-instance p1, Lcom/codemao/toolssdk/dsp/resample/Resampler;

    const/4 v1, 0x0

    const-wide v2, 0x3fb999999999999aL  # 0.1

    const-wide/high16 v4, 0x4014000000000000L  # 5.0

    move-object v0, p1

    invoke-direct/range {v0 .. v5}, Lcom/codemao/toolssdk/dsp/resample/Resampler;-><init>(ZDD)V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;->r:Lcom/codemao/toolssdk/dsp/resample/Resampler;

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 14

    .line 67
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v3

    .line 71
    array-length v0, v3

    int-to-double v0, v0

    iget-wide v4, p0, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;->factor:D

    mul-double v0, v0, v4

    double-to-int v9, v0

    new-array v10, v9, [F

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;->r:Lcom/codemao/toolssdk/dsp/resample/Resampler;

    array-length v6, v3

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v11, 0x0

    move-wide v1, v4

    move v4, v7

    move v5, v6

    move v6, v8

    move-object v7, v10

    move v8, v11

    invoke-virtual/range {v0 .. v9}, Lcom/codemao/toolssdk/dsp/resample/Resampler;->process(D[FIIZ[FII)Lcom/codemao/toolssdk/dsp/resample/Resampler$Result;

    .line 74
    invoke-virtual {p1, v10}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setFloatBuffer([F)V

    .line 76
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getOverlap()I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/resample/RateTransposer;->factor:D

    mul-double v0, v0, v2

    double-to-int v0, v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/dsp/AudioEvent;->setOverlap(I)V

    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 1

    return-void
.end method
