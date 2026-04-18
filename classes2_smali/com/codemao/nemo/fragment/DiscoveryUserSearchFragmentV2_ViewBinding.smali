.class public Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;
.source "DiscoveryUserSearchFragmentV2_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;Landroid/view/View;)V
    .registers 6

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;Landroid/view/View;)V

    .line 27
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0691

    const-string v2, "field \'rvEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0883

    const-string v2, "field \'tvMayLike\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;->tvMayLike:Landroid/widget/TextView;

    const v0, 0x7f0a04b6

    const-string v1, "method \'hideInput\'"

    .line 29
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 31
    new-instance v0, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding$1;-><init>(Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2_ViewBinding;Lcom/codemao/nemo/fragment/DiscoveryUserSearchFragmentV2;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
