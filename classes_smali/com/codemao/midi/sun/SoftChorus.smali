.class public Lcom/codemao/midi/sun/SoftChorus;
.super Ljava/lang/Object;
.source "SoftChorus.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftAudioProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/sun/SoftChorus$LFODelay;,
        Lcom/codemao/midi/sun/SoftChorus$VariableDelay;
    }
.end annotation


# instance fields
.field private controlrate:F

.field private dirty:Z

.field private dirty_vdelay1L_depth:D

.field private dirty_vdelay1L_feedback:F

.field private dirty_vdelay1L_rate:D

.field private dirty_vdelay1L_reverbsendgain:F

.field private dirty_vdelay1R_depth:D

.field private dirty_vdelay1R_feedback:F

.field private dirty_vdelay1R_rate:D

.field private dirty_vdelay1R_reverbsendgain:F

.field private inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private left:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private mix:Z

.field private reverb:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field private rgain:F

.field private right:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field silentcounter:D

.field private vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

.field private vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 174
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftChorus;->mix:Z

    const/4 v1, 0x0

    .line 181
    iput v1, p0, Lcom/codemao/midi/sun/SoftChorus;->rgain:F

    .line 182
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    const-wide v0, 0x408f400000000000L  # 1000.0

    .line 287
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus;->silentcounter:D

    return-void
.end method


