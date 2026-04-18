.class public Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserCollectWorkActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity;Landroid/view/View;)V
    .registers 7

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const v1, 0x7f0a075f

    const-string v2, "field \'rvComment\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvComment:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    .line 40
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a05f3

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 41
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoadView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    .line 42
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0a0691

    const-string v2, "field \'rvEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->rvEmpty:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0531

    const-string v2, "field \'midView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->midView:Landroid/widget/TextView;

    const v0, 0x7f0a0620

    const-string v1, "field \'right_view\' and method \'onClick\'"

    .line 44
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 45
    const-class v2, Landroid/widget/ImageView;

    const-string v3, "field \'right_view\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->right_view:Landroid/widget/ImageView;

    .line 47
    new-instance v0, Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding;Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a0673

    const-string v1, "field \'root\'"

    .line 53
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->root:Landroid/view/View;

    .line 54
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a0883

    const-string v2, "field \'tvMayLike\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkActivity;->tvMayLike:Landroid/widget/TextView;

    const v0, 0x7f0a08bd

    const-string v1, "method \'refresh\'"

    .line 55
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 57
    new-instance v1, Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding;Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a048c

    const-string v1, "method \'onClick\'"

    .line 63
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v0, Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/UserCollectWorkActivity_ViewBinding;Lcom/codemao/nemo/activity/UserCollectWorkActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
