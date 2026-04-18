.class Lcom/codemao/nemo/fragment/NewWorkDetailFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "NewWorkDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)V
    .registers 2

    .line 103
    iput-object p1, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    .line 106
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 107
    iget-object p4, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->access$100(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;)Z

    move-result p4

    const/4 v0, 0x0

    const/high16 v1, 0x41a00000  # 20.0f

    if-eqz p4, :cond_4e

    .line 108
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_15

    return-void

    .line 112
    :cond_15
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_4d

    .line 113
    iget-object p3, p0, Lcom/codemao/nemo/fragment/NewWorkDetailFragment$2;->this$0:Lcom/codemao/nemo/fragment/NewWorkDetailFragment;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_26

    goto :goto_4d

    .line 116
    :cond_26
    rem-int/lit8 p3, p2, 0x2

    const/high16 p4, 0x40a00000  # 5.0f

    if-nez p3, :cond_2f

    const/high16 v2, 0x41a00000  # 20.0f

    goto :goto_31

    :cond_2f
    const/high16 v2, 0x40a00000  # 5.0f

    :goto_31
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    const/4 v3, 0x1

    if-gt p2, v3, :cond_3b

    const/high16 p2, 0x41a00000  # 20.0f

    goto :goto_3d

    :cond_3b
    const/high16 p2, 0x41200000  # 10.0f

    :goto_3d
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    if-nez p3, :cond_45

    const/high16 v1, 0x40a00000  # 5.0f

    .line 117
    :cond_45
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    .line 116
    invoke-virtual {p1, v2, p2, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_59

    :cond_4d
    :goto_4d
    return-void

    .line 119
    :cond_4e
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    :goto_59
    return-void
.end method
