.class public Lcom/youth/banner/transformer/AlphaPageTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "AlphaPageTransformer.java"


# static fields
.field private static final DEFAULT_MIN_ALPHA:F = 0.5f


# instance fields
.field private mMinAlpha:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x3f000000  # 0.5f

    .line 9
    iput v0, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x3f000000  # 0.5f

    .line 9
    iput v0, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    .line 15
    iput p1, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 6

    const v0, 0x3f7fbe77  # 0.999f

    .line 20
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_12

    .line 23
    iget p2, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3a

    :cond_12
    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_35

    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gez v1, :cond_29

    .line 28
    iget v1, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    sub-float v2, v0, v1

    add-float/2addr p2, v0

    mul-float v2, v2, p2

    add-float/2addr v1, v2

    .line 29
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3a

    .line 32
    :cond_29
    iget v1, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    sub-float v2, v0, v1

    sub-float/2addr v0, p2

    mul-float v2, v2, v0

    add-float/2addr v1, v2

    .line 33
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_3a

    .line 36
    :cond_35
    iget p2, p0, Lcom/youth/banner/transformer/AlphaPageTransformer;->mMinAlpha:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    :goto_3a
    return-void
.end method
