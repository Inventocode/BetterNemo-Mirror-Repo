.class Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "CommentInputPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/CommentInputPop;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)V
    .registers 2

    .line 416
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 3

    const/16 p1, 0xf

    const/4 p2, 0x0

    .line 421
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 426
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 427
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ge p1, p2, :cond_1a

    move p3, p1

    :goto_b
    if-ge p3, p2, :cond_2b

    .line 432
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move p3, v1

    goto :goto_b

    :cond_1a
    move p3, p1

    :goto_1b
    if-le p3, p2, :cond_2b

    .line 436
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    add-int/lit8 v1, p3, -0x1

    invoke-static {v0, p3, v1}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 p3, p3, -0x1

    goto :goto_1b

    .line 439
    :cond_2b
    iget-object p3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p3}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$200(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 440
    iget-object p3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p3}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$200(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p3

    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p3, v2, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 442
    iget-object p3, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p3}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$300(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p3

    invoke-virtual {p3, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 443
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$300(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/dialog/pop/CommentInputPop$5;->this$0:Lcom/codemao/nemo/dialog/pop/CommentInputPop;

    invoke-static {p2}, Lcom/codemao/nemo/dialog/pop/CommentInputPop;->access$100(Lcom/codemao/nemo/dialog/pop/CommentInputPop;)Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p2, v1

    invoke-virtual {p1, v2, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return v1
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
