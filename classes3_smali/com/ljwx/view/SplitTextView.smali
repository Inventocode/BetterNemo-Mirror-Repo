.class public final Lcom/ljwx/view/SplitTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SplitTextView.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/view/SplitTextView$TextAttributes;
    }
.end annotation


# instance fields
.field private mBaseLine:F

.field private mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

.field private mCenterMarginLeft:F

.field private mCenterMarginRight:F

.field private mDrawableLeft:Landroid/graphics/drawable/Drawable;

.field private mDrawableLeftPadding:F

.field private mDrawableLeftSize:F

.field private mDrawableRight:Landroid/graphics/drawable/Drawable;

.field private mDrawableRightPadding:F

.field private mDrawableRightSize:F

.field private mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

.field private mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

.field private mSpreadInside:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 10

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/view/SplitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    sget-object p3, Lcom/ljwx/view/R$styleable;->SplitTextView:[I

    invoke-virtual {p1, p2, p3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    const-string p2, "context.obtainStyledAttr….styleable.SplitTextView)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    :try_start_13
    sget p2, Lcom/ljwx/view/R$styleable;->SplitTextView_stvAutoWrap:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 65
    sget p2, Lcom/ljwx/view/R$styleable;->SplitTextView_stvSpreadInside:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    iput-boolean p2, p0, Lcom/ljwx/view/SplitTextView;->mSpreadInside:Z

    .line 68
    sget p2, Lcom/ljwx/view/R$styleable;->SplitTextView_stvCenterMarginLeft:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 67
    iput p2, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginLeft:F

    .line 70
    sget p2, Lcom/ljwx/view/R$styleable;->SplitTextView_stvCenterMarginRight:I

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result p2

    .line 69
    iput p2, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginRight:F

    .line 71
    invoke-direct {p0, p1}, Lcom/ljwx/view/SplitTextView;->getTextDrawable(Landroid/content/res/TypedArray;)V

    .line 72
    invoke-direct {p0, p1}, Lcom/ljwx/view/SplitTextView;->leftAttributes(Landroid/content/res/TypedArray;)V

    .line 73
    invoke-direct {p0, p1}, Lcom/ljwx/view/SplitTextView;->centerAttributes(Landroid/content/res/TypedArray;)V

    .line 74
    invoke-direct {p0, p1}, Lcom/ljwx/view/SplitTextView;->rightAttributes(Landroid/content/res/TypedArray;)V
    :try_end_3e
    .catchall {:try_start_13 .. :try_end_3e} :catchall_42

    .line 76
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :catchall_42
    move-exception p2

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    throw p2
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 6

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_5

    const/4 p2, 0x0

    :cond_5
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_a

    const/4 p3, 0x0

    .line 20
    :cond_a
    invoke-direct {p0, p1, p2, p3}, Lcom/ljwx/view/SplitTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public static final synthetic access$defaultBold(Lcom/ljwx/view/SplitTextView;)Z
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultBold()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$defaultColor(Lcom/ljwx/view/SplitTextView;)I
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultColor()I

    move-result p0

    return p0
.end method

.method public static final synthetic access$defaultSize(Lcom/ljwx/view/SplitTextView;)F
    .registers 1

    .line 20
    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultSize()F

    move-result p0

    return p0
.end method

.method private final centerAttributes(Landroid/content/res/TypedArray;)V
    .registers 9

    .line 120
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvCenterText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 121
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvCenterColor:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 122
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvCenterSize:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 123
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvCenterBold:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultBold()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 124
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/view/SplitTextView;->createTextAttribute(Lcom/ljwx/view/SplitTextView$TextAttributes;Ljava/lang/String;IFZ)Lcom/ljwx/view/SplitTextView$TextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    return-void
.end method

.method private final computeBaseLine()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getBaselineDiff()F

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getBaselineDiff()F

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 246
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getBaselineDiff()F

    move-result v1

    :cond_21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 247
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->getPaddingHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 248
    invoke-virtual {p0}, Landroid/widget/TextView;->getBaseline()I

    move-result v1

    int-to-float v1, v1

    cmpl-float v1, v1, v0

    if-lez v1, :cond_45

    invoke-virtual {p0}, Landroid/widget/TextView;->getBaseline()I

    move-result v0

    int-to-float v0, v0

    :cond_45
    iput v0, p0, Lcom/ljwx/view/SplitTextView;->mBaseLine:F

    return-void
.end method

.method private final computeHeight(I)I
    .registers 4

    .line 226
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 227
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v1, v0, :cond_e

    if-nez v0, :cond_1e

    .line 230
    :cond_e
    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->getTextMaxHeight()F

    move-result v0

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->getPaddingHeight()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    int-to-float v1, p1

    cmpg-float v1, v0, v1

    if-gez v1, :cond_1e

    float-to-int p1, v0

    :cond_1e
    return p1
.end method

.method private final computeWidth(I)I
    .registers 8

    .line 186
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 187
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v1, -0x80000000

    if-eq v1, v0, :cond_e

    if-nez v0, :cond_65

    .line 190
    :cond_e
    iget v0, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginLeft:F

    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginRight:F

    add-float/2addr v0, v1

    .line 191
    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    add-float/2addr v1, v2

    .line 192
    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftPadding:F

    iget v3, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightPadding:F

    add-float/2addr v2, v3

    .line 193
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v3

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v3

    iget-object v4, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    const/4 v5, 0x0

    if-eqz v4, :cond_3a

    invoke-virtual {v4}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v4

    goto :goto_3b

    :cond_3a
    const/4 v4, 0x0

    :goto_3b
    add-float/2addr v3, v4

    .line 194
    iget-object v4, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v4, :cond_45

    invoke-virtual {v4}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v4

    goto :goto_46

    :cond_45
    const/4 v4, 0x0

    :goto_46
    add-float/2addr v3, v4

    iget-object v4, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v4, :cond_4f

    invoke-virtual {v4}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v5

    :cond_4f
    add-float/2addr v3, v5

    .line 196
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    add-float/2addr v3, v1

    add-float/2addr v3, v2

    add-float/2addr v3, v0

    int-to-float v0, p1

    cmpg-float v0, v3, v0

    if-gez v0, :cond_65

    float-to-int p1, v3

    :cond_65
    return p1
.end method

.method private final createTextAttribute(Lcom/ljwx/view/SplitTextView$TextAttributes;Ljava/lang/String;IFZ)Lcom/ljwx/view/SplitTextView$TextAttributes;
    .registers 9

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_d

    .line 158
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-eqz v2, :cond_2a

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultColor()I

    move-result v2

    if-ne p3, v2, :cond_2a

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultSize()F

    move-result v2

    cmpg-float v2, p4, v2

    if-nez v2, :cond_1f

    const/4 v0, 0x1

    :cond_1f
    if-eqz v0, :cond_2a

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultBold()Z

    move-result v0

    if-eq p5, v0, :cond_28

    goto :goto_2a

    :cond_28
    const/4 p1, 0x0

    return-object p1

    :cond_2a
    :goto_2a
    if-nez p1, :cond_31

    .line 159
    new-instance p1, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {p1, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    .line 160
    :cond_31
    invoke-virtual {p1, p3}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setColor(I)V

    .line 161
    invoke-virtual {p1, p4}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setSize(F)V

    .line 162
    invoke-virtual {p1, p5}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setBold(Z)V

    .line 163
    invoke-virtual {p1}, Lcom/ljwx/view/SplitTextView$TextAttributes;->initPaint()V

    .line 164
    invoke-virtual {p1, p2}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setText(Ljava/lang/String;)V

    return-object p1
.end method

.method private final defaultBold()Z
    .registers 2

    .line 344
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/text/TextPaint;->isFakeBoldText()Z

    move-result v0

    return v0
.end method

.method private final defaultColor()I
    .registers 2

    .line 330
    invoke-virtual {p0}, Landroid/widget/TextView;->getCurrentTextColor()I

    move-result v0

    return v0
.end method

.method private final defaultSize()F
    .registers 2

    .line 337
    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v0

    return v0
.end method

.method private final drawIcon(Landroid/graphics/Canvas;)V
    .registers 7

    .line 298
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x40000000  # 2.0f

    if-eqz v0, :cond_2b

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 301
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    .line 302
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->getPaddingHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v4

    int-to-float v4, v4

    add-float/2addr v3, v4

    .line 300
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 304
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 305
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 307
    :cond_2b
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5d

    .line 308
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 310
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget v3, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    sub-float/2addr v2, v3

    .line 311
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->getPaddingHeight()I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget v4, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v3, v1

    .line 309
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 313
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 314
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_5d
    return-void
.end method

.method private final getPaddingHeight()I
    .registers 3

    .line 323
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private final getTextDrawable(Landroid/content/res/TypedArray;)V
    .registers 8

    .line 86
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvDrawableLeft:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x42280000  # 42.0f

    const/4 v2, 0x0

    if-nez v0, :cond_f

    const/4 v0, 0x0

    goto :goto_15

    .line 88
    :cond_f
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvDrawableLeftSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 87
    :goto_15
    iput v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    .line 89
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1d

    const/4 v0, 0x0

    goto :goto_23

    .line 90
    :cond_1d
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvDrawableLeftTextPadding:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 89
    :goto_23
    iput v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftPadding:F

    .line 91
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeft:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v0, :cond_31

    iget v4, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    float-to-int v5, v4

    float-to-int v4, v4

    invoke-virtual {v0, v3, v3, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 93
    :cond_31
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvDrawableRight:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_3d

    const/4 v0, 0x0

    goto :goto_43

    .line 95
    :cond_3d
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvDrawableRightSize:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v0

    .line 94
    :goto_43
    iput v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    .line 96
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_4a

    goto :goto_50

    .line 97
    :cond_4a
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvDrawableRightTextPadding:I

    invoke-virtual {p1, v0, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 96
    :goto_50
    iput v2, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightPadding:F

    .line 98
    iget-object p1, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRight:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_5d

    iget v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    float-to-int v1, v0

    float-to-int v0, v0

    invoke-virtual {p1, v3, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_5d
    return-void
.end method

.method private final getTextMaxHeight()F
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getLineHeight()F

    move-result v0

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v2, :cond_14

    invoke-virtual {v2}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getLineHeight()F

    move-result v2

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 214
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v2, :cond_21

    invoke-virtual {v2}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getLineHeight()F

    move-result v1

    :cond_21
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 215
    invoke-virtual {p0}, Landroid/widget/TextView;->getLineHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 216
    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private final leftAttributes(Landroid/content/res/TypedArray;)V
    .registers 9

    .line 107
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvLeftText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 108
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvLeftColor:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 109
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvLeftSize:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 110
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvLeftBold:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultBold()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 111
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/view/SplitTextView;->createTextAttribute(Lcom/ljwx/view/SplitTextView$TextAttributes;Ljava/lang/String;IFZ)Lcom/ljwx/view/SplitTextView$TextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    return-void
.end method

.method private final rightAttributes(Landroid/content/res/TypedArray;)V
    .registers 9

    .line 133
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvRightText:I

    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 134
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvRightColor:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultColor()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v4

    .line 135
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvRightSize:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultSize()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v5

    .line 136
    sget v0, Lcom/ljwx/view/R$styleable;->SplitTextView_stvRightBold:I

    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->defaultBold()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    .line 137
    iget-object v2, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    move-object v1, p0

    invoke-direct/range {v1 .. v6}, Lcom/ljwx/view/SplitTextView;->createTextAttribute(Lcom/ljwx/view/SplitTextView$TextAttributes;Ljava/lang/String;IFZ)Lcom/ljwx/view/SplitTextView$TextAttributes;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    return-void
.end method


# virtual methods
.method public final getTextCenter()Ljava/lang/String;
    .registers 2

    .line 449
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getTextLeft()Ljava/lang/String;
    .registers 2

    .line 438
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method public final getTextRight()Ljava/lang/String;
    .registers 2

    .line 460
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return-object v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 8

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 255
    iget v0, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftPadding:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mBaseLine:F

    invoke-virtual {p0}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 256
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 257
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 262
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftSize:F

    add-float/2addr v0, v1

    iget v1, p0, Lcom/ljwx/view/SplitTextView;->mDrawableLeftPadding:F

    add-float/2addr v0, v1

    .line 264
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 265
    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/appcompat/widget/AppCompatTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type kotlin.String"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    add-float/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 266
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v0, :cond_60

    .line 267
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ljwx/view/SplitTextView;->mBaseLine:F

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    invoke-virtual {p1, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 268
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v0

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 270
    :cond_60
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v0, :cond_7d

    .line 271
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginLeft:F

    iget v4, p0, Lcom/ljwx/view/SplitTextView;->mBaseLine:F

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 272
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v0

    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginLeft:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 274
    :cond_7d
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-eqz v0, :cond_c8

    .line 275
    iget-boolean v2, p0, Lcom/ljwx/view/SplitTextView;->mSpreadInside:Z

    if-eqz v2, :cond_af

    .line 276
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 278
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v2

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightSize:F

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mDrawableRightPadding:F

    sub-float/2addr v1, v2

    .line 279
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ljwx/view/SplitTextView;->mBaseLine:F

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {p1, v2, v1, v3, v0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 280
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    goto :goto_c8

    .line 282
    :cond_af
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getText()Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginRight:F

    iget v4, p0, Lcom/ljwx/view/SplitTextView;->mBaseLine:F

    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 283
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getTextWidth()F

    move-result v0

    iget v2, p0, Lcom/ljwx/view/SplitTextView;->mCenterMarginRight:F

    add-float/2addr v0, v2

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 286
    :cond_c8
    :goto_c8
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 288
    invoke-direct {p0, p1}, Lcom/ljwx/view/SplitTextView;->drawIcon(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 3

    .line 171
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 174
    invoke-direct {p0, p1}, Lcom/ljwx/view/SplitTextView;->computeWidth(I)I

    move-result p1

    invoke-direct {p0, p2}, Lcom/ljwx/view/SplitTextView;->computeHeight(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    .line 176
    invoke-direct {p0}, Lcom/ljwx/view/SplitTextView;->computeBaseLine()V

    return-void
.end method

.method public final setColorCenter(I)V
    .registers 3

    .line 473
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {v0, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    .line 474
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 475
    :goto_15
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setColorLeft(I)V
    .registers 3

    .line 467
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {v0, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    .line 468
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 469
    :goto_15
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setColorRight(I)V
    .registers 3

    .line 479
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {v0, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    .line 480
    invoke-virtual {v0}, Lcom/ljwx/view/SplitTextView$TextAttributes;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    if-nez v0, :cond_12

    goto :goto_15

    :cond_12
    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setColor(I)V

    .line 481
    :goto_15
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setTextCenter(Ljava/lang/String;)V
    .registers 3

    .line 442
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {v0, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mCenter:Lcom/ljwx/view/SplitTextView$TextAttributes;

    .line 443
    invoke-virtual {v0, p1}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setText(Ljava/lang/String;)V

    .line 444
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 445
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setTextLeft(Ljava/lang/String;)V
    .registers 3

    .line 431
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {v0, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mLeft:Lcom/ljwx/view/SplitTextView$TextAttributes;

    .line 432
    invoke-virtual {v0, p1}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setText(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 434
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method

.method public final setTextRight(Ljava/lang/String;)V
    .registers 3

    .line 453
    iget-object v0, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    if-nez v0, :cond_9

    new-instance v0, Lcom/ljwx/view/SplitTextView$TextAttributes;

    invoke-direct {v0, p0}, Lcom/ljwx/view/SplitTextView$TextAttributes;-><init>(Lcom/ljwx/view/SplitTextView;)V

    :cond_9
    iput-object v0, p0, Lcom/ljwx/view/SplitTextView;->mRight:Lcom/ljwx/view/SplitTextView$TextAttributes;

    .line 454
    invoke-virtual {v0, p1}, Lcom/ljwx/view/SplitTextView$TextAttributes;->setText(Ljava/lang/String;)V

    .line 455
    invoke-virtual {p0}, Landroid/widget/TextView;->requestLayout()V

    .line 456
    invoke-virtual {p0}, Landroid/widget/TextView;->invalidate()V

    return-void
.end method
