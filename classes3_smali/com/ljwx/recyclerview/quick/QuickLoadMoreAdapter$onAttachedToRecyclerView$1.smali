.class public final Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;
.super Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;
.source "QuickLoadMoreAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;->onAttachedToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

.field final synthetic this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "TItem;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "TItem;>;",
            "Landroidx/recyclerview/widget/RecyclerView$LayoutManager;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    iput-object p2, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 151
    invoke-direct {p0}, Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public getSpanSize(I)I
    .registers 3

    .line 153
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, p1, :cond_15

    iget-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    return p1

    .line 154
    :cond_15
    iget-object v0, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;->this$0:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {v0, p1}, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;->getItemViewType(I)I

    move-result p1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_27

    .line 155
    iget-object p1, p0, Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter$onAttachedToRecyclerView$1;->$manager:Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    check-cast p1, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/GridLayoutManager;->getSpanCount()I

    move-result p1

    goto :goto_28

    :cond_27
    const/4 p1, 0x1

    :goto_28
    return p1
.end method
