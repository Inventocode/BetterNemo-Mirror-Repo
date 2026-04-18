.class public Lcom/codemao/midi/view/BeatView;
.super Landroid/view/View;
.source "BeatView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/midi/view/BeatView$BeatChangeListener;
    }
.end annotation


# instance fields
.field private beatChangeListener:Lcom/codemao/midi/view/BeatView$BeatChangeListener;

.field private beatNum:I

.field private beatPaint:Landroid/graphics/Paint;

.field private bgPaint:Landroid/graphics/Paint;

.field private bgPaint2:Landroid/graphics/Paint;

.field private height:I

.field private icProgress:Landroid/graphics/Bitmap;

.field private isTouchCompleted:Z

.field private rectProgress:Landroid/graphics/Rect;

.field touchX:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 39
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x5a

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    const/16 p1, 0x16

    .line 28
    iput p1, p0, Lcom/codemao/midi/view/BeatView;->height:I

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/codemao/midi/view/BeatView;->isTouchCompleted:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/16 p1, 0x5a

    .line 21
    iput p1, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    const/16 p1, 0x16

    .line 28
    iput p1, p0, Lcom/codemao/midi/view/BeatView;->height:I

    const/4 p1, 0x1

    .line 116
    iput-boolean p1, p0, Lcom/codemao/midi/view/BeatView;->isTouchCompleted:Z

    return-void
.end method

.method private caculateBeatNum()V
    .registers 5

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x14

    .line 120
    iget v1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x14

    add-int/2addr v2, v0

    int-to-float v2, v2

    cmpg-float v1, v1, v2

    if-gez v1, :cond_24

    .line 121
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0x14

    add-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    .line 123
    :cond_24
    iget v1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x14

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4a

    .line 124
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x14

    sub-int/2addr v1, v2

    sub-int/2addr v1, v0

    int-to-float v1, v1

    iput v1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    .line 126
    :cond_4a
    iget v1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x4

    div-int/lit8 v2, v2, 0x14

    int-to-float v2, v2

    sub-float/2addr v1, v2

    int-to-float v2, v0

    sub-float/2addr v1, v2

    float-to-int v1, v1

    const/16 v2, 0xb4

    mul-int/lit16 v1, v1, 0xb4

    .line 127
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v0, v0, 0x2

    sub-int/2addr v3, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x8

    div-int/lit8 v0, v0, 0x14

    sub-int/2addr v3, v0

    div-int/2addr v1, v3

    iput v1, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    if-gez v1, :cond_75

    const/4 v0, 0x0

    .line 129
    iput v0, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    .line 131
    :cond_75
    iget v0, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    if-le v0, v2, :cond_7b

    .line 132
    iput v2, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    .line 134
    :cond_7b
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->beatChangeListener:Lcom/codemao/midi/view/BeatView$BeatChangeListener;

    if-eqz v0, :cond_88

    .line 135
    iget v1, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    add-int/lit8 v1, v1, 0x1e

    iget-boolean v2, p0, Lcom/codemao/midi/view/BeatView;->isTouchCompleted:Z

    invoke-interface {v0, v1, v2}, Lcom/codemao/midi/view/BeatView$BeatChangeListener;->onBeatChange(IZ)V

    :cond_88
    return-void
.end method

