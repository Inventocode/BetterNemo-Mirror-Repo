.class public Lcom/codemao/nemo/view/ItemTransformation;
.super Ljava/lang/Object;
.source "ItemTransformation.java"


# instance fields
.field final mScaleX:F

.field final mScaleY:F

.field final mTranslationX:F

.field final mTranslationY:F


# direct methods
.method public constructor <init>(FFFF)V
    .registers 5

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/codemao/nemo/view/ItemTransformation;->mScaleX:F

    .line 12
    iput p2, p0, Lcom/codemao/nemo/view/ItemTransformation;->mScaleY:F

    .line 13
    iput p3, p0, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationX:F

    .line 14
    iput p4, p0, Lcom/codemao/nemo/view/ItemTransformation;->mTranslationY:F

    return-void
.end method
