.class Lcom/codemao/midi/sun/SoftChorus$VariableDelay;
.super Ljava/lang/Object;
.source "SoftChorus.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftChorus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "VariableDelay"
.end annotation


# instance fields
.field private delay:F

.field private delaybuffer:[F

.field private feedback:F

.field private gain:F

.field private lastdelay:F

.field private rgain:F

.field private rovepos:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput v0, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->rovepos:I

    const/high16 v0, 0x3f800000  # 1.0f

    .line 41
    iput v0, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->gain:F

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->rgain:F

    .line 43
    iput v0, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->delay:F

    .line 44
    iput v0, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    .line 45
    iput v0, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->feedback:F

    .line 48
    new-array p1, p1, [F

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->delaybuffer:[F

    return-void
.end method


# virtual methods
.method public processMix([F[F[F)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 68
    iget v2, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->gain:F

    .line 69
    iget v3, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->delay:F

    .line 70
    iget v4, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->feedback:F

    .line 72
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->delaybuffer:[F

    .line 73
    array-length v6, v1

    .line 74
    iget v7, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    sub-float v7, v3, v7

    int-to-float v8, v6

    div-float/2addr v7, v8

    .line 75
    array-length v8, v5

    .line 76
    iget v9, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->rovepos:I

    const/high16 v10, 0x3f800000  # 1.0f

    const/high16 v11, 0x40000000  # 2.0f

    const/4 v12, 0x0

    if-nez p3, :cond_53

    :goto_1d
    if-ge v12, v6, :cond_92

    int-to-float v13, v9

    .line 80
    iget v14, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    add-float v15, v14, v11

    sub-float/2addr v13, v15

    int-to-float v15, v8

    add-float/2addr v13, v15

    float-to-int v15, v13

    int-to-float v11, v15

    sub-float/2addr v13, v11

    .line 83
    rem-int v11, v15, v8

    aget v11, v5, v11

    add-int/lit8 v15, v15, 0x1

    .line 84
    rem-int/2addr v15, v8

    aget v15, v5, v15

    sub-float v16, v10, v13

    mul-float v11, v11, v16

    mul-float v15, v15, v13

    add-float/2addr v11, v15

    .line 86
    aget v13, p2, v12

    mul-float v15, v11, v2

    add-float/2addr v13, v15

    aput v13, p2, v12

    .line 87
    aget v13, v1, v12

    mul-float v11, v11, v4

    add-float/2addr v13, v11

    aput v13, v5, v9

    add-int/lit8 v9, v9, 0x1

    .line 88
    rem-int/2addr v9, v8

    add-float/2addr v14, v7

    .line 89
    iput v14, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    add-int/lit8 v12, v12, 0x1

    const/high16 v11, 0x40000000  # 2.0f

    goto :goto_1d

    :cond_53
    :goto_53
    if-ge v12, v6, :cond_92

    int-to-float v11, v9

    .line 93
    iget v13, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    const/high16 v14, 0x40000000  # 2.0f

    add-float v15, v13, v14

    sub-float/2addr v11, v15

    int-to-float v15, v8

    add-float/2addr v11, v15

    float-to-int v15, v11

    int-to-float v14, v15

    sub-float/2addr v11, v14

    .line 96
    rem-int v14, v15, v8

    aget v14, v5, v14

    add-int/lit8 v15, v15, 0x1

    .line 97
    rem-int/2addr v15, v8

    aget v15, v5, v15

    sub-float v16, v10, v11

    mul-float v14, v14, v16

    mul-float v15, v15, v11

    add-float/2addr v14, v15

    .line 99
    aget v11, p2, v12

    mul-float v15, v14, v2

    add-float/2addr v11, v15

    aput v11, p2, v12

    .line 100
    aget v11, p3, v12

    iget v15, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->rgain:F

    mul-float v15, v15, v14

    add-float/2addr v11, v15

    aput v11, p3, v12

    .line 101
    aget v11, v1, v12

    mul-float v14, v14, v4

    add-float/2addr v11, v14

    aput v11, v5, v9

    add-int/lit8 v9, v9, 0x1

    .line 102
    rem-int/2addr v9, v8

    add-float/2addr v13, v7

    .line 103
    iput v13, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    add-int/lit8 v12, v12, 0x1

    goto :goto_53

    .line 105
    :cond_92
    iput v9, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->rovepos:I

    .line 106
    iput v3, v0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->lastdelay:F

    return-void
.end method

.method public processReplace([F[F[F)V
    .registers 5

    const/4 v0, 0x0

    .line 110
    invoke-static {p2, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 111
    invoke-static {p3, v0}, Ljava/util/Arrays;->fill([FF)V

    .line 112
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->processMix([F[F[F)V

    return-void
.end method

.method public setDelay(F)V
    .registers 2

    .line 52
    iput p1, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->delay:F

    return-void
.end method

.method public setFeedBack(F)V
    .registers 2

    .line 56
    iput p1, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->feedback:F

    return-void
.end method

.method public setGain(F)V
    .registers 2

    .line 60
    iput p1, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->gain:F

    return-void
.end method

.method public setReverbSendGain(F)V
    .registers 2

    .line 64
    iput p1, p0, Lcom/codemao/midi/sun/SoftChorus$VariableDelay;->rgain:F

    return-void
.end method
