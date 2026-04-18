.class public Lcom/youth/banner/transformer/DepthPageTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "DepthPageTransformer.java"


# static fields
.field private static final DEFAULT_MIN_SCALE:F = 0.75f


# instance fields
.field private mMinScale:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x3f400000  # 0.75f

    .line 9
    iput v0, p0, Lcom/youth/banner/transformer/DepthPageTransformer;->mMinScale:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x3f400000  # 0.75f

    .line 9
    iput v0, p0, Lcom/youth/banner/transformer/DepthPageTransformer;->mMinScale:F

    .line 15
    iput p1, p0, Lcom/youth/banner/transformer/DepthPageTransformer;->mMinScale:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 7

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    const/4 v1, 0x0

    const/high16 v2, -0x40800000  # -1.0f

    cmpg-float v2, p2, v2

    if-gez v2, :cond_f

    .line 23
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_55

    :cond_f
    const/high16 v2, 0x3f800000  # 1.0f

    cmpg-float v3, p2, v1

    if-gtz v3, :cond_22

    .line 27
    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 28
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 29
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 30
    invoke-virtual {p1, v2}, Landroid/view/View;->setScaleY(F)V

    goto :goto_55

    :cond_22
    cmpg-float v3, p2, v2

    if-gtz v3, :cond_52

    const/4 v1, 0x0

    .line 34
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    sub-float v1, v2, p2

    .line 36
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v0, v0, v1

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 42
    iget v0, p0, Lcom/youth/banner/transformer/DepthPageTransformer;->mMinScale:F

    sub-float v1, v2, v0

    .line 43
    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    sub-float v3, v2, v3

    mul-float v1, v1, v3

    add-float/2addr v0, v1

    .line 44
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 45
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    cmpl-float p2, p2, v2

    if-nez p2, :cond_55

    const/4 p2, 0x4

    .line 48
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_55

    .line 53
    :cond_52
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_55
    :goto_55
    return-void
.end method
