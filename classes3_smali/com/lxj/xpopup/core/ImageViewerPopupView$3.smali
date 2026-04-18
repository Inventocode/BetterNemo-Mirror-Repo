.class Lcom/lxj/xpopup/core/ImageViewerPopupView$3;
.super Ljava/lang/Object;
.source "ImageViewerPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView;->doDismissAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 245
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 248
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    new-instance v1, Landroidx/transition/TransitionSet;

    invoke-direct {v1}, Landroidx/transition/TransitionSet;-><init>()V

    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    .line 249
    invoke-virtual {v2}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Landroidx/transition/TransitionSet;->setDuration(J)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroidx/transition/ChangeBounds;

    invoke-direct {v2}, Landroidx/transition/ChangeBounds;-><init>()V

    .line 250
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroidx/transition/ChangeTransform;

    invoke-direct {v2}, Landroidx/transition/ChangeTransform;-><init>()V

    .line 251
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroidx/transition/ChangeImageTransform;

    invoke-direct {v2}, Landroidx/transition/ChangeImageTransform;-><init>()V

    .line 252
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addTransition(Landroidx/transition/Transition;)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;

    invoke-direct {v2}, Landroidx/interpolator/view/animation/FastOutSlowInInterpolator;-><init>()V

    .line 253
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroidx/transition/TransitionSet;

    move-result-object v1

    new-instance v2, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;

    invoke-direct {v2, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$3;)V

    .line 254
    invoke-virtual {v1, v2}, Landroidx/transition/TransitionSet;->addListener(Landroidx/transition/Transition$TransitionListener;)Landroidx/transition/TransitionSet;

    move-result-object v1

    .line 248
    invoke-static {v0, v1}, Landroidx/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroidx/transition/Transition;)V

    .line 273
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 274
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 275
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 276
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget v0, v0, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 277
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getScaleType()Landroid/widget/ImageView$ScaleType;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/lxj/xpopup/photoview/PhotoView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 278
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iget-object v2, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v2, v2, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/lxj/xpopup/util/XPopupUtils;->setWidthHeight(Landroid/view/View;II)V

    .line 281
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->access$100(Lcom/lxj/xpopup/core/ImageViewerPopupView;I)V

    .line 282
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->customView:Landroid/view/View;

    if-eqz v0, :cond_c0

    .line 283
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {v1}, Lcom/lxj/xpopup/core/BasePopupView;->getAnimationDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$2;

    invoke-direct {v1, p0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$2;-><init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$3;)V

    .line 284
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 291
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    :cond_c0
    return-void
.end method
