.class Lcom/codemao/creativecenter/customview/DragRecyclerView$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "DragRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/DragRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/DragRecyclerView;)V
    .registers 2

    .line 66
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 151
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onItemDrop(I)Z

    move-result p1

    return p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 4

    .line 138
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 141
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$200(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Z

    move-result p1

    if-eqz p1, :cond_1a

    .line 142
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 143
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iget-object p2, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$600(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V

    goto :goto_1f

    .line 145
    :cond_1a
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$700(Lcom/codemao/creativecenter/customview/DragRecyclerView;)V

    :goto_1f
    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .line 70
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$000(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    .line 73
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_19

    const/16 p1, 0xf

    .line 75
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x2

    const/4 p2, 0x3

    .line 78
    invoke-static {p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeFlag(II)I

    move-result p1

    return p1
.end method

.method public isItemViewSwipeEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLongPressDragEnabled()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V
    .registers 9

    const/4 v0, 0x1

    if-ne p6, v0, :cond_1d

    const/high16 p1, 0x3f800000  # 1.0f

    .line 112
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    sub-float/2addr p1, p2

    .line 113
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 114
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_20

    .line 116
    :cond_1d
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    :goto_20
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 85
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 86
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 87
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {p3}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    if-eqz p1, :cond_21

    if-eqz p2, :cond_21

    .line 124
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$200(Lcom/codemao/creativecenter/customview/DragRecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 125
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$300(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V

    goto :goto_21

    .line 127
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$402(Lcom/codemao/creativecenter/customview/DragRecyclerView;Z)Z

    .line 128
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/DragRecyclerView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/DragRecyclerView;->access$500(Lcom/codemao/creativecenter/customview/DragRecyclerView;Landroid/view/View;)V

    .line 131
    :cond_21
    :goto_21
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
