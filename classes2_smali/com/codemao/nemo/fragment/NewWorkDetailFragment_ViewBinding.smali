.class public Lcom/codemao/nemo/fragment/NewWorkDetailFragment_ViewBinding;
.super Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;
.source "NewWorkDetailFragment_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/NewWorkDetailFragment;Landroid/view/View;)V
    .registers 6

    .line 18
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment_ViewBinding;-><init>(Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;Landroid/view/View;)V

    .line 22
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0a04cd

    const-string v2, "field \'llNonet\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->llNonet:Landroid/widget/LinearLayout;

    .line 23
    const-class v0, Landroid/widget/ImageView;

    const v1, 0x7f0a0101

    const-string v2, "field \'card_contribute\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/NewWorkDetailFragment;->card_contribute:Landroid/widget/ImageView;

    return-void
.end method
