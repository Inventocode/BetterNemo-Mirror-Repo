.class public Lcom/youth/banner/util/BannerUtils;
.super Ljava/lang/Object;
.source "BannerUtils.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dp2px(F)F
    .registers 3

    .line 69
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1, p0, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    return p0
.end method

.method public static getRealPosition(ZII)I
    .registers 3

    if-nez p0, :cond_3

    return p1

    :cond_3
    if-nez p1, :cond_8

    add-int/lit8 p2, p2, -0x1

    goto :goto_10

    :cond_8
    add-int/lit8 p2, p2, 0x1

    if-ne p1, p2, :cond_e

    const/4 p2, 0x0

    goto :goto_10

    :cond_e
    add-int/lit8 p2, p1, -0x1

    :goto_10
    return p2
.end method

.method public static getView(Landroid/view/ViewGroup;I)Landroid/view/View;
    .registers 4

    .line 57
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 58
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 60
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1a

    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v0, v1, :cond_21

    .line 61
    :cond_1a
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 63
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_21
    return-object p0
.end method

.method public static setBannerRound(Landroid/view/View;F)V
    .registers 3

    .line 80
    new-instance v0, Lcom/youth/banner/util/BannerUtils$1;

    invoke-direct {v0, p1}, Lcom/youth/banner/util/BannerUtils$1;-><init>(F)V

    invoke-virtual {p0, v0}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 86
    invoke-virtual {p0, p1}, Landroid/view/View;->setClipToOutline(Z)V

    return-void
.end method
