.class public Lcom/codemao/creativecenter/customview/VoiceLineView;
.super Landroid/view/View;
.source "VoiceLineView.java"


# instance fields
.field private amplitude:F

.field private autoMove:Landroid/os/Handler;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "HandlerLeak"
        }
    .end annotation
.end field

.field private fineness:I

.field private frequency:F

.field private height:I

.field private idleAmplitude:F

.field private lastVolume:I

.field private level:F

.field private maxAmplitude:F

.field private maxVolume:F

.field private middleX:I

.field private middleY:I

.field private paintVoicLine:Landroid/graphics/Paint;

.field paths:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Path;",
            ">;"
        }
    .end annotation
.end field

.field private phase:F

.field private phaseShift:F

.field private voiceLineColor:I

.field private waveNum:I

.field private width:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 92
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    .line 32
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->voiceLineColor:I

    const/high16 v0, 0x42c80000  # 100.0f

    .line 45
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxVolume:F

    const/high16 v0, 0x3f800000  # 1.0f

    .line 54
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->amplitude:F

    const v1, 0x3c23d70a  # 0.01f

    .line 55
    iput v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->idleAmplitude:F

    .line 56
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->frequency:F

    const v1, -0x417ae148  # -0.26f

    .line 57
    iput v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->phaseShift:F

    .line 60
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxAmplitude:F

    const/4 v0, 0x1

    .line 65
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->fineness:I

    const/4 v0, 0x0

    .line 78
    iput-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    .line 121
    new-instance v0, Lcom/codemao/creativecenter/customview/VoiceLineView$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/customview/VoiceLineView$1;-><init>(Lcom/codemao/creativecenter/customview/VoiceLineView;)V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->autoMove:Landroid/os/Handler;

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/VoiceLineView;->initAtts(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 97
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p3, -0x1

    .line 32
    iput p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->voiceLineColor:I

    const/high16 p3, 0x42c80000  # 100.0f

    .line 45
    iput p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxVolume:F

    const/high16 p3, 0x3f800000  # 1.0f

    .line 54
    iput p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->amplitude:F

    const v0, 0x3c23d70a  # 0.01f

    .line 55
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->idleAmplitude:F

    .line 56
    iput p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->frequency:F

    const v0, -0x417ae148  # -0.26f

    .line 57
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->phaseShift:F

    .line 60
    iput p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxAmplitude:F

    const/4 p3, 0x1

    .line 65
    iput p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->fineness:I

    const/4 p3, 0x0

    .line 78
    iput-object p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    .line 121
    new-instance p3, Lcom/codemao/creativecenter/customview/VoiceLineView$1;

    invoke-direct {p3, p0}, Lcom/codemao/creativecenter/customview/VoiceLineView$1;-><init>(Lcom/codemao/creativecenter/customview/VoiceLineView;)V

    iput-object p3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->autoMove:Landroid/os/Handler;

    .line 98
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/customview/VoiceLineView;->initAtts(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private adjustVolume(I)F
    .registers 5

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_d

    .line 232
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->lastVolume:I

    .line 233
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->autoMove:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_13

    .line 235
    :cond_d
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->autoMove:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :goto_13
    if-nez p1, :cond_1d

    .line 240
    iget v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->lastVolume:I

    if-eqz v1, :cond_1f

    .line 242
    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->lastVolume:I

    move p1, v1

    goto :goto_1f

    .line 245
    :cond_1d
    iput p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->lastVolume:I

    :cond_1f
    :goto_1f
    int-to-float p1, p1

    const/high16 v0, 0x3f800000  # 1.0f

    mul-float v0, v0, p1

    .line 248
    iget v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxVolume:F

    div-float/2addr v0, v1

    const/4 v1, 0x0

    cmpg-float v2, p1, v1

    if-gtz v2, :cond_2d

    goto :goto_77

    :cond_2d
    const/high16 v1, 0x41f00000  # 30.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_37

    const v1, 0x3da3d70a  # 0.08f

    goto :goto_77

    :cond_37
    const/high16 v1, 0x42200000  # 40.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_43

    const p1, 0x3e3d70a4  # 0.185f

    :goto_40
    mul-float v1, v0, p1

    goto :goto_77

    :cond_43
    const/high16 v1, 0x42540000  # 53.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_4d

    const p1, 0x3e570a3d  # 0.21f

    goto :goto_40

    :cond_4d
    const/high16 v1, 0x426c0000  # 59.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_56

    const/high16 p1, 0x3e800000  # 0.25f

    goto :goto_40

    :cond_56
    const/high16 v1, 0x42820000  # 65.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_60

    const p1, 0x3eb645a2  # 0.356f

    goto :goto_40

    :cond_60
    const/high16 v1, 0x428c0000  # 70.0f

    cmpg-float v1, p1, v1

    if-gez v1, :cond_6a

    const p1, 0x3ee66666  # 0.45f

    goto :goto_40

    :cond_6a
    const/high16 v1, 0x42a00000  # 80.0f

    cmpg-float p1, p1, v1

    if-gez p1, :cond_74

    const p1, 0x3f03d70a  # 0.515f

    goto :goto_40

    :cond_74
    const/high16 p1, 0x3ec00000  # 0.375f

    goto :goto_40

    :goto_77
    return v1
.end method

.method private drawVoiceLine(Landroid/graphics/Canvas;)V
    .registers 15

    .line 153
    iget v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->phase:F

    iget v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->phaseShift:F

    add-float/2addr v0, v1

    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->phase:F

    .line 154
    iget v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->level:F

    iget v1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->idleAmplitude:F

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->amplitude:F

    .line 156
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    const/high16 v1, 0x3f800000  # 1.0f

    if-nez v0, :cond_5e

    .line 157
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    .line 158
    iget v2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->voiceLineColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 159
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 161
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->dp2px(Landroid/content/Context;F)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v0, 0x5

    new-array v7, v0, [I

    .line 162
    fill-array-data v7, :array_fe

    new-array v8, v0, [F

    .line 163
    fill-array-data v8, :array_10c

    .line 164
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    new-instance v10, Landroid/graphics/LinearGradient;

    const/4 v3, 0x0

    iget v2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->middleY:I

    int-to-float v4, v2

    iget v5, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->width:I

    int-to-float v5, v5

    int-to-float v6, v2

    sget-object v9, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v2, v10

    invoke-direct/range {v2 .. v9}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v0, v10}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 171
    :cond_5e
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 178
    :goto_63
    iget v3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->waveNum:I

    if-ge v2, v3, :cond_f9

    int-to-float v4, v2

    mul-float v4, v4, v1

    int-to-float v3, v3

    div-float/2addr v4, v3

    sub-float v3, v1, v4

    const/high16 v4, 0x3fc00000  # 1.5f

    mul-float v3, v3, v4

    const/high16 v4, 0x3f000000  # 0.5f

    sub-float/2addr v3, v4

    .line 180
    iget v4, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->amplitude:F

    mul-float v3, v3, v4

    const/4 v4, 0x0

    .line 182
    :goto_7a
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v5

    if-ge v4, v5, :cond_e8

    int-to-float v5, v4

    mul-float v6, v5, v1

    .line 183
    iget v7, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->middleX:I

    int-to-float v7, v7

    div-float v7, v6, v7

    sub-float/2addr v7, v1

    float-to-double v7, v7

    const-wide/high16 v9, 0x4000000000000000L  # 2.0

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v7

    neg-double v7, v7

    const-wide/high16 v9, 0x3ff0000000000000L  # 1.0

    add-double/2addr v7, v9

    double-to-float v7, v7

    .line 184
    iget v8, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxAmplitude:F

    mul-float v7, v7, v8

    mul-float v7, v7, v3

    float-to-double v7, v7

    const-wide v9, 0x401921fb54442d18L  # 6.283185307179586

    iget v11, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->width:I

    int-to-float v11, v11

    div-float/2addr v6, v11

    float-to-double v11, v6

    mul-double v11, v11, v9

    iget v6, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->frequency:F

    float-to-double v9, v6

    mul-double v11, v11, v9

    iget v6, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->phase:F

    float-to-double v9, v6

    add-double/2addr v11, v9

    invoke-static {v11, v12}, Ljava/lang/Math;->sin(D)D

    move-result-wide v9

    mul-double v7, v7, v9

    double-to-float v6, v7

    .line 185
    iget v7, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->middleY:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    if-nez v4, :cond_d9

    .line 188
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    invoke-virtual {v5}, Landroid/graphics/Path;->reset()V

    .line 189
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Path;

    const/4 v6, 0x0

    iget v7, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->middleY:I

    int-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_e4

    .line 191
    :cond_d9
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/Path;

    invoke-virtual {v6, v5, v7}, Landroid/graphics/Path;->lineTo(FF)V

    .line 182
    :goto_e4
    iget v5, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->fineness:I

    add-int/2addr v4, v5

    goto :goto_7a

    .line 195
    :cond_e8
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Path;

    iget-object v4, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paintVoicLine:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_63

    .line 220
    :cond_f9
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void

    nop

    :array_fe
    .array-data 4
        -0xf9238d
        -0xf10b02
        -0xffb401
        -0x4b701
        -0x36f0c5
    .end array-data

    :array_10c
    .array-data 4
        0x0
        0x3e800000  # 0.25f
        0x3f000000  # 0.5f
        0x3f400000  # 0.75f
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private initAtts(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6

    .line 102
    sget-object v0, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 103
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_viewMode:I

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 104
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_voiceLine:I

    const/high16 v1, -0x1000000

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->voiceLineColor:I

    .line 105
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_maxVolume:I

    const/high16 v1, 0x42c80000  # 100.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxVolume:F

    .line 106
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_sensibility:I

    const/4 v1, 0x4

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 108
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_middleLineHeight:I

    const/high16 v1, 0x40800000  # 4.0f

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 109
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_lineSpeed:I

    const/16 v1, 0x5a

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 110
    sget p2, Lcom/codemao/creativecenter/R$styleable;->creative_VoiceLineView_creative_fineness:I

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->fineness:I

    .line 111
    new-instance p2, Ljava/util/ArrayList;

    const/16 v1, 0x8

    invoke-direct {p2, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    :goto_46
    if-ge v0, v1, :cond_55

    .line 113
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    .line 116
    :cond_55
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->paths:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->waveNum:I

    .line 117
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .registers 3

    .line 281
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 282
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->autoMove:Landroid/os/Handler;

    if-eqz v0, :cond_b

    const/4 v1, 0x0

    .line 283
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_b
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 137
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/VoiceLineView;->drawVoiceLine(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5

    .line 143
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 144
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->width:I

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->height:I

    .line 146
    iget p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->width:I

    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->middleX:I

    .line 147
    div-int/lit8 p2, p1, 0x2

    iput p2, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->middleY:I

    add-int/lit8 p1, p1, -0xf

    int-to-float p1, p1

    .line 148
    iput p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->maxAmplitude:F

    return-void
.end method

.method public setVolume(I)V
    .registers 2

    .line 224
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/VoiceLineView;->adjustVolume(I)F

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/VoiceLineView;->level:F

    .line 225
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
