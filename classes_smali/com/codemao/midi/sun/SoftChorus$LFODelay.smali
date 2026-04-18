.class Lcom/codemao/midi/sun/SoftChorus$LFODelay;
.super Ljava/lang/Object;
.source "SoftChorus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftChorus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "LFODelay"
.end annotation


# instance fields
.field private controlrate:D

.field private depth:D

.field private phase:D

.field private phase_step:D

.field private samplerate:D

.field private vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;


# direct methods
.method public constructor <init>(DD)V
    .registers 7

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    .line 118
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    const-wide/16 v0, 0x0

    .line 119
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase_step:D

    .line 120
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->depth:D

    .line 126
    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->samplerate:D

    .line 127
    iput-wide p3, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->controlrate:D

    .line 129
    new-instance p1, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    const-wide/high16 p2, 0x4024000000000000L  # 10.0

    add-double/2addr v0, p2

    const-wide/high16 p2, 0x4000000000000000L  # 2.0

    mul-double v0, v0, p2

    double-to-int p2, v0

    invoke-direct {p1, p2}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;-><init>(I)V

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    return-void
.end method


# virtual methods
.method public processMix([F[F[F)V
    .registers 11

    .line 160
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase_step:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    .line 161
    :goto_7
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    const-wide v2, 0x401921fb54442d18L  # 6.283185307179586

    cmpl-double v4, v0, v2

    if-lez v4, :cond_16

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    goto :goto_7

    .line 162
    :cond_16
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    iget-wide v3, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->depth:D

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    mul-double v3, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    add-double/2addr v0, v5

    mul-double v3, v3, v0

    double-to-float v0, v3

    invoke-virtual {v2, v0}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->setDelay(F)V

    .line 163
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->processMix([F[F[F)V

    return-void
.end method

.method public processReplace([F[F[F)V
    .registers 11

    .line 167
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase_step:D

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    .line 168
    :goto_7
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    const-wide v2, 0x401921fb54442d18L  # 6.283185307179586

    cmpl-double v4, v0, v2

    if-lez v4, :cond_16

    sub-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    goto :goto_7

    .line 169
    :cond_16
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    iget-wide v3, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->depth:D

    const-wide/high16 v5, 0x3fe0000000000000L  # 0.5

    mul-double v3, v3, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v5, 0x4000000000000000L  # 2.0

    add-double/2addr v0, v5

    mul-double v3, v3, v0

    double-to-float v0, v3

    invoke-virtual {v2, v0}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->setDelay(F)V

    .line 170
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->processReplace([F[F[F)V

    return-void
.end method

.method public setDepth(D)V
    .registers 6

    .line 134
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->samplerate:D

    mul-double p1, p1, v0

    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->depth:D

    .line 135
    new-instance v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    const-wide/high16 v1, 0x4024000000000000L  # 10.0

    add-double/2addr p1, v1

    const-wide/high16 v1, 0x4000000000000000L  # 2.0

    mul-double p1, p1, v1

    double-to-int p1, p1

    invoke-direct {v0, p1}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;-><init>(I)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    return-void
.end method

.method public setFeedBack(F)V
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->setFeedBack(F)V

    return-void
.end method

.method public setGain(F)V
    .registers 3

    .line 152
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->setGain(F)V

    return-void
.end method

.method public setPhase(D)V
    .registers 3

    .line 144
    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase:D

    return-void
.end method

.method public setRate(D)V
    .registers 5

    .line 139
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->controlrate:D

    div-double/2addr p1, v0

    const-wide v0, 0x401921fb54442d18L  # 6.283185307179586

    mul-double p1, p1, v0

    .line 140
    iput-wide p1, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->phase_step:D

    return-void
.end method

.method public setReverbSendGain(F)V
    .registers 3

    .line 156
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->vdelay:Lcom/codemao/midi/sun/SoftChorus$VariableDelay;

    invoke-virtual {v0, p1}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->setReverbSendGain(F)V

    return-void
.end method
