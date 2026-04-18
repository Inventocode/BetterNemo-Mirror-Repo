.class Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;
.super Landroidx/recyclerview/widget/ItemTouchHelper$Callback;
.source "StyleDragRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)V
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public canDropOver(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 134
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p1

    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    invoke-interface {p1, p2}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onItemDrop(I)Z

    move-result p1

    return p1
.end method

.method public clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 3

    .line 126
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->clearView(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 128
    iget-object p1, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$400(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)V

    return-void
.end method

.method public getMovementFlags(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)I
    .registers 4

    .line 61
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p2}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$000(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Z

    move-result p2

    const/4 v0, 0x0

    if-nez p2, :cond_a

    return v0

    .line 64
    :cond_a
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    move-result-object p1

    instance-of p1, p1, Landroidx/recyclerview/widget/GridLayoutManager;

    if-eqz p1, :cond_19

    const/16 p1, 0xf

    .line 66
    invoke-static {p1, v0}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->makeMovementFlags(II)I

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x2

    const/4 p2, 0x3

    .line 69
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

    .line 103
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    move-result p2

    iget-object p5, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p5}, Landroid/view/View;->getWidth()I

    move-result p5

    int-to-float p5, p5

    div-float/2addr p2, p5

    sub-float/2addr p1, p2

    .line 105
    iget-object p2, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, p1}, Landroid/view/View;->setAlpha(F)V

    .line 106
    iget-object p1, p3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p1, p4}, Landroid/view/View;->setTranslationX(F)V

    goto :goto_20

    .line 108
    :cond_1d
    invoke-super/range {p0 .. p7}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onChildDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;FFIZ)V

    :goto_20
    return-void
.end method

.method public onMove(Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 76
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p1

    .line 77
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 78
    iget-object p3, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    invoke-static {p3}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$100(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;)Lcom/codemao/creativecenter/callback/OnItemChangeListener;

    move-result-object p3

    invoke-interface {p3, p1, p2}, Lcom/codemao/creativecenter/callback/OnItemChangeListener;->onItemMoved(II)V

    const/4 p1, 0x1

    return p1
.end method

.method public onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 5

    if-eqz p1, :cond_11

    if-eqz p2, :cond_11

    .line 117
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$202(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Z)Z

    .line 118
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView$1;->this$0:Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;

    iget-object v1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;->access$300(Lcom/codemao/creativecenter/customview/StyleDragRecyclerView;Landroid/view/View;)V

    .line 121
    :cond_11
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/ItemTouchHelper$Callback;->onSelectedChanged(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V

    return-void
.end method

.method public onSwiped(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    return-void
.end method
