.class public Lcom/codemao/creativecenter/customview/CreationGuideView;
.super Landroid/view/View;
.source "CreationGuideView.java"


# instance fields
.field private highlightRegions:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

.field private hightLightPath:Landroid/graphics/Path;

.field private shadowPaint:Landroid/graphics/Paint;

.field private shadowPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 31
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreationGuideView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreationGuideView;->init()V

    return-void
.end method

.method private combineShadow()V
    .registers 16

    .line 62
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_12

    .line 63
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    .line 64
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->hightLightPath:Landroid/graphics/Path;

    .line 66
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->hightLightPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 67
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 68
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v4, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v5, v0

    sget-object v6, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 69
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->highlightRegions:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

    if-eqz v0, :cond_db

    array-length v1, v0

    if-nez v1, :cond_38

    goto/16 :goto_db

    .line 72
    :cond_38
    array-length v1, v0

    const/4 v2, 0x0

    :goto_3a
    if-ge v2, v1, :cond_cf

    aget-object v3, v0, v2

    .line 73
    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getPadding()F

    move-result v4

    .line 74
    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRegionType()I

    move-result v5

    if-eqz v5, :cond_a8

    const/4 v6, 0x1

    if-eq v5, v6, :cond_7c

    const/4 v6, 0x2

    if-eq v5, v6, :cond_50

    goto/16 :goto_cb

    .line 83
    :cond_50
    iget-object v7, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->hightLightPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v8, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v9, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float v10, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getBottom()I

    move-result v5

    int-to-float v5, v5

    add-float v11, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRoundRadius()F

    move-result v12

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRoundRadius()F

    move-result v13

    sget-object v14, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v7 .. v14}, Landroid/graphics/Path;->addRoundRect(FFFFFFLandroid/graphics/Path$Direction;)V

    goto :goto_cb

    .line 79
    :cond_7c
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->hightLightPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getLeft()I

    move-result v6

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRight()I

    move-result v7

    add-int/2addr v6, v7

    int-to-float v6, v6

    const/high16 v7, 0x40000000  # 2.0f

    div-float/2addr v6, v7

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getTop()I

    move-result v8

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getBottom()I

    move-result v9

    add-int/2addr v8, v9

    int-to-float v8, v8

    div-float/2addr v8, v7

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getBottom()I

    move-result v9

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getTop()I

    move-result v3

    sub-int/2addr v9, v3

    int-to-float v3, v9

    div-float/2addr v3, v7

    add-float/2addr v3, v4

    sget-object v4, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v5, v6, v8, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    goto :goto_cb

    .line 76
    :cond_a8
    iget-object v9, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->hightLightPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float v10, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getTop()I

    move-result v5

    int-to-float v5, v5

    sub-float v11, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRight()I

    move-result v5

    int-to-float v5, v5

    add-float v12, v5, v4

    invoke-virtual {v3}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getBottom()I

    move-result v3

    int-to-float v3, v3

    add-float v13, v3, v4

    sget-object v14, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual/range {v9 .. v14}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    :goto_cb
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_3a

    .line 87
    :cond_cf
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->hightLightPath:Landroid/graphics/Path;

    sget-object v2, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 88
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_db
    :goto_db
    return-void
.end method

.method private init()V
    .registers 3

    .line 46
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPaint:Landroid/graphics/Paint;

    const-string v1, "#bf0a002a"

    .line 47
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private isInHighlight(FF)Z
    .registers 9

    .line 106
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->highlightRegions:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v1, :cond_37

    aget-object v4, v0, v3

    .line 107
    invoke-virtual {v4}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->isNeedClick()Z

    move-result v5

    if-eqz v5, :cond_34

    invoke-virtual {v4}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getLeft()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p1, v5

    if-lez v5, :cond_34

    invoke-virtual {v4}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getRight()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v5, p1, v5

    if-gez v5, :cond_34

    invoke-virtual {v4}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getTop()I

    move-result v5

    int-to-float v5, v5

    cmpl-float v5, p2, v5

    if-lez v5, :cond_34

    invoke-virtual {v4}, Lcom/codemao/creativecenter/bean/GuideHighlightInfo;->getBottom()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v4, p2, v4

    if-gez v4, :cond_34

    return v2

    :cond_34
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_37
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 4

    .line 52
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    if-nez v0, :cond_a

    .line 54
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreationGuideView;->combineShadow()V

    .line 56
    :cond_a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPath:Landroid/graphics/Path;

    if-eqz v0, :cond_13

    .line 57
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->shadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_13
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    .line 102
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {p0, v0, p1}, Lcom/codemao/creativecenter/customview/CreationGuideView;->isInHighlight(FF)Z

    move-result p1

    return p1
.end method

.method public setHighlightRegions([Lcom/codemao/creativecenter/bean/GuideHighlightInfo;)V
    .registers 2

    .line 92
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CreationGuideView;->highlightRegions:[Lcom/codemao/creativecenter/bean/GuideHighlightInfo;

    .line 93
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p1

    if-lez p1, :cond_12

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p1

    if-gtz p1, :cond_f

    goto :goto_12

    .line 96
    :cond_f
    invoke-direct {p0}, Lcom/codemao/creativecenter/customview/CreationGuideView;->combineShadow()V

    :cond_12
    :goto_12
    return-void
.end method
