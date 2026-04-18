.class Lcom/lxj/xpopup/core/ImageViewerPopupView$2;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView;->animateShadowBg(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

.field final synthetic val$endColor:I

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;II)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$endColor",
            "val$start"
        }
    .end annotation

    .line 215
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iput p2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;->val$start:I

    iput p3, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;->val$endColor:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .registers 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "animation"
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    iget v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;->val$start:I

    .line 219
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    iget v3, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$2;->val$endColor:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 218
    invoke-virtual {v0, p1, v2, v3}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method
