.class public Lcom/ljwx/baseview/round/RoundDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "RoundDrawable.java"


# instance fields
.field private mBoundsRect:Landroid/graphics/Rect;

.field private mFillColor:I

.field private mFillGradientColors:[I

.field private mGradientColorLists:[Landroid/content/res/ColorStateList;

.field private mPressedRatio:F

.field private mSolidColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/res/ColorStateList;Ljava/lang/String;F)V
    .registers 4

    .line 23
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    .line 25
    iput p3, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mPressedRatio:F

    if-nez p1, :cond_10

    const/4 p1, 0x0

    .line 28
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    .line 30
    :cond_10
    iget-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 31
    iget-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Lcom/ljwx/baseview/round/RoundDrawable;->setSolidColors(Landroid/content/res/ColorStateList;)V

    goto :goto_40

    .line 32
    :cond_1e
    iget p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mPressedRatio:F

    const p3, 0x38d1b717  # 1.0E-4f

    cmpl-float p1, p1, p3

    if-lez p1, :cond_37

    .line 33
    iget-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iget p3, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mPressedRatio:F

    invoke-static {p1, p3}, Lcom/ljwx/baseview/round/RoundUtil;->csl(IF)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/ljwx/baseview/round/RoundDrawable;->setSolidColors(Landroid/content/res/ColorStateList;)V

    goto :goto_40

    .line 35
    :cond_37
    iget-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/round/RoundDrawable;->setColor(I)V

    .line 37
    :goto_40
    invoke-static {p2}, Lcom/ljwx/baseview/round/RoundUtil;->parseGradientColors(Ljava/lang/String;)[I

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/round/RoundDrawable;->setGradientColors([I)V

    return-void
.end method

.method private setSolidColors(Landroid/content/res/ColorStateList;)V
    .registers 2

    .line 67
    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    .line 68
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/round/RoundDrawable;->setColor(I)V

    return-void
.end method


# virtual methods
.method public isStateful()Z
    .registers 2

    .line 100
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->isStateful()Z

    move-result v0

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method protected onStateChange([I)Z
    .registers 7

    .line 79
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mGradientColorLists:[Landroid/content/res/ColorStateList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mFillGradientColors:[I

    if-eqz v0, :cond_23

    const/4 v0, 0x0

    .line 80
    :goto_b
    iget-object v3, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mGradientColorLists:[Landroid/content/res/ColorStateList;

    array-length v4, v3

    if-ge v0, v4, :cond_1d

    .line 81
    aget-object v3, v3, v0

    invoke-virtual {v3, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v3

    .line 82
    iget-object v4, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mFillGradientColors:[I

    aput v3, v4, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    .line 84
    :cond_1d
    iget-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mFillGradientColors:[I

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    return v1

    .line 87
    :cond_23
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mSolidColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_33

    .line 88
    invoke-virtual {v0, p1, v2}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    .line 89
    iget v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mFillColor:I

    if-eq v0, p1, :cond_33

    .line 90
    invoke-virtual {p0, p1}, Lcom/ljwx/baseview/round/RoundDrawable;->setColor(I)V

    return v1

    :cond_33
    return v2
.end method

.method public setBounds(IIII)V
    .registers 7

    .line 59
    iget-object v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mBoundsRect:Landroid/graphics/Rect;

    if-eqz v0, :cond_14

    .line 60
    iget v1, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v1

    iget v1, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v1

    iget v1, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v1

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    goto :goto_17

    .line 63
    :cond_14
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/GradientDrawable;->setBounds(IIII)V

    :goto_17
    return-void
.end method

.method public setBoundsRect(Landroid/graphics/Rect;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mBoundsRect:Landroid/graphics/Rect;

    return-void
.end method

.method public setColor(I)V
    .registers 2

    .line 73
    iput p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mFillColor:I

    .line 74
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    return-void
.end method

.method public setGradientColors([I)V
    .registers 5

    .line 41
    iput-object p1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mFillGradientColors:[I

    if-eqz p1, :cond_25

    .line 42
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_25

    .line 43
    array-length v0, p1

    new-array v0, v0, [Landroid/content/res/ColorStateList;

    iput-object v0, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mGradientColorLists:[Landroid/content/res/ColorStateList;

    const/4 v0, 0x0

    .line 44
    :goto_e
    iget-object v1, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mGradientColorLists:[Landroid/content/res/ColorStateList;

    array-length v1, v1

    if-ge v0, v1, :cond_22

    .line 45
    aget v1, p1, v0

    iget v2, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mPressedRatio:F

    invoke-static {v1, v2}, Lcom/ljwx/baseview/round/RoundUtil;->csl(IF)Landroid/content/res/ColorStateList;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/ljwx/baseview/round/RoundDrawable;->mGradientColorLists:[Landroid/content/res/ColorStateList;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 48
    :cond_22
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    :cond_25
    return-void
.end method
