.class public Lcom/codemao/toolssdk/dsp/FadeIn;
.super Ljava/lang/Object;
.source "FadeIn.java"

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

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, -0x4010000000000000L  # -1.0

    .line 9
    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->firstTime:D

    .line 11
    new-instance v0, Lcom/codemao/toolssdk/dsp/GainProcessor;

    const-wide v1, 0x3fb999999999999aL  # 0.1

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/dsp/GainProcessor;-><init>(D)V

    iput-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    .line 20
    iput-wide p1, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->duration:D

    .line 21
    iput-wide p3, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->startTime:D

    return-void
.end method


# virtual methods
.method public process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z
    .registers 8

    .line 26
    iget-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->firstTime:D

    const-wide/high16 v2, -0x4010000000000000L  # -1.0

    cmpl-double v4, v0, v2

    if-nez v4, :cond_e

    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getTimeStamp()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->firstTime:D

    .line 27
    :cond_e
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsp/AudioEvent;->getTimeStamp()D

    move-result-wide v0

    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->firstTime:D

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->time:D

    .line 29
    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->startTime:D

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_55

    iget-wide v4, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->duration:D

    add-double/2addr v2, v4

    cmpg-double v4, v0, v2

    if-gtz v4, :cond_55

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "process: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->time:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-wide v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->time:D

    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->startTime:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->duration:D

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_4b

    move-wide v0, v2

    .line 35
    :cond_4b
    iget-object v2, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-virtual {v2, v0, v1}, Lcom/codemao/toolssdk/dsp/GainProcessor;->setGain(D)V

    .line 36
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/dsp/GainProcessor;->process(Lcom/codemao/toolssdk/dsp/AudioEvent;)Z

    :cond_55
    const/4 p1, 0x1

    return p1
.end method

.method public processingFinished()V
    .registers 2

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/dsp/FadeIn;->gp:Lcom/codemao/toolssdk/dsp/GainProcessor;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/dsp/GainProcessor;->processingFinished()V

    return-void
.end method
