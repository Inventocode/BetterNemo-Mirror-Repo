.class public Lcom/codemao/midi/sun/SoftLimiter;
.super Ljava/lang/Object;
.source "SoftLimiter.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftAudioProcessor;


# instance fields
.field bufferL:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field bufferLout:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field bufferR:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field bufferRout:Lcom/codemao/midi/sun/SoftAudioBuffer;

.field controlrate:F

.field gain:F

.field lastmax:F

.field mix:Z

.field silentcounter:D

.field temp_bufferL:[F

.field temp_bufferR:[F


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 35
    iput v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->lastmax:F

    const/high16 v0, 0x3f800000  # 1.0f

    .line 36
    iput v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    const/4 v0, 0x0

    .line 39
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->mix:Z

    const-wide/16 v0, 0x0

    .line 72
    iput-wide v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->silentcounter:D

    return-void
.end method


# virtual methods
.method public globalParameterControlChange([IJJ)V
    .registers 6

    return-void
.end method

.method public init(FF)V
    .registers 3

    .line 47
    iput p2, p0, Lcom/codemao/midi/sun/SoftLimiter;->controlrate:F

    return-void
.end method

.method public processAudio()V
    .registers 16

    .line 75
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferL:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    const/high16 v1, 0x3f800000  # 1.0f

    if-eqz v0, :cond_35

    iget-object v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferR:Lcom/codemao/midi/sun/SoftAudioBuffer;

    if-eqz v0, :cond_14

    .line 76
    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->isSilent()Z

    move-result v0

    if-eqz v0, :cond_35

    .line 77
    :cond_14
    iget-wide v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->silentcounter:D

    iget v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->controlrate:F

    div-float v0, v1, v0

    float-to-double v4, v0

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->silentcounter:D

    const-wide/high16 v4, 0x404e000000000000L  # 60.0

    cmpl-double v0, v2, v4

    if-lez v0, :cond_39

    .line 80
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->mix:Z

    if-nez v0, :cond_34

    .line 81
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferLout:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    .line 82
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferRout:Lcom/codemao/midi/sun/SoftAudioBuffer;

    if-eqz v0, :cond_34

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->clear()V

    :cond_34
    return-void

    :cond_35
    const-wide/16 v2, 0x0

    .line 87
    iput-wide v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->silentcounter:D

    .line 89
    :cond_39
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferL:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v0

    .line 90
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferR:Lcom/codemao/midi/sun/SoftAudioBuffer;

    const/4 v3, 0x0

    if-nez v2, :cond_46

    move-object v2, v3

    goto :goto_4a

    :cond_46
    invoke-virtual {v2}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v2

    .line 91
    :goto_4a
    iget-object v4, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferLout:Lcom/codemao/midi/sun/SoftAudioBuffer;

    invoke-virtual {v4}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v4

    .line 92
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferRout:Lcom/codemao/midi/sun/SoftAudioBuffer;

    if-nez v5, :cond_55

    goto :goto_59

    .line 93
    :cond_55
    invoke-virtual {v5}, Lcom/codemao/midi/sun/SoftAudioBuffer;->array()[F

    move-result-object v3

    .line 95
    :goto_59
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferL:[F

    if-eqz v5, :cond_61

    array-length v5, v5

    array-length v6, v0

    if-ge v5, v6, :cond_66

    .line 96
    :cond_61
    array-length v5, v0

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferL:[F

    :cond_66
    if-eqz v2, :cond_75

    .line 98
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferR:[F

    if-eqz v5, :cond_70

    array-length v5, v5

    array-length v6, v2

    if-ge v5, v6, :cond_75

    .line 99
    :cond_70
    array-length v5, v2

    new-array v5, v5, [F

    iput-object v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferR:[F

    :cond_75
    const/4 v5, 0x0

    .line 102
    array-length v6, v0

    const/4 v7, 0x0

    if-nez v2, :cond_92

    const/4 v8, 0x0

    :goto_7b
    if-ge v8, v6, :cond_bc

    .line 106
    aget v9, v0, v8

    cmpl-float v9, v9, v5

    if-lez v9, :cond_85

    .line 107
    aget v5, v0, v8

    .line 108
    :cond_85
    aget v9, v0, v8

    neg-float v9, v9

    cmpl-float v9, v9, v5

    if-lez v9, :cond_8f

    .line 109
    aget v5, v0, v8

    neg-float v5, v5

    :cond_8f
    add-int/lit8 v8, v8, 0x1

    goto :goto_7b

    :cond_92
    const/4 v8, 0x0

    :goto_93
    if-ge v8, v6, :cond_bc

    .line 113
    aget v9, v0, v8

    cmpl-float v9, v9, v5

    if-lez v9, :cond_9d

    .line 114
    aget v5, v0, v8

    .line 115
    :cond_9d
    aget v9, v2, v8

    cmpl-float v9, v9, v5

    if-lez v9, :cond_a5

    .line 116
    aget v5, v2, v8

    .line 117
    :cond_a5
    aget v9, v0, v8

    neg-float v9, v9

    cmpl-float v9, v9, v5

    if-lez v9, :cond_af

    .line 118
    aget v5, v0, v8

    neg-float v5, v5

    .line 119
    :cond_af
    aget v9, v2, v8

    neg-float v9, v9

    cmpl-float v9, v9, v5

    if-lez v9, :cond_b9

    .line 120
    aget v5, v2, v8

    neg-float v5, v5

    :cond_b9
    add-int/lit8 v8, v8, 0x1

    goto :goto_93

    .line 124
    :cond_bc
    iget v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->lastmax:F

    .line 125
    iput v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->lastmax:F

    cmpl-float v9, v8, v5

    if-lez v9, :cond_c5

    move v5, v8

    :cond_c5
    const v8, 0x3f7d70a4  # 0.99f

    cmpl-float v9, v5, v8

    if-lez v9, :cond_ce

    div-float v1, v8, v5

    .line 135
    :cond_ce
    iget v5, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    cmpl-float v8, v1, v5

    if-lez v8, :cond_dc

    const/high16 v8, 0x41100000  # 9.0f

    mul-float v8, v8, v5

    add-float/2addr v1, v8

    const/high16 v8, 0x41200000  # 10.0f

    div-float/2addr v1, v8

    :cond_dc
    sub-float v5, v1, v5

    int-to-float v8, v6

    div-float/2addr v5, v8

    .line 139
    iget-boolean v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->mix:Z

    if-eqz v8, :cond_127

    if-nez v2, :cond_ff

    :goto_e6
    if-ge v7, v6, :cond_161

    .line 142
    iget v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    add-float/2addr v2, v5

    iput v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    .line 143
    aget v3, v0, v7

    .line 144
    iget-object v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferL:[F

    aget v9, v8, v7

    .line 145
    aput v3, v8, v7

    .line 146
    aget v3, v4, v7

    mul-float v9, v9, v2

    add-float/2addr v3, v9

    aput v3, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_e6

    :cond_ff
    :goto_ff
    if-ge v7, v6, :cond_161

    .line 150
    iget v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    add-float/2addr v8, v5

    iput v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    .line 151
    aget v9, v0, v7

    .line 152
    aget v10, v2, v7

    .line 153
    iget-object v11, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferL:[F

    aget v12, v11, v7

    .line 154
    iget-object v13, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferR:[F

    aget v14, v13, v7

    .line 155
    aput v9, v11, v7

    .line 156
    aput v10, v13, v7

    .line 157
    aget v9, v4, v7

    mul-float v12, v12, v8

    add-float/2addr v9, v12

    aput v9, v4, v7

    .line 158
    aget v9, v3, v7

    mul-float v14, v14, v8

    add-float/2addr v9, v14

    aput v9, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_ff

    :cond_127
    if-nez v2, :cond_13f

    :goto_129
    if-ge v7, v6, :cond_161

    .line 165
    iget v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    add-float/2addr v2, v5

    iput v2, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    .line 166
    aget v3, v0, v7

    .line 167
    iget-object v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferL:[F

    aget v9, v8, v7

    .line 168
    aput v3, v8, v7

    mul-float v9, v9, v2

    .line 169
    aput v9, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_129

    :cond_13f
    :goto_13f
    if-ge v7, v6, :cond_161

    .line 173
    iget v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    add-float/2addr v8, v5

    iput v8, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    .line 174
    aget v9, v0, v7

    .line 175
    aget v10, v2, v7

    .line 176
    iget-object v11, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferL:[F

    aget v12, v11, v7

    .line 177
    iget-object v13, p0, Lcom/codemao/midi/sun/SoftLimiter;->temp_bufferR:[F

    aget v14, v13, v7

    .line 178
    aput v9, v11, v7

    .line 179
    aput v10, v13, v7

    mul-float v12, v12, v8

    .line 180
    aput v12, v4, v7

    mul-float v14, v14, v8

    .line 181
    aput v14, v3, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_13f

    .line 186
    :cond_161
    iput v1, p0, Lcom/codemao/midi/sun/SoftLimiter;->gain:F

    return-void
.end method

.method public processControlLogic()V
    .registers 1

    return-void
.end method

.method public setInput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 4

    if-nez p1, :cond_4

    .line 52
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferL:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 54
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferR:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_9
    return-void
.end method

.method public setMixMode(Z)V
    .registers 2

    .line 65
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftLimiter;->mix:Z

    return-void
.end method

.method public setOutput(ILcom/codemao/midi/sun/SoftAudioBuffer;)V
    .registers 4

    if-nez p1, :cond_4

    .line 59
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferLout:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_4
    const/4 v0, 0x1

    if-ne p1, v0, :cond_9

    .line 61
    iput-object p2, p0, Lcom/codemao/midi/sun/SoftLimiter;->bufferRout:Lcom/codemao/midi/sun/SoftAudioBuffer;

    :cond_9
    return-void
.end method
