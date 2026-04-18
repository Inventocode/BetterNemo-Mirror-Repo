.class Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "LoadMoreRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DataObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;


# direct methods
.method private constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)V
    .registers 2

    .line 508
    iput-object p1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$1;)V
    .registers 3

    .line 508
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;-><init>(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .registers 5

    .line 511
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 512
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 514
    :cond_11
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$1000(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_63

    .line 515
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getHeadersCount()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 516
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$300(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_37

    add-int/lit8 v0, v0, 0x1

    .line 519
    :cond_37
    iget-object v1, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;->getItemCount()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v0, :cond_55

    .line 520
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$1000(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 521
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_63

    .line 524
    :cond_55
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$1000(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 525
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_63
    :goto_63
    return-void
.end method

.method public onItemRangeChanged(II)V
    .registers 4

    .line 537
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method

.method public onItemRangeChanged(IILjava/lang/Object;)V
    .registers 5

    .line 542
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(IILjava/lang/Object;)V

    return-void
.end method

.method public onItemRangeInserted(II)V
    .registers 4

    .line 532
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeInserted(II)V

    return-void
.end method

.method public onItemRangeMoved(III)V
    .registers 4

    .line 552
    iget-object p3, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {p3}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    return-void
.end method

.method public onItemRangeRemoved(II)V
    .registers 4

    .line 547
    iget-object v0, p0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$DataObserver;->this$0:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-static {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->access$900(Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;)Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$MRecyclerAdapter;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeRemoved(II)V

    return-void
.end method
