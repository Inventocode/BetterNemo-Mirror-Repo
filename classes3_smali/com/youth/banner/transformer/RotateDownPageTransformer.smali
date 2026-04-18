.class public Lcom/youth/banner/transformer/RotateDownPageTransformer;
.super Lcom/youth/banner/transformer/BasePageTransformer;
.source "RotateDownPageTransformer.java"


# static fields
.field private static final DEFAULT_MAX_ROTATE:F = 15.0f


# instance fields
.field private mMaxRotate:F


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x41700000  # 15.0f

    .line 9
    iput v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    return-void
.end method

.method public constructor <init>(F)V
    .registers 3

    .line 14
    invoke-direct {p0}, Lcom/youth/banner/transformer/BasePageTransformer;-><init>()V

    const/high16 v0, 0x41700000  # 15.0f

    .line 9
    iput v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    .line 15
    iput p1, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .registers 6

    const/high16 v0, -0x40800000  # -1.0f

    cmpg-float v1, p2, v0

    if-gez v1, :cond_1e

    .line 23
    iget p2, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    mul-float p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    goto :goto_7d

    :cond_1e
    const/high16 v0, 0x3f800000  # 1.0f

    cmpg-float v1, p2, v0

    if-gtz v1, :cond_66

    const/4 v1, 0x0

    const/high16 v2, 0x3f000000  # 0.5f

    cmpg-float v1, p2, v1

    if-gez v1, :cond_49

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    neg-float v1, p2

    mul-float v1, v1, v2

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 31
    iget v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_7d

    .line 33
    :cond_49
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float v1, v1, v2

    sub-float/2addr v0, p2

    mul-float v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 35
    iget v0, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    mul-float v0, v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    goto :goto_7d

    .line 40
    :cond_66
    iget p2, p0, Lcom/youth/banner/transformer/RotateDownPageTransformer;->mMaxRotate:F

    invoke-virtual {p1, p2}, Landroid/view/View;->setRotation(F)V

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result p2

    mul-int/lit8 p2, p2, 0x0

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotX(F)V

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setPivotY(F)V

    :goto_7d
    return-void
.end method
