.class Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;
.super Ljava/lang/Object;
.source "ViewSkeletonScreen.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ethanhua/skeleton/ViewSkeletonScreen;->generateShimmerContainerLayout(Landroid/view/ViewGroup;)Lio/supercharge/shimmerlayout/ShimmerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$shimmerLayout:Lio/supercharge/shimmerlayout/ShimmerLayout;


# direct methods
.method constructor <init>(Lcom/ethanhua/skeleton/ViewSkeletonScreen;Lio/supercharge/shimmerlayout/ShimmerLayout;)V
    .registers 3

    .line 50
    iput-object p2, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;->val$shimmerLayout:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .registers 2

    .line 53
    iget-object p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;->val$shimmerLayout:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->startShimmerAnimation()V

    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .registers 2

    .line 58
    iget-object p1, p0, Lcom/ethanhua/skeleton/ViewSkeletonScreen$1;->val$shimmerLayout:Lio/supercharge/shimmerlayout/ShimmerLayout;

    invoke-virtual {p1}, Lio/supercharge/shimmerlayout/ShimmerLayout;->stopShimmerAnimation()V

    return-void
.end method
