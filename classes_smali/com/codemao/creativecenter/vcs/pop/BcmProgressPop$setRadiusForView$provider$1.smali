.class public final Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setRadiusForView$provider$1;
.super Landroid/view/ViewOutlineProvider;
.source "BcmProgressPop.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->setRadiusForView(Landroid/view/View;F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $radius:F


# direct methods
.method constructor <init>(F)V
    .registers 2

    .line 94
    iput p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setRadiusForView$provider$1;->$radius:F

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 7

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 97
    invoke-virtual {p1, v0}, Landroid/view/View;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    .line 100
    new-instance p1, Landroid/graphics/Rect;

    .line 103
    iget v1, v0, Landroid/graphics/Rect;->right:I

    iget v2, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    sub-int/2addr v1, v2

    .line 104
    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v0, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v0

    sub-int/2addr v3, v2

    .line 100
    invoke-direct {p1, v2, v2, v1, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 106
    iget v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$setRadiusForView$provider$1;->$radius:F

    invoke-virtual {p2, p1, v0}, Landroid/graphics/Outline;->setRoundRect(Landroid/graphics/Rect;F)V

    return-void
.end method
