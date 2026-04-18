.class public Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ImageViewerPopupView.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lxj/xpopup/core/ImageViewerPopupView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PhotoViewAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;


# direct methods
.method public constructor <init>(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 472
    iput-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    return-void
.end method

.method private buildContainer(Landroid/content/Context;)Landroid/widget/FrameLayout;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 506
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 507
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private buildProgressBar(Landroid/content/Context;)Landroid/widget/ProgressBar;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 512
    new-instance v0, Landroid/widget/ProgressBar;

    invoke-direct {v0, p1}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 513
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 514
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object p1, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->container:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v1, 0x42200000  # 40.0f

    invoke-static {p1, v1}, Lcom/lxj/xpopup/util/XPopupUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 515
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, p1, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 p1, 0x11

    .line 516
    iput p1, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 517
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const/16 p1, 0x8

    .line 518
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-object v0
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "container",
            "position",
            "object"
        }
    .end annotation

    .line 524
    check-cast p3, Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .registers 3

    .line 475
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isInfinite:Z

    if-eqz v1, :cond_a

    const v0, 0x186a0

    goto :goto_10

    :cond_a
    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_10
    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .registers 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "container",
            "position"
        }
    .end annotation

    .line 486
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-boolean v1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->isInfinite:Z

    if-eqz v1, :cond_d

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    rem-int/2addr p2, v0

    :cond_d
    move v1, p2

    .line 488
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->buildContainer(Landroid/content/Context;)Landroid/widget/FrameLayout;

    move-result-object p2

    .line 489
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->buildProgressBar(Landroid/content/Context;)Landroid/widget/ProgressBar;

    move-result-object v6

    .line 492
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v2, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->imageLoader:Lcom/lxj/xpopup/interfaces/XPopupImageLoader;

    iget-object v0, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->urls:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v5, v4, Lcom/lxj/xpopup/core/ImageViewerPopupView;->snapshotView:Lcom/lxj/xpopup/photoview/PhotoView;

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    invoke-interface/range {v0 .. v5}, Lcom/lxj/xpopup/interfaces/XPopupImageLoader;->loadImage(ILjava/lang/Object;Lcom/lxj/xpopup/core/ImageViewerPopupView;Lcom/lxj/xpopup/photoview/PhotoView;Landroid/widget/ProgressBar;)Landroid/view/View;

    move-result-object v0

    .line 496
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p2, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 499
    invoke-virtual {p2, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 501
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object p2
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "o"
        }
    .end annotation

    if-ne p2, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public onPageScrollStateChanged(I)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 531
    iget-object v0, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iput p1, v0, Lcom/lxj/xpopup/core/ImageViewerPopupView;->position:I

    .line 532
    invoke-static {v0}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->access$000(Lcom/lxj/xpopup/core/ImageViewerPopupView;)V

    .line 534
    iget-object p1, p0, Lcom/lxj/xpopup/core/ImageViewerPopupView$PhotoViewAdapter;->this$0:Lcom/lxj/xpopup/core/ImageViewerPopupView;

    iget-object v0, p1, Lcom/lxj/xpopup/core/ImageViewerPopupView;->srcViewUpdateListener:Lcom/lxj/xpopup/interfaces/OnSrcViewUpdateListener;

    if-eqz v0, :cond_14

    .line 535
    invoke-virtual {p1}, Lcom/lxj/xpopup/core/ImageViewerPopupView;->getRealPosition()I

    move-result v1

    invoke-interface {v0, p1, v1}, Lcom/lxj/xpopup/interfaces/OnSrcViewUpdateListener;->onSrcViewUpdate(Lcom/lxj/xpopup/core/ImageViewerPopupView;I)V

    :cond_14
    return-void
.end method
