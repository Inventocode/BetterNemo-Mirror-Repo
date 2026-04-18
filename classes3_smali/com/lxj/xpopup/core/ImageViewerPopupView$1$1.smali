.class Lcom/lxj/xpopup/core/ImageViewerPopupView$1$1;
.super Landroidx/transition/TransitionListenerAdapter;
.source "ImageViewerPopupView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$1;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView$1;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 189
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$1$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$1;

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

    .line 192
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$1$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$1;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$1;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->pager:Lcom/lxj/xpopup/widget/HackyViewPager;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 193
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$1$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$1;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$1;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 194
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$1$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$1;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$1;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-static {p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->access$000(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    .line 195
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$1$1;->this$1:Lcom/lxj/xpopup/core/ImageViewerPopupView$1;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView$1;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->photoViewContainer:Lcom/lxj/xpopup/widget/PhotoViewContainer;

    iput-boolean v0, p1, Lcom/lxj/xpopup/widget/PhotoViewContainer;->isReleasing:Z

    return-void
.end method
