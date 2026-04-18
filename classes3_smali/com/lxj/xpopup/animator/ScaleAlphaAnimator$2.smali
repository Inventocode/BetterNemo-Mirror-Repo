.class Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$2;
.super Ljava/lang/Object;
.source "ScaleAlphaAnimator.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;->animateShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 64
    iput-object p1, p0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 67
    iget-object v0, p0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    iget-object v0, v0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v2, p0, Lcom/lxj/xpopup/animator/ScaleAlphaAnimator$2;->this$0:Lcom/lxj/xpopup/animator/ScaleAlphaAnimator;

    iget v2, v2, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v2, v2

    .line 68
    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v2, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v2, v1}, Landroid/view/animation/OvershootInterpolator;-><init>(F)V

    .line 69
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