.method private drawBeat(Landroid/graphics/Canvas;)V
    .registers 11

    .line 106
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    const-string v1, "#FF947CD9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 107
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x6

    div-int/lit8 v0, v0, 0x14

    .line 108
    iget-object v1, p0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 109
    iget v1, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/lit8 v4, v0, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    div-int/lit8 v4, v4, 0x14

    sub-int/2addr v3, v4

    mul-int v1, v1, v3

    div-int/lit16 v1, v1, 0xb4

    add-int/2addr v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    div-int/lit8 v3, v3, 0x14

    add-int/2addr v1, v3

    .line 110
    new-instance v3, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    add-int/2addr v4, v0

    int-to-float v0, v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    iget v5, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v7

    mul-int/lit8 v7, v7, 0x8

    iget v8, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v7, v8

    sub-int/2addr v6, v7

    int-to-float v6, v6

    invoke-direct {v3, v0, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iget v4, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v0, v4

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget v5, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, p0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3, v0, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 111
    new-instance v0, Landroid/graphics/RectF;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x6

    iget v4, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v3, v4

    sub-int v3, v1, v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    iget v5, p0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    add-int/2addr v1, v4

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-direct {v0, v3, v2, v1, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 112
    iget-object v1, p0, Lcom/codemao/midi/view/BeatView;->icProgress:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/codemao/midi/view/BeatView;->rectProgress:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v2, v0, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    return-void
.end method

.method private drawBg(Landroid/graphics/Canvas;)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 82
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x6

    div-int/lit8 v8, v1, 0x14

    .line 84
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v9

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iget v2, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int v10, v1, v2

    .line 86
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v1

    iget v2, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v1, v2

    const/4 v11, 0x2

    if-ge v1, v11, :cond_25

    const/4 v1, 0x2

    .line 90
    :cond_25
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v3, v4

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x6

    iget v5, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x2

    iget v12, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v6, v12

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x6

    iget v13, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v12, v13

    sub-int/2addr v6, v12

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget v5, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 91
    new-instance v2, Landroid/graphics/RectF;

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v3, v4

    add-int/2addr v3, v8

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x8

    iget v5, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    mul-int/lit8 v6, v6, 0x4

    iget v12, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v6, v12

    sub-int/2addr v5, v6

    sub-int/2addr v5, v8

    int-to-float v5, v5

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v12

    mul-int/lit8 v12, v12, 0x8

    iget v13, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v12, v13

    sub-int/2addr v6, v12

    int-to-float v6, v6

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v3

    mul-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getHeight()I

    move-result v4

    mul-int/lit8 v4, v4, 0x4

    iget v5, v0, Lcom/codemao/midi/view/BeatView;->height:I

    div-int/2addr v4, v5

    int-to-float v4, v4

    iget-object v5, v0, Lcom/codemao/midi/view/BeatView;->bgPaint2:Landroid/graphics/Paint;

    invoke-virtual {v7, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 92
    iget-object v2, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    const-string v3, "#66FFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v2

    div-int/2addr v2, v11

    div-int/lit8 v12, v1, 0x2

    sub-int/2addr v2, v12

    int-to-float v2, v2

    const/4 v1, 0x0

    int-to-float v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v3

    div-int/2addr v3, v11

    add-int/2addr v3, v12

    int-to-float v4, v3

    add-int/2addr v1, v10

    int-to-float v14, v1

    iget-object v6, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v13

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 94
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v11

    sub-int/2addr v1, v12

    int-to-float v2, v1

    sub-int v1, v9, v10

    int-to-float v10, v1

    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/2addr v1, v11

    add-int/2addr v1, v12

    int-to-float v4, v1

    int-to-float v9, v9

    iget-object v6, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v3, v10

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 96
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getWidth()I

    move-result v1

    mul-int/lit8 v2, v8, 0x2

    sub-int v11, v1, v2

    .line 97
    iget-object v1, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    const-string v2, "#33FFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 98
    div-int/lit8 v1, v11, 0x4

    sub-int v2, v1, v12

    add-int/2addr v2, v8

    int-to-float v15, v2

    add-int/2addr v1, v12

    add-int/2addr v1, v8

    int-to-float v6, v1

    iget-object v5, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move v4, v6

    move-object/from16 v16, v5

    move v5, v14

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 99
    iget-object v6, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    move v3, v10

    move/from16 v4, v17

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    mul-int/lit8 v11, v11, 0x3

    .line 100
    div-int/lit8 v11, v11, 0x4

    sub-int v1, v11, v12

    add-int/2addr v1, v8

    int-to-float v15, v1

    add-int/2addr v11, v12

    add-int/2addr v11, v8

    int-to-float v8, v11

    iget-object v6, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    move v2, v15

    move v3, v13

    move v4, v8

    move v5, v14

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 101
    iget-object v6, v0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    move v3, v10

    move v5, v9

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .registers 5

    .line 52
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    .line 53
    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 54
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    const/16 v1, -0x100

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 56
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/lit8 v2, v2, 0x3

    div-int/lit8 v2, v2, 0x2c

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 57
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    const-string v2, "#1fffffff"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint2:Landroid/graphics/Paint;

    .line 59
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint2:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 61
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint2:Landroid/graphics/Paint;

    const-string v2, "#FF221D4E"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 62
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    .line 63
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 64
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 65
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->beatPaint:Landroid/graphics/Paint;

    const-string v1, "#FF947CD9"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/codemao/midi/R$drawable;->midi_ic_beat:I

    invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/midi/view/BeatView;->icProgress:Landroid/graphics/Bitmap;

    .line 67
    new-instance v0, Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/codemao/midi/view/BeatView;->icProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/codemao/midi/view/BeatView;->icProgress:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/codemao/midi/view/BeatView;->rectProgress:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public getBeatNum()I
    .registers 2

    .line 165
    invoke-direct {p0}, Lcom/codemao/midi/view/BeatView;->caculateBeatNum()V

    .line 166
    iget v0, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    add-int/lit8 v0, v0, 0x1e

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 3

    .line 72
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 73
    iget-object v0, p0, Lcom/codemao/midi/view/BeatView;->bgPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_a

    .line 74
    invoke-direct {p0}, Lcom/codemao/midi/view/BeatView;->init()V

    .line 76
    :cond_a
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/BeatView;->drawBg(Landroid/graphics/Canvas;)V

    .line 77
    invoke-direct {p0, p1}, Lcom/codemao/midi/view/BeatView;->drawBeat(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 5

    .line 141
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/codemao/midi/view/BeatView;->isTouchCompleted:Z

    .line 143
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_32

    if-eq v0, v1, :cond_21

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1a

    const/4 v2, 0x3

    if-eq v0, v2, :cond_29

    goto :goto_38

    .line 148
    :cond_1a
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    goto :goto_38

    .line 151
    :cond_21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    .line 152
    iput-boolean v1, p0, Lcom/codemao/midi/view/BeatView;->isTouchCompleted:Z

    .line 154
    :cond_29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    .line 155
    iput-boolean v1, p0, Lcom/codemao/midi/view/BeatView;->isTouchCompleted:Z

    goto :goto_38

    .line 145
    :cond_32
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    iput p1, p0, Lcom/codemao/midi/view/BeatView;->touchX:F

    .line 158
    :goto_38
    invoke-direct {p0}, Lcom/codemao/midi/view/BeatView;->caculateBeatNum()V

    .line 159
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1
.end method

.method public setBeatChangeListener(Lcom/codemao/midi/view/BeatView$BeatChangeListener;)V
    .registers 2

    .line 31
    iput-object p1, p0, Lcom/codemao/midi/view/BeatView;->beatChangeListener:Lcom/codemao/midi/view/BeatView$BeatChangeListener;

    return-void
.end method

.method public setBeatNum(I)V
    .registers 2

    add-int/lit8 p1, p1, -0x1e

    .line 170
    iput p1, p0, Lcom/codemao/midi/view/BeatView;->beatNum:I

    .line 171
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method
