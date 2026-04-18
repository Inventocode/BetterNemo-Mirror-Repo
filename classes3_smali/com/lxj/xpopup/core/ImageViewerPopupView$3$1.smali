.class Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ImageViewerPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$3;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 254
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    invoke-direct {p0}, Landroidx/transition/TransitionListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onTransitionEnd(Landroidx/transition/Transition;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    .line 262
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleX(F)V

    .line 263
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setScaleY(F)V

    .line 264
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 265
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 266
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->placeholderView:Lcom/lxj/xpopup/widget/BlankView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 267
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 268
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->top:I

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setTranslationY(F)V

    .line 269
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result p1

    iget-object v1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object v1, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v1, v1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->rect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    invoke-static {v0, p1, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->setWidthHeight(Landroid/view/View;II)V

    return-void
.end method

.method public onTransitionStart(Landroidx/transition/Transition;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transition"
        }
    .end annotation

    .line 257
    invoke-super {p0, p1}, Landroidx/transition/TransitionListenerAdapter;->onTransitionStart(Landroidx/transition/Transition;)V

    .line 258
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$3$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$3;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$3;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-virtual {p1}, Lcom/lxj/xpopup/core/BasePopupView;->doAfterDismiss()V

    return-void
.end method
