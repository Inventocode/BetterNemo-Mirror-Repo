.class Lcom/codemao/nemo/fragment/BaseDiscoverFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "BaseDiscoverFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/BaseDiscoverFragment;)V
    .registers 2

    .line 102
    iput-object p1, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$1;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .registers 5

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 106
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    .line 107
    instance-of p2, p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    if-eqz p2, :cond_2c

    .line 108
    check-cast p1, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result p2

    .line 109
    invoke-virtual {p1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastVisibleItemPosition()I

    move-result p1

    .line 110
    iget-object p3, p0, Lcom/codemao/nemo/fragment/BaseDiscoverFragment$1;->this$0:Lcom/codemao/nemo/fragment/BaseDiscoverFragment;

    iget v0, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    if-ltz v0, :cond_1d

    if-le v0, p2, :cond_1f

    .line 111
    :cond_1d
    iput p2, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    .line 113
    :cond_1f
    iget p2, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    if-ge p2, p1, :cond_25

    .line 114
    iput p1, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    .line 116
    :cond_25
    iget p1, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollStart:I

    iget p2, p3, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scrollEnd:I

    invoke-virtual {p3, p1, p2}, Lcom/codemao/nemo/fragment/BaseDiscoverFragment;->scroll(II)V

    :cond_2c
    return-void
.end method