# virtual methods
.method public globalParameterControlChange([IJJ)V
    .registers 17

    move-object v7, p0

    move-object v0, p1

    move-wide v8, p4

    .line 207
    array-length v1, v0

    const/4 v10, 0x1

    if-ne v1, v10, :cond_134

    const/4 v1, 0x0

    .line 208
    aget v1, v0, v1

    const/16 v2, 0x82

    if-ne v1, v2, :cond_134

    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-nez v3, :cond_e7

    long-to-int v1, v8

    if-eqz v1, :cond_c6

    if-eq v1, v10, :cond_a7

    const/4 v2, 0x2

    if-eq v1, v2, :cond_87

    const/4 v2, 0x3

    if-eq v1, v2, :cond_67

    const/4 v2, 0x4

    if-eq v1, v2, :cond_47

    const/4 v2, 0x5

    if-eq v1, v2, :cond_27

    goto/16 :goto_120

    :cond_27
    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x70

    move-object v1, p0

    move-object v2, p1

    .line 242
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x1

    .line 243
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x5

    .line 244
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    .line 245
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    goto/16 :goto_120

    :cond_47
    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x40

    move-object v1, p0

    move-object v2, p1

    .line 236
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x2

    .line 237
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x18

    .line 238
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    .line 239
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    goto/16 :goto_120

    :cond_67
    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x10

    move-object v1, p0

    move-object v2, p1

    .line 230
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x9

    .line 231
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x10

    .line 232
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    .line 233
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    goto/16 :goto_120

    :cond_87
    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x8

    move-object v1, p0

    move-object v2, p1

    .line 224
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3

    .line 225
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x13

    .line 226
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    .line 227
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    goto/16 :goto_120

    :cond_a7
    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x5

    move-object v1, p0

    move-object v2, p1

    .line 218
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x9

    .line 219
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x13

    .line 220
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    .line 221
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    goto :goto_120

    :cond_c6
    const-wide/16 v3, 0x3

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 212
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x1

    const-wide/16 v5, 0x3

    .line 213
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x2

    const-wide/16 v5, 0x5

    .line 214
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    const-wide/16 v3, 0x4

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-object v2, p1

    .line 215
    :try_start_e3
    invoke-virtual/range {v1 .. v6}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V
    :try_end_e6
    .catchall {:try_start_e3 .. :try_end_e6} :catchall_135

    goto :goto_120

    :cond_e7
    const-wide/16 v0, 0x1

    cmp-long v2, p2, v0

    if-nez v2, :cond_fc

    long-to-double v0, v8

    const-wide v2, 0x3fbf3b645a1cac08L  # 0.122

    mul-double v0, v0, v2

    .line 251
    iput-wide v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_rate:D

    .line 252
    iput-wide v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_rate:D

    .line 253
    iput-boolean v10, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    goto :goto_120

    :cond_fc
    const-wide/16 v2, 0x2

    cmp-long v4, p2, v2

    if-nez v4, :cond_10e

    add-long/2addr v0, v8

    long-to-double v0, v0

    const-wide/high16 v2, 0x40a9000000000000L  # 3200.0

    div-double/2addr v0, v2

    .line 255
    iput-wide v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_depth:D

    .line 256
    iput-wide v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_depth:D

    .line 257
    iput-boolean v10, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    goto :goto_120

    :cond_10e
    const-wide/16 v0, 0x3

    cmp-long v2, p2, v0

    if-nez v2, :cond_120

    long-to-float v0, v8

    const v1, 0x3bfa0514  # 0.00763f

    mul-float v0, v0, v1

    .line 259
    iput v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_feedback:F

    .line 260
    iput v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_feedback:F

    .line 261
    iput-boolean v10, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    :cond_120
    :goto_120
    const-wide/16 v0, 0x4

    cmp-long v2, p2, v0

    if-nez v2, :cond_134

    long-to-float v0, v8

    const v1, 0x3c00f12c  # 0.00787f

    mul-float v0, v0, v1

    .line 264
    iput v0, v7, Lcom/codemao/midi/sun/SoftChorus;->rgain:F

    .line 265
    iput v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_reverbsendgain:F

    .line 266
    iput v0, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_reverbsendgain:F

    .line 267
    iput-boolean v10, v7, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    :cond_134
    return-void

    :catchall_135
    move-exception v0

    move-object v1, v0

    .line 215
    throw v1
.end method

.method public init(FF)V
    .registers 9

    .line 194
    iput p2, p0, Lcom/codemao/midi/sun/SoftChorus;->controlrate:F

    .line 195
    new-instance v0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    float-to-double v1, p1

    float-to-double p1, p2

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;-><init>(DD)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    .line 196
    new-instance v0, Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    invoke-direct {v0, v1, v2, p1, p2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;-><init>(DD)V

    iput-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    .line 197
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    const/high16 p2, 0x3f800000  # 1.0f

    invoke-virtual {p1, p2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setGain(F)V

    .line 198
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    invoke-virtual {p1, p2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setGain(F)V

    .line 199
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    const-wide v0, 0x3ff921fb54442d18L  # 1.5707963267948966

    invoke-virtual {p1, v0, v1}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setPhase(D)V

    .line 200
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setPhase(D)V

    const/4 p1, 0x1

    new-array v1, p1, [I

    const/4 p1, 0x0

    const/16 p2, 0x82

    aput p2, v1, p1

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x2

    move-object v0, p0

    .line 202
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/midi/sun/SoftChorus;->globalParameterControlChange([IJJ)V

    return-void
.end method

.method public processAudio()V
    .registers 7

    .line 291
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 292
    iget-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus;->silentcounter:D

    const/high16 v2, 0x3f800000  # 1.0f

    iget v3, p0, Lcom/codemao/midi/sun/SoftChorus;->controlrate:F

    div-float/2addr v2, v3

    float-to-double v2, v2

    add-double/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus;->silentcounter:D

    const-wide/high16 v2, 0x3ff0000000000000L  # 1.0

    cmpl-double v4, v0, v2

    if-lez v4, :cond_2c

    .line 295
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftChorus;->mix:Z

    if-nez v0, :cond_27

    .line 296
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->left:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    .line 297
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->right:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    :cond_27
    return-void

    :cond_28
    const-wide/16 v0, 0x0

    .line 302
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftChorus;->silentcounter:D

    .line 304
    :cond_2c
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChorus;->left:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v1}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v1

    .line 306
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftChorus;->right:Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_3f

    move-object v2, v3

    goto :goto_43

    :cond_3f
    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 307
    :goto_43
    iget v4, p0, Lcom/codemao/midi/sun/SoftChorus;->rgain:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-eqz v4, :cond_50

    iget-object v3, p0, Lcom/codemao/midi/sun/SoftChorus;->reverb:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v3}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 309
    :cond_50
    iget-boolean v4, p0, Lcom/codemao/midi/sun/SoftChorus;->mix:Z

    if-eqz v4, :cond_61

    .line 310
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    invoke-virtual {v4, v0, v1, v3}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->processMix([F[F[F)V

    if-eqz v2, :cond_6d

    .line 312
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    invoke-virtual {v1, v0, v2, v3}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->processMix([F[F[F)V

    goto :goto_6d

    .line 314
    :cond_61
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    invoke-virtual {v4, v0, v1, v3}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->processReplace([F[F[F)V

    if-eqz v2, :cond_6d

    .line 316
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    invoke-virtual {v1, v0, v2, v3}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->processReplace([F[F[F)V

    :cond_6d
    :goto_6d
    return-void
.end method

.method public processControlLogic()V
    .registers 4

    .line 275
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    if-eqz v0, :cond_3f

    const/4 v0, 0x0

    .line 276
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty:Z

    .line 277
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_rate:D

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setRate(D)V

    .line 278
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_rate:D

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setRate(D)V

    .line 279
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_depth:D

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setDepth(D)V

    .line 280
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget-wide v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_depth:D

    invoke-virtual {v0, v1, v2}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setDepth(D)V

    .line 281
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_feedback:F

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setFeedBack(F)V

    .line 282
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_feedback:F

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setFeedBack(F)V

    .line 283
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1L:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1L_reverbsendgain:F

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setReverbSendGain(F)V

    .line 284
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftChorus;->vdelay1R:Lcom/codemao/midi/sun/SoftChorus$LFODelay;

    iget v1, p0, Lcom/codemao/midi/sun/SoftChorus;->dirty_vdelay1R_reverbsendgain:F

    invoke-virtual {v0, v1}, Lcom/codemao/midi/sun/SoftChorus$LFODelay;->setReverbSendGain(F)V

    :cond_3f
    return-void
.end method

.method public setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 3

    if-nez p1, :cond_4

    .line 322
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftChorus;->inputA:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_4
    return-void
.end method

.method public setMixMode(Z)V
    .registers 2

    .line 326
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftChorus;->mix:Z

    return-void
.end method

.method public setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 4

    if-nez p1, :cond_4

    .line 331
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftChorus;->left:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 333
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftChorus;->right:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_9
    const/4 v0, 0x2

    if-ne p1, v0, :cond_e

    .line 335
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftChorus;->reverb:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_e
    return-void
.end method
