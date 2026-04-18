.class Lcom/codemao/nemo/fragment/CreateFragment$4;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$mainTabHeight:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;I)V
    .registers 3

    .line 768
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$4;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$4;->val$mainTabHeight:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 771
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 772
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 776
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 777
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$4;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1700(Lcom/codemao/nemo/fragment/CreateFragment;)I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    if-ne p3, p4, :cond_26

    const/high16 p3, 0x41a00000  # 20.0f

    .line 778
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-virtual {p1, v1, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_45

    .line 780
    :cond_26
    rem-int/lit8 p3, p2, 0x2

    const/high16 v1, 0x41700000  # 15.0f

    const/high16 v2, 0x40a00000  # 5.0f

    if-nez p3, :cond_3a

    .line 781
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, p3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_45

    .line 783
    :cond_3a
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    invoke-virtual {p1, p3, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 786
    :goto_45
    iget-object p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$4;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    sub-int/2addr p3, p4

    if-ne p2, p3, :cond_60

    .line 787
    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$4;->val$mainTabHeight:I

    add-int/2addr v0, v1

    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_60
    return-void
.end method
