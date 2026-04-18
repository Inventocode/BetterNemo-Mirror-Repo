.class public Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "CreativeDownLoadThemeButton.java"


# instance fields
.field private backGroundPaint:Landroid/graphics/Paint;

.field private bgColor:I

.field private doneBgColor:I

.field private doneTextColor:I

.field private proGressColor:I

.field private progress:I

.field private status:I

.field private textColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 41
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 45
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 27
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->status:I

    .line 28
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->progress:I

    const-string p1, "#FF834DF7"

    .line 30
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->bgColor:I

    const-string p1, "#FFFFFFFF"

    .line 31
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->textColor:I

    const-string p1, "#80FFFFFF"

    .line 32
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->doneTextColor:I

    const-string p1, "#80834DF7"

    .line 33
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->doneBgColor:I

    const-string p1, "#33ffffff"

    .line 34
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->proGressColor:I

    .line 46
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->init()V

    return-void
.end method

.method private drawBackGround(Landroid/graphics/Canvas;)V
    .registers 13

    .line 64
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->status:I

    const/4 v1, 0x2

    if-eqz v0, :cond_5b

    const/4 v2, 0x1

    if-eq v0, v2, :cond_32

    if-eq v0, v1, :cond_c

    goto/16 :goto_80

    .line 75
    :cond_c
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->doneBgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 76
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    goto :goto_80

    .line 70
    :cond_32
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->bgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 71
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->drawProgress(Landroid/graphics/Canvas;)V

    goto :goto_80

    .line 66
    :cond_5b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    iget v2, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->bgColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v6, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v7, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v8, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    div-int/2addr v0, v1

    int-to-float v9, v0

    iget-object v10, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object v3, p1

    invoke-virtual/range {v3 .. v10}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    :goto_80
    return-void
.end method

.method private drawProgress(Landroid/graphics/Canvas;)V
    .registers 28

    move-object/from16 v0, p0

    .line 110
    iget-object v1, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    iget v2, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->proGressColor:I

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 111
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v1

    if-nez v1, :cond_10

    return-void

    .line 115
    :cond_10
    iget v2, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->progress:I

    int-to-float v2, v2

    const/high16 v3, 0x42c80000  # 100.0f

    div-float/2addr v2, v3

    int-to-float v3, v1

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 116
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    const-wide/high16 v4, 0x4000000000000000L  # 2.0

    const-wide v6, 0x4066800000000000L  # 180.0

    if-gt v2, v3, :cond_57

    sub-int v1, v3, v2

    int-to-double v1, v1

    int-to-double v8, v3

    div-double/2addr v1, v8

    .line 118
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    mul-int/lit8 v3, v3, 0x2

    int-to-float v11, v3

    .line 119
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v12, v3

    const-wide v13, 0x4056800000000000L  # 90.0

    add-double/2addr v13, v1

    double-to-float v13, v13

    mul-double v1, v1, v4

    sub-double/2addr v6, v1

    double-to-float v14, v6

    const/4 v15, 0x0

    iget-object v1, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move-object/from16 v16, v1

    invoke-virtual/range {v8 .. v16}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto/16 :goto_dd

    :cond_57
    sub-int v8, v1, v3

    if-le v2, v8, :cond_af

    sub-int v1, v3, v1

    add-int/2addr v1, v2

    int-to-double v1, v1

    int-to-double v8, v3

    div-double/2addr v1, v8

    .line 121
    invoke-static {v1, v2}, Ljava/lang/Math;->asin(D)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 122
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    int-to-float v11, v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v8

    int-to-float v12, v8

    int-to-float v14, v3

    iget-object v15, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v8, p1

    move v13, v14

    invoke-virtual/range {v8 .. v15}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 123
    iget-object v8, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    iget v9, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->bgColor:I

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v8

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v8, v3

    int-to-float v10, v8

    const/4 v11, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getWidth()I

    move-result v3

    int-to-float v12, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v3

    int-to-float v13, v3

    const-wide v8, -0x3fa9800000000000L  # -90.0

    add-double/2addr v8, v1

    double-to-float v14, v8

    mul-double v1, v1, v4

    sub-double/2addr v6, v1

    double-to-float v15, v6

    const/16 v16, 0x0

    iget-object v1, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v9, p1

    move-object/from16 v17, v1

    invoke-virtual/range {v9 .. v17}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    goto :goto_dd

    :cond_af
    const/16 v18, 0x0

    const/16 v19, 0x0

    mul-int/lit8 v1, v3, 0x2

    int-to-float v1, v1

    .line 126
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v22, 0x42b40000  # 90.0f

    const/high16 v23, 0x43340000  # 180.0f

    const/16 v24, 0x0

    iget-object v5, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v17, p1

    move/from16 v20, v1

    move/from16 v21, v4

    move-object/from16 v25, v5

    invoke-virtual/range {v17 .. v25}, Landroid/graphics/Canvas;->drawArc(FFFFFFZLandroid/graphics/Paint;)V

    int-to-float v7, v3

    const/4 v8, 0x0

    int-to-float v9, v2

    .line 127
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getHeight()I

    move-result v1

    int-to-float v10, v1

    iget-object v11, v0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :goto_dd
    return-void
.end method

.method private init()V
    .registers 3

    .line 50
    iget v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->textColor:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 51
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    .line 52
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->backGroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method


# virtual methods
.method public changeStatus(I)V
    .registers 4

    .line 82
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->status:I

    const/4 v0, 0x1

    if-eqz p1, :cond_38

    const/4 v1, 0x0

    if-eq p1, v0, :cond_22

    const/4 v0, 0x2

    if-eq p1, v0, :cond_c

    goto :goto_4d

    .line 95
    :cond_c
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 96
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->doneTextColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 97
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_downloaded:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    .line 90
    :cond_22
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 91
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->textColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_downloading:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4d

    .line 85
    :cond_38
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 86
    iget p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->textColor:I

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 87
    invoke-virtual {p0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Lcom/codemao/creativecenter/R$string;->creative_download:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    :goto_4d
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 2

    .line 58
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->drawBackGround(Landroid/graphics/Canvas;)V

    .line 59
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public setProgress(I)V
    .registers 2

    .line 104
    iput p1, p0, Lcom/codemao/creativecenter/customview/CreativeDownLoadThemeButton;->progress:I

    .line 105
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
