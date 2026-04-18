.class Lcom/codemao/nemo/view/CarouselLayoutManager$1;
.super Landroidx/recyclerview/widget/LinearSmoothScroller;
.source "CarouselLayoutManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/CarouselLayoutManager;->smoothScrollToPosition(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/CarouselLayoutManager;Landroid/content/Context;)V
    .registers 3

    .line 297
    iput-object p1, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$1;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/LinearSmoothScroller;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public calculateDxToMakeVisible(Landroid/view/View;I)I
    .registers 3

    .line 309
    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$1;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->canScrollHorizontally()Z

    move-result p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return p1

    .line 312
    :cond_a
    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$1;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method public calculateDyToMakeVisible(Landroid/view/View;I)I
    .registers 3

    .line 300
    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$1;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->canScrollVertically()Z

    move-result p2

    if-nez p2, :cond_a

    const/4 p1, 0x0

    return p1

    .line 304
    :cond_a
    iget-object p2, p0, Lcom/codemao/nemo/view/CarouselLayoutManager$1;->this$0:Lcom/codemao/nemo/view/CarouselLayoutManager;

    invoke-virtual {p2, p1}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getOffsetForCurrentView(Landroid/view/View;)I

    move-result p1

    return p1
.end method

.method protected calculateSpeedPerPixel(Landroid/util/DisplayMetrics;)F
    .registers 2

    const p1, 0x3e4ccccd  # 0.2f

    return p1
.end method
