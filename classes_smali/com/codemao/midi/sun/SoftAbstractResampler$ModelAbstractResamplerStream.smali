.class Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;
.super Ljava/lang/Object;
.source "SoftAbstractResampler.java"

# interfaces
.implements Lcom/codemao/midi/sun/SoftResamplerStreamer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/midi/sun/SoftAbstractResampler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ModelAbstractResamplerStream"
.end annotation


# instance fields
.field current_pitch:[F

.field eof:Z

.field ibuffer:[[F

.field ibuffer_order:Z

.field ix:[F

.field loopdirection:Z

.field looplen:F

.field loopmode:I

.field loopstart:F

.field marklimit:I

.field markset:Z

.field noteOff_flag:Z

.field nrofchannels:I

.field ox:[I

.field pad:I

.field pad2:I

.field pitchcorrection:F

.field samplerateconv:F

.field sbuffer:[F

.field sector_loopstart:I

.field sector_pos:I

.field sector_size:I

.field started:Z

.field stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

.field stream_eof:Z

.field streampos:I

.field target_pitch:F

.field final synthetic this$0:Lcom/codemao/midi/sun/SoftAbstractResampler;


# direct methods
.method public constructor <init>(Lcom/codemao/midi/sun/SoftAbstractResampler;)V
    .registers 6

    .line 70
    iput-object p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->this$0:Lcom/codemao/midi/sun/SoftAbstractResampler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 43
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    const/4 v1, 0x1

    .line 45
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    new-array v2, v1, [F

    .line 49
    iput-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    .line 52
    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    const/16 v2, 0x190

    .line 53
    iput v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    const/4 v2, -0x1

    .line 54
    iput v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 55
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 56
    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->marklimit:I

    .line 57
    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    const/4 v2, 0x2

    .line 58
    iput v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    .line 59
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    .line 61
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    new-array v3, v1, [F

    .line 65
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    new-array v3, v1, [I

    .line 66
    iput-object v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ox:[I

    const/high16 v3, 0x3f800000  # 1.0f

    .line 67
    iput v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    const/4 v3, 0x0

    .line 68
    iput v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pitchcorrection:F

    .line 71
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAbstractResampler;->getPadding()I

    move-result v3

    iput v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    .line 72
    invoke-virtual {p1}, Lcom/codemao/midi/sun/SoftAbstractResampler;->getPadding()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    .line 73
    iget v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v3, p1

    new-array p1, v2, [I

    aput v3, p1, v1

    aput v2, p1, v0

    const-class v0, F

    invoke-static {v0, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[F

    iput-object p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    .line 74
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 377
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->close()V

    return-void
.end method

.method public nextBuffer()V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 153
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v2, v2

    const/4 v3, 0x1

    cmpg-float v0, v0, v2

    if-gez v0, :cond_3b

    .line 154
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    if-eqz v0, :cond_3b

    .line 156
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    invoke-virtual {v0}, Lcom/codemao/midi/sun/AudioFloatInputStream;->reset()V

    .line 157
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v2, v0, v1

    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int v7, v5, v6

    sub-int/2addr v4, v7

    int-to-float v4, v4

    add-float/2addr v2, v4

    aput v2, v0, v1

    .line 158
    iput v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    mul-int v2, v5, v6

    .line 159
    iput v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 162
    aget v4, v0, v1

    int-to-float v7, v6

    add-float/2addr v4, v7

    aput v4, v0, v1

    sub-int/2addr v5, v3

    .line 163
    iput v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    sub-int/2addr v2, v6

    .line 164
    iput v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 165
    iput-boolean v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 169
    :cond_3b
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v2, v0, v1

    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int v6, v4, v5

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_51

    .line 170
    iget-boolean v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    if-eqz v2, :cond_51

    .line 171
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    return-void

    .line 176
    :cond_51
    aget v2, v0, v1

    mul-int/lit8 v6, v4, 0x4

    add-int/2addr v6, v5

    int-to-float v6, v6

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_82

    .line 177
    aget v2, v0, v1

    mul-int/lit8 v6, v4, 0x4

    int-to-float v6, v6

    sub-float/2addr v2, v6

    int-to-float v5, v5

    add-float/2addr v2, v5

    int-to-float v5, v4

    div-float/2addr v2, v5

    float-to-int v2, v2

    .line 178
    aget v5, v0, v1

    mul-int v6, v4, v2

    int-to-float v6, v6

    sub-float/2addr v5, v6

    aput v5, v0, v1

    .line 179
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 180
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    mul-int v5, v4, v2

    add-int/2addr v0, v5

    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 181
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    mul-int v4, v4, v2

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Lcom/codemao/midi/sun/AudioFloatInputStream;->skip(J)J

    .line 184
    :cond_82
    :goto_82
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v0, v0, v1

    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v2, v4

    int-to-float v2, v2

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_157

    .line 185
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    if-nez v0, :cond_a4

    .line 186
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    add-int/2addr v0, v3

    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    if-ne v0, v2, :cond_a4

    .line 187
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->marklimit:I

    invoke-virtual {v0, v2}, Lcom/codemao/midi/sun/AudioFloatInputStream;->mark(I)V

    .line 188
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 191
    :cond_a4
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v2, v0, v1

    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    int-to-float v5, v4

    sub-float/2addr v2, v5

    aput v2, v0, v1

    .line 192
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    add-int/2addr v0, v3

    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    .line 193
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    add-int/2addr v0, v4

    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    const/4 v0, 0x0

    .line 195
    :goto_b9
    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v0, v2, :cond_d3

    .line 196
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v2, v2, v0

    const/4 v4, 0x0

    .line 197
    :goto_c2
    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    if-ge v4, v5, :cond_d0

    .line 198
    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v5, v4

    aget v5, v2, v5

    aput v5, v2, v4

    add-int/lit8 v4, v4, 0x1

    goto :goto_c2

    :cond_d0
    add-int/lit8 v0, v0, 0x1

    goto :goto_b9

    :cond_d3
    const/4 v0, -0x1

    if-ne v2, v3, :cond_e5

    .line 203
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget-object v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v4, v4, v1

    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    iget v6, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    invoke-virtual {v2, v4, v5, v6}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([FII)I

    move-result v2

    goto :goto_120

    .line 205
    :cond_e5
    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    mul-int v4, v4, v2

    .line 206
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    if-eqz v2, :cond_f0

    array-length v2, v2

    if-ge v2, v4, :cond_f4

    .line 207
    :cond_f0
    new-array v2, v4, [F

    iput-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    .line 208
    :cond_f4
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    iget-object v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    invoke-virtual {v2, v5, v1, v4}, Lcom/codemao/midi/sun/AudioFloatInputStream;->read([FII)I

    move-result v2

    if-ne v2, v0, :cond_100

    const/4 v2, -0x1

    goto :goto_120

    .line 212
    :cond_100
    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    div-int/2addr v2, v4

    const/4 v4, 0x0

    .line 213
    :goto_104
    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v4, v5, :cond_120

    .line 214
    iget-object v6, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v6, v6, v4

    .line 217
    iget v7, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    move v9, v4

    const/4 v8, 0x0

    :goto_110
    if-ge v8, v2, :cond_11d

    .line 219
    iget-object v10, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sbuffer:[F

    aget v10, v10, v9

    aput v10, v6, v7

    add-int/lit8 v8, v8, 0x1

    add-int/2addr v9, v5

    add-int/2addr v7, v3

    goto :goto_110

    :cond_11d
    add-int/lit8 v4, v4, 0x1

    goto :goto_104

    :cond_120
    :goto_120
    const/4 v4, 0x0

    if-ne v2, v0, :cond_139

    .line 227
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 228
    :goto_125
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v1, v0, :cond_138

    .line 229
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v0, v0, v1

    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    iget v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v3, v2

    invoke-static {v0, v2, v3, v4}, Ljava/util/Arrays;->fill([FIIF)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_125

    :cond_138
    return-void

    .line 232
    :cond_139
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    if-eq v2, v0, :cond_153

    const/4 v0, 0x0

    .line 233
    :goto_13e
    iget v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v0, v5, :cond_153

    .line 234
    iget-object v5, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v5, v5, v0

    iget v6, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int v7, v6, v2

    iget v8, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v6, v8

    invoke-static {v5, v7, v6, v4}, Ljava/util/Arrays;->fill([FIIF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_13e

    .line 237
    :cond_153
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    goto/16 :goto_82

    :cond_157
    return-void
.end method

.method public noteOff(I)V
    .registers 2

    const/4 p1, 0x1

    .line 82
    iput-boolean p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    return-void
.end method

.method public noteOn(Lcom/codemao/midi/javax/MidiChannel;Lcom/codemao/midi/javax/VoiceStatus;II)V
    .registers 5

    return-void
.end method

.method public open(Lcom/codemao/midi/sun/ModelWavetable;F)V
    .registers 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    .line 89
    invoke-interface {p1}, Lcom/codemao/midi/sun/ModelOscillator;->getChannels()I

    move-result v1

    iput v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    .line 90
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    array-length v2, v2

    const/4 v3, 0x1

    if-ge v2, v1, :cond_25

    .line 91
    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v4, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v2, v4

    const/4 v4, 0x2

    new-array v4, v4, [I

    aput v2, v4, v3

    aput v1, v4, v0

    const-class v1, F

    invoke-static {v1, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[F

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    .line 94
    :cond_25
    invoke-interface {p1}, Lcom/codemao/midi/sun/ModelWavetable;->openStream()Lcom/codemao/midi/sun/AudioFloatInputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    .line 95
    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 96
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream_eof:Z

    .line 97
    invoke-interface {p1}, Lcom/codemao/midi/sun/ModelWavetable;->getPitchcorrection()F

    move-result v1

    iput v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pitchcorrection:F

    .line 98
    iget-object v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->stream:Lcom/codemao/midi/sun/AudioFloatInputStream;

    .line 99
    invoke-virtual {v1}, Lcom/codemao/midi/sun/AudioFloatInputStream;->getFormat()Lcom/codemao/midi/javax/sampled/AudioFormat;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/midi/javax/sampled/AudioFormat;->getSampleRate()F

    move-result v1

    div-float/2addr v1, p2

    iput v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    .line 100
    invoke-interface {p1}, Lcom/codemao/midi/sun/ModelWavetable;->getLoopLength()F

    move-result p2

    iput p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    .line 101
    invoke-interface {p1}, Lcom/codemao/midi/sun/ModelWavetable;->getLoopStart()F

    move-result p2

    iput p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    .line 102
    iget v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    int-to-float v1, v1

    div-float/2addr p2, v1

    float-to-int p2, p2

    iput p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    sub-int/2addr p2, v3

    .line 103
    iput p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 105
    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    if-gez p2, :cond_5e

    .line 108
    iput v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_loopstart:I

    .line 109
    :cond_5e
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->started:Z

    .line 110
    invoke-interface {p1}, Lcom/codemao/midi/sun/ModelWavetable;->getLoopType()I

    move-result p1

    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    if-eqz p1, :cond_7b

    .line 113
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 114
    iget p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    iget p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    iget v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    int-to-float v1, v1

    add-float/2addr p2, v1

    const/high16 v1, 0x3f800000  # 1.0f

    add-float/2addr p2, v1

    float-to-int p2, p2

    mul-int p1, p1, p2

    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->marklimit:I

    goto :goto_7d

    .line 116
    :cond_7b
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->markset:Z

    .line 119
    :goto_7d
    iget p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    .line 120
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    aput p1, p2, v0

    .line 122
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    .line 123
    iput-boolean v3, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    .line 124
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    const/4 p1, 0x0

    .line 126
    :goto_8c
    iget p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge p1, p2, :cond_a0

    .line 127
    iget-object p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object p2, p2, p1

    iget v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int/2addr v2, v1

    const/4 v3, 0x0

    invoke-static {p2, v1, v2, v3}, Ljava/util/Arrays;->fill([FIIF)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_8c

    .line 128
    :cond_a0
    iget-object p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget p2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v1, p2

    aput v1, p1, v0

    .line 129
    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    .line 131
    iget v1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr p2, v1

    int-to-float p2, p2

    aput p2, p1, v0

    const/4 p1, -0x1

    .line 132
    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_pos:I

    neg-int p1, v1

    .line 133
    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    .line 135
    invoke-virtual {p0}, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nextBuffer()V

    return-void
.end method

.method public read([[FII)I
    .registers 27
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move/from16 v1, p3

    .line 260
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    if-eqz v2, :cond_a

    const/4 v1, -0x1

    return v1

    .line 263
    :cond_a
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->noteOff_flag:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_1b

    .line 264
    iget v2, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1b

    .line 265
    iget-boolean v2, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-eqz v2, :cond_1b

    .line 266
    iput v3, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    .line 269
    :cond_1b
    iget v2, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    iget-object v13, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    aget v4, v13, v3

    sub-float/2addr v2, v4

    int-to-float v4, v1

    div-float/2addr v2, v4

    const/4 v14, 0x1

    .line 271
    iput-boolean v14, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->started:Z

    .line 273
    iget-object v15, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ox:[I

    .line 274
    aput p2, v15, v3

    add-int v12, v1, p2

    .line 277
    iget v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    add-int/2addr v4, v5

    int-to-float v4, v4

    .line 278
    iget-boolean v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-nez v6, :cond_38

    int-to-float v4, v5

    .line 280
    :cond_38
    :goto_38
    aget v5, v15, v3

    if-eq v5, v12, :cond_183

    .line 281
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nextBuffer()V

    .line 282
    iget-boolean v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    if-nez v5, :cond_ec

    .line 286
    iget v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    int-to-float v7, v6

    iget v8, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    iget v9, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v10, v9

    add-float/2addr v10, v8

    cmpg-float v7, v7, v10

    if-gez v7, :cond_74

    int-to-float v4, v6

    sub-float/2addr v8, v4

    .line 287
    iget v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    int-to-float v4, v4

    add-float/2addr v4, v8

    .line 288
    iget-object v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aget v7, v6, v3

    cmpg-float v7, v7, v4

    if-gtz v7, :cond_74

    .line 289
    iget v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    and-int/lit8 v4, v4, 0x4

    if-eqz v4, :cond_6b

    .line 291
    iput-boolean v14, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    .line 292
    iget v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int/2addr v4, v9

    int-to-float v4, v4

    goto :goto_38

    .line 296
    :cond_6b
    aget v4, v6, v3

    iget v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    add-float/2addr v4, v5

    aput v4, v6, v3

    int-to-float v4, v9

    goto :goto_38

    .line 302
    :cond_74
    iget-boolean v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    if-eq v6, v5, :cond_7b

    .line 303
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->reverseBuffers()V

    .line 305
    :cond_7b
    iget-object v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v7, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int v8, v6, v7

    int-to-float v8, v8

    aget v9, v5, v3

    sub-float/2addr v8, v9

    aput v8, v5, v3

    add-int/2addr v6, v7

    int-to-float v6, v6

    sub-float/2addr v6, v4

    const/high16 v16, 0x3f800000  # 1.0f

    add-float v17, v6, v16

    .line 309
    aget v18, v5, v3

    .line 310
    aget v19, v15, v3

    .line 311
    aget v20, v13, v3

    const/4 v11, 0x0

    .line 312
    :goto_97
    iget v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v11, v4, :cond_c5

    .line 313
    aget-object v4, p1, v11

    if-eqz v4, :cond_bc

    .line 314
    iget-object v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aput v18, v6, v3

    .line 315
    aput v19, v15, v3

    .line 316
    aput v20, v13, v3

    .line 317
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->this$0:Lcom/codemao/midi/sun/SoftAbstractResampler;

    iget-object v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v5, v5, v11

    aget-object v10, p1, v11

    move/from16 v7, v17

    move-object v8, v13

    move v9, v2

    move/from16 v21, v11

    move-object v11, v15

    move/from16 v22, v12

    invoke-virtual/range {v4 .. v12}, Lcom/codemao/midi/sun/SoftAbstractResampler;->interpolate([F[FF[FF[F[II)V

    goto :goto_c0

    :cond_bc
    move/from16 v21, v11

    move/from16 v22, v12

    :goto_c0
    add-int/lit8 v11, v21, 0x1

    move/from16 v12, v22

    goto :goto_97

    :cond_c5
    move/from16 v22, v12

    .line 322
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    iget v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    iget v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    add-int v7, v5, v6

    int-to-float v7, v7

    aget v8, v4, v3

    sub-float/2addr v7, v8

    aput v7, v4, v3

    sub-float v17, v17, v16

    add-int/2addr v5, v6

    int-to-float v4, v5

    sub-float v4, v4, v17

    .line 326
    iget-boolean v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    if-eqz v5, :cond_e8

    .line 327
    iget v1, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    aput v1, v13, v3

    .line 328
    aget v1, v15, v3

    sub-int v1, v1, p2

    return v1

    :cond_e8
    move/from16 v12, v22

    goto/16 :goto_38

    :cond_ec
    move/from16 v22, v12

    .line 333
    iget v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopmode:I

    if-eqz v6, :cond_135

    .line 334
    iget v7, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->streampos:I

    iget v8, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->sector_size:I

    add-int v9, v7, v8

    int-to-float v9, v9

    iget v10, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->looplen:F

    iget v11, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopstart:F

    add-float v12, v10, v11

    iget v14, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad:I

    int-to-float v3, v14

    add-float/2addr v12, v3

    cmpl-float v3, v9, v12

    if-lez v3, :cond_135

    add-float/2addr v11, v10

    int-to-float v3, v7

    sub-float/2addr v11, v3

    .line 335
    iget v3, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pad2:I

    int-to-float v3, v3

    add-float/2addr v11, v3

    .line 336
    iget-object v3, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    const/4 v4, 0x0

    aget v7, v3, v4

    cmpl-float v4, v7, v11

    if-ltz v4, :cond_133

    and-int/lit8 v4, v6, 0x4

    if-nez v4, :cond_129

    and-int/lit8 v4, v6, 0x8

    if-eqz v4, :cond_120

    goto :goto_129

    :cond_120
    add-int/2addr v8, v14

    int-to-float v4, v8

    const/4 v5, 0x0

    .line 344
    aget v6, v3, v5

    sub-float/2addr v6, v10

    aput v6, v3, v5

    goto :goto_12d

    :cond_129
    :goto_129
    const/4 v5, 0x0

    .line 339
    iput-boolean v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->loopdirection:Z

    int-to-float v4, v14

    :goto_12d
    move/from16 v12, v22

    const/4 v3, 0x0

    const/4 v14, 0x1

    goto/16 :goto_38

    :cond_133
    move v3, v11

    goto :goto_136

    :cond_135
    move v3, v4

    .line 350
    :goto_136
    iget-boolean v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    if-eq v4, v5, :cond_13d

    .line 351
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->reverseBuffers()V

    .line 353
    :cond_13d
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    const/16 v17, 0x0

    aget v14, v4, v17

    .line 354
    aget v18, v15, v17

    .line 355
    aget v19, v13, v17

    const/4 v12, 0x0

    .line 356
    :goto_148
    iget v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v12, v4, :cond_173

    .line 357
    aget-object v4, p1, v12

    if-eqz v4, :cond_16c

    .line 358
    iget-object v6, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ix:[F

    aput v14, v6, v17

    .line 359
    aput v18, v15, v17

    .line 360
    aput v19, v13, v17

    .line 361
    iget-object v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->this$0:Lcom/codemao/midi/sun/SoftAbstractResampler;

    iget-object v5, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v5, v5, v12

    aget-object v10, p1, v12

    move v7, v3

    move-object v8, v13

    move v9, v2

    move-object v11, v15

    move/from16 v20, v12

    move/from16 v12, v22

    invoke-virtual/range {v4 .. v12}, Lcom/codemao/midi/sun/SoftAbstractResampler;->interpolate([F[FF[FF[F[II)V

    goto :goto_16e

    :cond_16c
    move/from16 v20, v12

    :goto_16e
    add-int/lit8 v12, v20, 0x1

    const/16 v17, 0x0

    goto :goto_148

    .line 366
    :cond_173
    iget-boolean v4, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->eof:Z

    if-eqz v4, :cond_181

    .line 367
    iget v1, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    const/4 v4, 0x0

    aput v1, v13, v4

    .line 368
    aget v1, v15, v4

    sub-int v1, v1, p2

    return v1

    :cond_181
    move v4, v3

    goto :goto_12d

    :cond_183
    const/4 v4, 0x0

    .line 372
    iget v2, v0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    aput v2, v13, v4

    return v1
.end method

.method public reverseBuffers()V
    .registers 10

    .line 244
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer_order:Z

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 245
    :goto_8
    iget v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->nrofchannels:I

    if-ge v1, v2, :cond_29

    .line 246
    iget-object v2, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->ibuffer:[[F

    aget-object v2, v2, v1

    .line 247
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    .line 248
    array-length v4, v2

    div-int/lit8 v4, v4, 0x2

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_26

    .line 250
    aget v6, v2, v5

    sub-int v7, v3, v5

    .line 251
    aget v8, v2, v7

    aput v8, v2, v5

    .line 252
    aput v6, v2, v7

    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_26
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_29
    return-void
.end method

.method public setPitch(F)V
    .registers 8

    .line 144
    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->pitchcorrection:F

    add-float/2addr v0, p1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L  # 2.0

    .line 145
    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    const-wide v4, 0x4092c00000000000L  # 1200.0

    div-double/2addr v2, v4

    mul-double v0, v0, v2

    .line 144
    invoke-static {v0, v1}, Ljava/lang/Math;->exp(D)D

    move-result-wide v0

    double-to-float p1, v0

    iget v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->samplerateconv:F

    mul-float p1, p1, v0

    iput p1, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->target_pitch:F

    .line 148
    iget-boolean v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->started:Z

    if-nez v0, :cond_26

    .line 149
    iget-object v0, p0, Lcom/codemao/midi/sun/SoftAbstractResampler$ModelAbstractResamplerStream;->current_pitch:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    :cond_26
    return-void
.end method
