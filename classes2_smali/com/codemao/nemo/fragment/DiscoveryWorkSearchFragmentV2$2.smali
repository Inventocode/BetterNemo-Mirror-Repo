.class Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "DiscoveryWorkSearchFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)V
    .registers 2

    .line 106
    iput-object p1, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    .line 109
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 110
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 114
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_63

    .line 115
    iget-object p3, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-le p2, p3, :cond_1b

    goto :goto_63

    .line 118
    :cond_1b
    iget-object p3, p0, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;->access$100(Lcom/codemao/nemo/fragment/DiscoveryWorkSearchFragmentV2;)I

    move-result p3

    const/4 p4, 0x1

    const/4 v0, 0x0

    const/high16 v1, 0x41a00000  # 20.0f

    if-ne p3, p4, :cond_33

    .line 119
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-virtual {p1, p2, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_63

    .line 121
    :cond_33
    rem-int/lit8 p3, p2, 0x2

    const/high16 v2, 0x41200000  # 10.0f

    const/high16 v3, 0x40a00000  # 5.0f

    if-nez p3, :cond_4f

    .line 122
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    if-gt p2, p4, :cond_43

    const/high16 v1, 0x41200000  # 10.0f

    :cond_43
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_63

    .line 124
    :cond_4f
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    if-gt p2, p4, :cond_56

    goto :goto_58

    :cond_56
    const/high16 v2, 0x41a00000  # 20.0f

    :goto_58
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    invoke-virtual {p1, p3, p2, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_63
    :goto_63
    return-void
.end method
