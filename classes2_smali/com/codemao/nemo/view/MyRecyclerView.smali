.class public Lcom/codemao/nemo/view/MyRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "MyRecyclerView.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    return-void
.end method


# virtual methods
.method public fling(II)Z
    .registers 5

    .line 29
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/CarouselLayoutManager;

    .line 30
    div-int/lit8 p1, p1, 0x5

    .line 31
    invoke-virtual {p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getScrollItemSize()I

    move-result v0

    .line 32
    div-int/2addr p1, v0

    const/4 v0, 0x3

    if-le p1, v0, :cond_11

    const/4 p1, 0x3

    :cond_11
    const/4 v0, -0x3

    if-ge p1, v0, :cond_15

    const/4 p1, -0x3

    .line 39
    :cond_15
    invoke-virtual {p2}, Lcom/codemao/nemo/view/CarouselLayoutManager;->getCenterItemPosition()I

    move-result p2

    add-int/2addr p2, p1

    const/4 v0, 0x0

    if-gez p2, :cond_1e

    const/4 p2, 0x0

    .line 44
    :cond_1e
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    const/4 p2, -0x1

    const/4 v1, 0x1

    if-gtz p1, :cond_2c

    .line 46
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 47
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    goto :goto_32

    .line 49
    :cond_2c
    invoke-virtual {p0, p2, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    .line 50
    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollBy(II)V

    :goto_32
    return v1
.end method
