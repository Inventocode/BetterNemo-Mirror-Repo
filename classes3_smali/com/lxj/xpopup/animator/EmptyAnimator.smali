.class public Lcom/lxj/xpopup/animator/EmptyAnimator;
.super Lcom/lxj/xpopup/animator/PopupAnimator;
.source "EmptyAnimator.java"


# direct methods
.method public constructor <init>(Landroid/view/View;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "target",
            "animationDuration"
        }
    .end annotation

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/lxj/xpopup/animator/PopupAnimator;-><init>(Landroid/view/View;I)V

    return-void
.end method


# virtual methods
.method public animateDismiss()V
    .registers 4

    .line 26
    iget-boolean v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animating:Z

    if-eqz v0, :cond_5

    return-void

    .line 27
    :cond_5
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/lxj/xpopup/animator/PopupAnimator;->observerAnimator(Landroid/view/ViewPropertyAnimator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public animateShow()V
    .registers 4

    .line 20
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->animationDuration:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method

.method public initAnimator()V
    .registers 3

    .line 15
    iget-object v0, p0, Lcom/lxj/xpopup/animator/PopupAnimator;->targetView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
