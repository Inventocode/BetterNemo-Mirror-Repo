.class public Lcom/codemao/toolssdk/dsp/FadeOut;
.super Ljava/lang/Object;
.source "FadeOut.java"

# interfaces
.implements Lcom/codemao/toolssdk/dsp/AudioProcessor;


# instance fields
.field private duration:D

.field private firstTime:D

.field private gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

.field private startTime:D

.field private time:D


# direct methods
.method public constructor <init>(DD)V
    .registers 8

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    .line 7
    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->firstTime:D

    .line 9
    new-instance v0, Lcom/codemao/toolssdk/dsp/GainProcessor;

    const-wide v1, 0x3feccccccccccccdL  # 0.9

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/dsp/GainProcessor;-><init>(D)V

    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    .line 17
    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->duration:D

    .line 18
    iput-wide p3, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->startTime:D

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 11

    .line 23
    iget-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->firstTime:D

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_e

    .line 24
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getTimeStamp()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->firstTime:D

    .line 26
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getTimeStamp()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->firstTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->time:D

    .line 27
    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->startTime:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_3b

    iget-wide v4, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->duration:D

    add-double v6, v2, v4

    cmpg-double v8, v0, v6

    if-gtz v8, :cond_3b

    const-wide/high16 v6, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, v2

    div-double/2addr v0, v4

    sub-double/2addr v6, v0

    const-wide/16 v0, 0x0

    cmpg-double v2, v6, v0

    if-gtz v2, :cond_31

    move-wide v6, v0

    .line 32
    :cond_31
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-virtual {v0, v6, v7}, Lcom/codemao/toolssdk/dsp/GainProcessor;->setGain(D)V

    .line 33
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/dsp/GainProcessor;->process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z

    :cond_3b
    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeOut;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/GainProcessor;->processingFinished()V

    return-void
.end method
