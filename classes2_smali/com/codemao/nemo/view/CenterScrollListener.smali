.class public Lcom/codemao/nemo/view/CenterScrollListener;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "CenterScrollListener.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;
    }
.end annotation


# instance fields
.field private mAutoSet:Z

.field private onScrollListener:Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;)V
    .registers 3

    .line 15
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/codemao/nemo/view/CenterScrollListener;->mAutoSet:Z

    .line 16
    iput-object p1, p0, Lcom/codemao/nemo/view/CenterScrollListener;->onScrollListener:Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .registers 7

    .line 57
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 59
    instance-of v1, v0, Lcom/codemao/nemo/view/CarouselLayoutManager;

    const/4 v2, 0x1

    if-nez v1, :cond_f

    .line 60
    iput-boolean v2, p0, Lcom/codemao/nemo/view/CenterScrollListener;->mAutoSet:Z

    return-void

    .line 63
    :cond_f
    check-cast v0, Lcom/codemao/nemo/view/CarouselLayoutManager;

    .line 64
    iget-boolean v1, p0, Lcom/codemao/nemo/view/CenterScrollListener;->mAutoSet:Z

    const/4 v3, 0x0

    if-nez v1, :cond_2b

    if-nez p2, :cond_2b

    .line 66
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getOffsetCenterView()I

    move-result v1

    .line 67
    invoke-virtual {v0}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getOrientation()I

    move-result v0

    if-nez v0, :cond_26

    .line 68
    invoke-virtual {p1, v1, v3}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_29

    .line 70
    :cond_26
    invoke-virtual {p1, v3, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 72
    :goto_29
    iput-boolean v2, p0, Lcom/codemao/nemo/view/CenterScrollListener;->mAutoSet:Z

    :cond_2b
    if-eq v2, p2, :cond_30

    const/4 p1, 0x2

    if-ne p1, p2, :cond_32

    .line 77
    :cond_30
    iput-boolean v3, p0, Lcom/codemao/nemo/view/CenterScrollListener;->mAutoSet:Z

    :cond_32
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    .line 21
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 22
    iget-object v0, p0, Lcom/codemao/nemo/view/CenterScrollListener;->onScrollListener:Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;

    if-eqz v0, :cond_a

    .line 23
    invoke-interface {v0, p2, p3}, Lcom/codemao/nemo/view/CenterScrollListener$OnScrollListener;->onScroll(II)V

    .line 25
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 26
    instance-of p2, p1, Lcom/codemao/nemo/view/CarouselLayoutManager;

    if-nez p2, :cond_16

    const/4 p1, 0x1

    .line 27
    iput-boolean p1, p0, Lcom/codemao/nemo/view/CenterScrollListener;->mAutoSet:Z

    return-void

    .line 30
    :cond_16
    check-cast p1, Lcom/codemao/nemo/view/CarouselLayoutManager;

    return-void
.end method
