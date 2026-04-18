.class public final Lcom/ljwx/baseview/round/RoundTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RoundTextView.java"


# instance fields
.field private gradientCenterColor:I

.field private mCornerRadius:I

.field public mShadowPaint:Landroid/graphics/Paint;

.field private mShadowRect:Landroid/graphics/RectF;

.field private rd:Lcom/ljwx/baseview/round/RoundDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 30
    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/baseview/round/RoundTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 27

    move-object/from16 v8, p0

    .line 34
    invoke-direct/range {p0 .. p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    sget-object v0, Lcom/ljwx/baseview/R$styleable;->RoundTextView:[I

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 36
    sget v1, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndShadowColor:I

    const v2, -0x131314

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v9

    .line 37
    sget v1, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndShadowLen:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v1

    .line 38
    sget v3, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndLeftShadowLen:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v10

    .line 39
    sget v3, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndTopShadowLen:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    .line 40
    sget v3, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndRightShadowLen:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    .line 41
    sget v3, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndBottomShadowLen:I

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v13

    .line 42
    sget v1, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientColors:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget v3, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientType:I

    invoke-virtual {v0, v3, v2}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v3

    .line 44
    sget v4, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientCenterX:I

    const/high16 v5, 0x3f000000  # 0.5f

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v4

    .line 45
    sget v6, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientCenterY:I

    invoke-virtual {v0, v6, v5}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v5

    .line 46
    sget v6, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientRadius:I

    invoke-virtual {v0, v6, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 47
    sget v7, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientStartColor:I

    const/4 v14, -0x1

    invoke-virtual {v0, v7, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v7

    .line 48
    sget v15, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientCenterColor:I

    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    iput v15, v8, Lcom/ljwx/baseview/round/RoundTextView;->gradientCenterColor:I

    .line 49
    sget v15, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientEndColor:I

    invoke-virtual {v0, v15, v14}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v15

    .line 50
    sget v14, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndGradientOrientation:I

    const/4 v2, 0x6

    invoke-virtual {v0, v14, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 52
    sget v14, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndPressedRatio:I

    move/from16 p3, v9

    const v9, 0x3f4ccccd  # 0.8f

    invoke-virtual {v0, v14, v9}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v9

    .line 53
    sget v14, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndCornerRadius:I

    move/from16 v16, v10

    const/4 v10, 0x0

    invoke-virtual {v0, v14, v10}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v14

    iput v14, v8, Lcom/ljwx/baseview/round/RoundTextView;->mCornerRadius:I

    .line 55
    sget v14, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndSolidColor:I

    invoke-virtual {v0, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v14

    move/from16 v17, v11

    .line 56
    sget v11, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndStrokeColor:I

    invoke-virtual {v0, v11, v10}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v11

    move/from16 v18, v12

    .line 57
    sget v12, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndStrokeWidth:I

    invoke-virtual {v0, v12, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v12

    move/from16 v19, v13

    .line 58
    sget v13, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndStrokeDashWidth:I

    invoke-virtual {v0, v13, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v13

    move/from16 v20, v4

    .line 59
    sget v4, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndStrokeDashGap:I

    invoke-virtual {v0, v4, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    move/from16 v21, v5

    .line 60
    sget v5, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndShadowOffsetX:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    move/from16 v22, v5

    .line 61
    sget v5, Lcom/ljwx/baseview/R$styleable;->RoundTextView_rndShadowOffsetY:I

    invoke-virtual {v0, v5, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 62
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    const/4 v10, 0x1

    .line 63
    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setMaxLines(I)V

    const/16 v0, 0x11

    .line 64
    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 65
    new-instance v0, Lcom/ljwx/baseview/round/RoundDrawable;

    invoke-direct {v0, v14, v1, v9}, Lcom/ljwx/baseview/round/RoundDrawable;-><init>(Landroid/content/res/ColorStateList;Ljava/lang/String;F)V

    iput-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    .line 66
    iget v1, v8, Lcom/ljwx/baseview/round/RoundTextView;->mCornerRadius:I

    const/4 v9, -0x1

    if-eq v1, v9, :cond_db

    int-to-float v1, v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 69
    :cond_db
    iget-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    int-to-float v1, v13

    int-to-float v4, v4

    invoke-virtual {v0, v12, v11, v1, v4}, Landroid/graphics/drawable/GradientDrawable;->setStroke(IIFF)V

    .line 70
    iget-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    invoke-static {v2}, Lcom/ljwx/baseview/round/RoundUtil;->parseGradientOrientation(I)Landroid/graphics/drawable/GradientDrawable$Orientation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setOrientation(Landroid/graphics/drawable/GradientDrawable$Orientation;)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v7, v0, v1

    .line 71
    iget v2, v8, Lcom/ljwx/baseview/round/RoundTextView;->gradientCenterColor:I

    aput v2, v0, v10

    const/4 v2, 0x2

    aput v15, v0, v2

    invoke-static {v0}, Lcom/ljwx/baseview/round/RoundUtil;->parseGradientColors([I)[I

    move-result-object v0

    if-eqz v0, :cond_106

    .line 72
    array-length v2, v0

    if-le v2, v10, :cond_106

    .line 73
    iget-object v2, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    invoke-virtual {v2, v0}, Lcom/ljwx/baseview/round/RoundDrawable;->setGradientColors([I)V

    .line 75
    :cond_106
    iget-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientType(I)V

    .line 76
    iget-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    int-to-float v2, v6

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setGradientRadius(F)V

    .line 77
    iget-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    move/from16 v2, v20

    move/from16 v3, v21

    invoke-virtual {v0, v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setGradientCenter(FF)V

    .line 78
    new-instance v0, Landroid/graphics/Rect;

    move/from16 v9, v16

    move/from16 v11, v17

    move/from16 v13, v18

    move/from16 v14, v19

    invoke-direct {v0, v9, v11, v13, v14}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 79
    iget-object v2, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    invoke-virtual {v2, v0}, Lcom/ljwx/baseview/round/RoundDrawable;->setBoundsRect(Landroid/graphics/Rect;)V

    if-gtz v9, :cond_137

    if-gtz v11, :cond_137

    if-gtz v13, :cond_137

    if-lez v14, :cond_135

    goto :goto_137

    :cond_135
    const/4 v15, 0x0

    goto :goto_138

    :cond_137
    :goto_137
    const/4 v15, 0x1

    .line 82
    :goto_138
    iget-object v0, v8, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 83
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v7

    new-instance v6, Lcom/ljwx/baseview/round/RoundTextView$1;

    move-object v0, v6

    move-object/from16 v1, p0

    move v2, v9

    move v3, v13

    move v4, v11

    move v8, v5

    move/from16 v10, v22

    move v5, v14

    move/from16 v16, v8

    move-object v8, v6

    move v6, v15

    move-object v10, v7

    move v7, v12

    invoke-direct/range {v0 .. v7}, Lcom/ljwx/baseview/round/RoundTextView$1;-><init>(Lcom/ljwx/baseview/round/RoundTextView;IIIIZI)V

    invoke-virtual {v10, v8}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    if-eqz v15, :cond_17b

    .line 103
    invoke-static {v9, v11}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v13, v14}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    move/from16 v1, p3

    move/from16 v3, v16

    move/from16 v2, v22

    .line 104
    invoke-static {v1, v0, v2, v3}, Lcom/ljwx/baseview/round/RoundUtil;->initShadowPaint(IIII)Landroid/graphics/Paint;

    move-result-object v0

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/ljwx/baseview/round/RoundTextView;->mShadowPaint:Landroid/graphics/Paint;

    const/4 v0, 0x0

    const/4 v2, 0x1

    .line 105
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_17d

    :cond_17b
    move-object/from16 v1, p0

    .line 107
    :goto_17d
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    add-int v10, v9, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v0

    add-int/2addr v11, v0

    .line 108
    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v0

    add-int v12, v13, v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v0

    add-int v13, v14, v0

    .line 107
    invoke-virtual {v1, v10, v11, v12, v13}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method static synthetic access$000(Lcom/ljwx/baseview/round/RoundTextView;)I
    .registers 1

    .line 19
    iget p0, p0, Lcom/ljwx/baseview/round/RoundTextView;->mCornerRadius:I

    return p0
.end method

.method static synthetic access$002(Lcom/ljwx/baseview/round/RoundTextView;I)I
    .registers 2

    .line 19
    iput p1, p0, Lcom/ljwx/baseview/round/RoundTextView;->mCornerRadius:I

    return p1
.end method

.method static synthetic access$100(Lcom/ljwx/baseview/round/RoundTextView;)Lcom/ljwx/baseview/round/RoundDrawable;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ljwx/baseview/round/RoundTextView;->rd:Lcom/ljwx/baseview/round/RoundDrawable;

    return-object p0
.end method

.method static synthetic access$200(Lcom/ljwx/baseview/round/RoundTextView;)Landroid/graphics/RectF;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/ljwx/baseview/round/RoundTextView;->mShadowRect:Landroid/graphics/RectF;

    return-object p0
.end method

.method static synthetic access$202(Lcom/ljwx/baseview/round/RoundTextView;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .registers 2

    .line 19
    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundTextView;->mShadowRect:Landroid/graphics/RectF;

    return-object p1
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .registers 6

    .line 121
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundTextView;->mShadowRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_d

    .line 122
    iget v1, p0, Lcom/ljwx/baseview/round/RoundTextView;->mCornerRadius:I

    int-to-float v2, v1

    int-to-float v1, v1

    iget-object v3, p0, Lcom/ljwx/baseview/round/RoundTextView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2, v1, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 123
    :cond_d
    invoke-super {p0, p1}, Landroid/widget/TextView;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method
