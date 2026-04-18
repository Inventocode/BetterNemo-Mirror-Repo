.class public Lcom/codemao/nemo/fragment/CreateFragment_ViewBinding;
.super Ljava/lang/Object;
.source "CreateFragment_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Landroid/view/View;)V
    .registers 6

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0682

    const-string v2, "field \'rvContainer\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rvContainer:Landroidx/recyclerview/widget/RecyclerView;

    .line 26
    const-class v0, Landroid/widget/ProgressBar;

    const v1, 0x7f0a05c8

    const-string v2, "field \'mProgress\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/CreateFragment;->mProgress:Landroid/widget/ProgressBar;

    .line 27
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoadView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/CreateFragment;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    .line 28
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a085b

    const-string v2, "field \'tvGoBind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/fragment/CreateFragment;->tvGoBind:Landroid/widget/TextView;

    .line 29
    const-class v0, Landroidx/cardview/widget/CardView;

    const v1, 0x7f0a063f

    const-string v2, "field \'rlGoBind\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/cardview/widget/CardView;

    iput-object p2, p1, Lcom/codemao/nemo/fragment/CreateFragment;->rlGoBind:Landroidx/cardview/widget/CardView;

    return-void
.end method
