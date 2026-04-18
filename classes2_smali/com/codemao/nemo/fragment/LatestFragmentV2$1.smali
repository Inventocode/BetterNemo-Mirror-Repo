.class Lcom/codemao/nemo/fragment/LatestFragmentV2$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LatestFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/LatestFragmentV2;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/LatestFragmentV2;)V
    .registers 2

    .line 90
    iput-object p1, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    .line 93
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 94
    iget-object p4, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    invoke-static {p4}, Lcom/codemao/nemo/fragment/LatestFragmentV2;->access$000(Lcom/codemao/nemo/fragment/LatestFragmentV2;)Z

    move-result p4

    const/high16 v0, 0x41700000  # 15.0f

    if-nez p4, :cond_1a

    .line 95
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 96
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    return-void

    .line 100
    :cond_1a
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_21

    return-void

    .line 104
    :cond_21
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_59

    .line 105
    iget-object p3, p0, Lcom/codemao/nemo/fragment/LatestFragmentV2$1;->this$0:Lcom/codemao/nemo/fragment/LatestFragmentV2;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_32

    goto :goto_59

    :cond_32
    const/high16 p3, 0x41200000  # 10.0f

    .line 108
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 109
    rem-int/lit8 p2, p2, 0x2

    const/high16 p3, 0x40a00000  # 5.0f

    if-nez p2, :cond_4d

    .line 110
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 111
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_59

    .line 113
    :cond_4d
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 114
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_59
    :goto_59
    return-void
.end method
