.class Lcom/nemo/commonui/xpopup/photoview/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method static checkZoomLevels(FFF)V
    .registers 3

    cmpl-float p0, p0, p1

    if-gez p0, :cond_11

    cmpl-float p0, p1, p2

    if-gez p0, :cond_9

    return-void

    .line 14
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Medium zoom has to be less than Maximum zoom. Call setMaximumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 11
    :cond_11
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "Minimum zoom has to be less than Medium zoom. Call setMinimumZoom() with a more appropriate value"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static getPointerIndex(I)I
    .registers 2

    const v0, 0xff00

    and-int/2addr p0, v0

    shr-int/lit8 p0, p0, 0x8

    return p0
.end method

.method static hasDrawable(Landroid/widget/ImageView;)Z
    .registers 1

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    goto :goto_9

    :cond_8
    const/4 p0, 0x0

    :goto_9
    return p0
.end method

.method static isSupportedScaleType(Landroid/widget/ImageView$ScaleType;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 27
    :cond_4
    sget-object v1, Lcom/nemo/commonui/xpopup/photoview/Util$1;->$SwitchMap$android$widget$ImageView$ScaleType:[I

    invoke-virtual {p0}, Landroid/widget/ImageView$ScaleType;->ordinal()I

    move-result p0

    aget p0, v1, p0

    const/4 v1, 0x1

    if-eq p0, v1, :cond_10

    return v1

    :cond_10
    return v0
.end method
