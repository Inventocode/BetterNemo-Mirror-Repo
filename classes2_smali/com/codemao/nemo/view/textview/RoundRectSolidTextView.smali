.class public final Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "RoundRectSolidTextView.kt"


# instance fields
.field private cornerRadius:F

.field private mShadowColor:I

.field private mShadowRadius:F

.field private mSolidColor:I

.field private paint:Landroid/graphics/Paint;

.field private solidPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->initArrts(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->initArrts(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final initArrts(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 7

    if-nez p2, :cond_3

    return-void

    .line 34
    :cond_3
    sget-object v0, Lcom/codemao/nemo/R$styleable;->RoundRectSolidTextView:[I

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr…e.RoundRectSolidTextView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x1

    const/4 v0, 0x0

    .line 36
    invoke-virtual {p1, p2, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    const/4 v1, 0x0

    .line 37
    invoke-virtual {p1, v1, v0}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->cornerRadius:F

    const/4 v1, 0x2

    const/4 v2, -0x1

    .line 38
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mSolidColor:I

    const/4 v1, 0x3

    .line 39
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowColor:I

    .line 40
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    const/4 p1, 0x0

    .line 46
    invoke-virtual {p0, p2, p1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 48
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    .line 49
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 50
    iget-object v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    const-string v2, "paint"

    if-nez v1, :cond_49

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p1

    :cond_49
    iget v3, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowColor:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 51
    iget-object v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_56

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p1

    :cond_56
    const/high16 v3, 0x3f800000  # 1.0f

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 52
    iget-object v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_63

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p1

    :cond_63
    invoke-virtual {v1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 53
    iget-object v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    if-nez v1, :cond_6e

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, p1

    :cond_6e
    iget v2, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    iget v3, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowColor:I

    invoke-virtual {v1, v2, v0, v0, v3}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 55
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->solidPaint:Landroid/graphics/Paint;

    .line 56
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 57
    iget-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->solidPaint:Landroid/graphics/Paint;

    const-string v1, "solidPaint"

    if-nez v0, :cond_8b

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, p1

    :cond_8b
    iget v2, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mSolidColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 58
    iget-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->solidPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_98

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_99

    :cond_98
    move-object p1, v0

    :goto_99
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void
.end method


# virtual methods
.method public final getMShadowColor()I
    .registers 2

    .line 18
    iget v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowColor:I

    return v0
.end method

.method public final getMSolidColor()I
    .registers 2

    .line 19
    iget v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mSolidColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 13

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    const-string v1, "paint"

    const/4 v9, 0x0

    if-nez v0, :cond_10

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v9

    :cond_10
    iget v2, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 63
    iget-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->solidPaint:Landroid/graphics/Paint;

    const-string v10, "solidPaint"

    if-nez v0, :cond_1f

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v9

    :cond_1f
    iget v2, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mSolidColor:I

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget v3, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    .line 67
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    sub-float v4, v0, v2

    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v2, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    sub-float v5, v0, v2

    .line 69
    iget v7, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->cornerRadius:F

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->paint:Landroid/graphics/Paint;

    if-nez v0, :cond_43

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_44

    :cond_43
    move-object v8, v0

    :goto_44
    move-object v1, p1

    move v2, v3

    move v6, v7

    .line 65
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 72
    iget v3, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    .line 74
    invoke-virtual {p0}, Landroid/widget/TextView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    sub-float v4, v0, v1

    .line 75
    invoke-virtual {p0}, Landroid/widget/TextView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowRadius:F

    sub-float v5, v0, v1

    .line 76
    iget v7, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->cornerRadius:F

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->solidPaint:Landroid/graphics/Paint;

    if-nez v0, :cond_69

    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v8, v9

    goto :goto_6a

    :cond_69
    move-object v8, v0

    :goto_6a
    move-object v1, p1

    move v2, v3

    move v6, v7

    .line 72
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 79
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public final setMShadowColor(I)V
    .registers 2

    .line 18
    iput p1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mShadowColor:I

    return-void
.end method

.method public final setMSolidColor(I)V
    .registers 2

    .line 19
    iput p1, p0, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->mSolidColor:I

    return-void
.end method
