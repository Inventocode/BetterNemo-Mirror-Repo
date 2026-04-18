.class public Lcom/codemao/toolssdk/dsp/GainProcessor;
.super Ljava/lang/Object;
.source "GainProcessor.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# instance fields
.field private gain:D


# direct methods
.method public constructor <init>(D)V
    .registers 3

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/dsp/GainProcessor;->setGain(D)V

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 7

    .line 57
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getFloatBuffer()[F

    move-result-object v0

    .line 58
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getOverlap()I

    move-result p1

    :goto_8
    array-length v1, v0

    if-ge p1, v1, :cond_29

    .line 59
    aget v1, v0, p1

    float-to-double v1, v1

    iget-wide v3, p0, Lcom/codemao/toolssdk/dsp/GainProcessor;->gain:D

    mul-double v1, v1, v3

    double-to-float v1, v1

    const/high16 v2, -0x40800000  # -1.0f

    const/high16 v3, 0x3f800000  # 1.0f

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1e

    const/high16 v1, 0x3f800000  # 1.0f

    goto :goto_24

    :cond_1e
    cmpg-float v3, v1, v2

    if-gez v3, :cond_24

    const/high16 v1, -0x40800000  # -1.0f

    .line 65
    :cond_24
    :goto_24
    aput v1, v0, p1

    add-int/lit8 p1, p1, 0x1

    goto :goto_8

    :cond_29
    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 1

    return-void
.end method

.method public setGain(D)V
    .registers 3

    .line 52
    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/GainProcessor;->gain:D

    return-void
.end method
