.class public Lcom/ljwx/baseview/text/SubTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SubTextView.java"


# instance fields
.field private mIsSubtitle:Z

.field private mSubGap:I

.field private mSubLayout:Landroid/text/Layout;

.field private mSubOffset:I

.field private final mSubPaint:Landroid/text/TextPaint;

.field private mSubText:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/ljwx/baseview/text/SubTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 9

    .line 39
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    new-instance p1, Landroid/text/TextPaint;

    const/4 p3, 0x1

    invoke-direct {p1, p3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object p1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubPaint:Landroid/text/TextPaint;

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    .line 28
    iput v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubOffset:I

    .line 41
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/ljwx/baseview/R$styleable;->SubTextView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 43
    sget v1, Lcom/ljwx/baseview/R$styleable;->SubTextView_stvSubTextColor:I

    const v2, -0x99999a

    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 44
    sget v2, Lcom/ljwx/baseview/R$styleable;->SubTextView_stvSubTextSize:I

    invoke-virtual {p0}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const v4, 0x3f4ccccd  # 0.8f

    mul-float v3, v3, v4

    invoke-virtual {p2, v2, v3}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v2

    .line 46
    sget v3, Lcom/ljwx/baseview/R$styleable;->SubTextView_stvSubText:I

    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubText:Ljava/lang/CharSequence;

    .line 47
    sget v3, Lcom/ljwx/baseview/R$styleable;->SubTextView_stvSubTextGap:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubGap:I

    .line 48
    sget v3, Lcom/ljwx/baseview/R$styleable;->SubTextView_stvSubTextMode:I

    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    if-nez v3, :cond_4b

    goto :goto_4c

    :cond_4b
    const/4 p3, 0x0

    :goto_4c
    iput-boolean p3, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    .line 50
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 52
    sget-object p2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {p1, p2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 53
    invoke-virtual {p1, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 54
    invoke-virtual {p1, v2}, Landroid/text/TextPaint;->setTextSize(F)V

    const/16 p1, 0x13

    .line 56
    invoke-super {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    .line 57
    invoke-super {p0}, Landroid/widget/TextView;->setSingleLine()V

    return-void
.end method

.method private obtainLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IZ)Landroid/text/Layout;
    .registers 14

    .line 75
    invoke-static {p3}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p3

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    sub-int/2addr p3, v0

    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    sub-int v4, p3, v0

    .line 76
    invoke-static {p1, p2}, Landroid/text/BoringLayout;->isBoring(Ljava/lang/CharSequence;Landroid/text/TextPaint;)Landroid/text/BoringLayout$Metrics;

    move-result-object v7

    if-eqz p4, :cond_18

    .line 77
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    goto :goto_1a

    :cond_18
    sget-object p3, Landroid/text/Layout$Alignment;->ALIGN_OPPOSITE:Landroid/text/Layout$Alignment;

    :goto_1a
    move-object v5, p3

    if-eqz v7, :cond_2b

    const/high16 p3, 0x3f800000  # 1.0f

    const/4 v6, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, v4

    move-object v4, v5

    move v5, p3

    .line 79
    invoke-static/range {v1 .. v8}, Landroid/text/BoringLayout;->make(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFLandroid/text/BoringLayout$Metrics;Z)Landroid/text/BoringLayout;

    move-result-object p1

    return-object p1

    .line 81
    :cond_2b
    new-instance p3, Landroid/text/StaticLayout;

    const/high16 v6, 0x3f800000  # 1.0f

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p3

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p3
.end method


# virtual methods
.method public getCompoundPaddingRight()I
    .registers 4

    .line 68
    iget-boolean v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    if-nez v0, :cond_19

    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    if-eqz v0, :cond_19

    .line 69
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    iget-object v1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/Layout;->getLineWidth(I)F

    move-result v1

    float-to-int v1, v1

    add-int/2addr v0, v1

    iget v1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubGap:I

    add-int/2addr v0, v1

    return v0

    .line 71
    :cond_19
    invoke-super {p0}, Landroid/widget/TextView;->getCompoundPaddingRight()I

    move-result v0

    return v0
.end method

.method offsetTo(I)V
    .registers 7

    .line 107
    iput p1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubOffset:I

    .line 108
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 109
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    if-eqz v0, :cond_1e

    .line 111
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    add-int/2addr v4, p1

    invoke-virtual {v0, v1, p1, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_1e
    if-eqz v2, :cond_2c

    .line 114
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/2addr v3, p1

    invoke-virtual {v2, v1, p1, v0, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2c
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .registers 5

    .line 121
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 122
    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    if-eqz v0, :cond_13

    iget-boolean v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    .line 123
    iget v1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubOffset:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 125
    :cond_13
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 127
    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    if-eqz v0, :cond_5d

    .line 128
    iget-boolean v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    if-eqz v0, :cond_38

    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getTotalPaddingTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubGap:I

    add-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_58

    .line 131
    :cond_38
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    .line 132
    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    .line 131
    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 134
    :goto_58
    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    invoke-virtual {v0, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 136
    :cond_5d
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    return-void
.end method

.method protected onMeasure(II)V
    .registers 6

    .line 87
    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    .line 88
    iput-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    .line 89
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    return-void

    .line 92
    :cond_f
    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubText:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubPaint:Landroid/text/TextPaint;

    iget-boolean v2, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    invoke-direct {p0, v0, v1, p1, v2}, Lcom/ljwx/baseview/text/SubTextView;->obtainLayout(Ljava/lang/CharSequence;Landroid/text/TextPaint;IZ)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    .line 93
    invoke-super {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;->onMeasure(II)V

    .line 95
    iget-boolean v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mIsSubtitle:Z

    if-eqz v0, :cond_60

    .line 96
    iget-object v0, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    invoke-virtual {v0}, Landroid/text/Layout;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubGap:I

    add-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/ljwx/baseview/text/SubTextView;->offsetTo(I)V

    .line 98
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    const/high16 v0, 0x40000000  # 2.0f

    if-eq p2, v0, :cond_60

    .line 100
    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/TextView;->getCompoundPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/ljwx/baseview/text/SubTextView;->mSubLayout:Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    .line 101
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/TextView;->setMeasuredDimension(II)V

    :cond_60
    return-void
.end method

.method public setGravity(I)V
    .registers 2

    return-void
.end method
