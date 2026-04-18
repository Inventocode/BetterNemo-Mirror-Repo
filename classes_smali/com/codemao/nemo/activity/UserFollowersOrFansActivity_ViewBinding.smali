.class public Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding;
.super Ljava/lang/Object;
.source "UserFollowersOrFansActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Landroid/view/View;)V
    .registers 7

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a05f3

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 39
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const v1, 0x7f0a075f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    .line 40
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0a08fa

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvTitle:Landroid/widget/TextView;

    .line 41
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/LoadView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    const v0, 0x7f0a02a0

    const-string v1, "field \'tvFollow\' and method \'follow\'"

    .line 42
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 43
    const-class v2, Landroid/widget/TextView;

    const-string v3, "field \'tvFollow\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->tvFollow:Landroid/widget/TextView;

    .line 45
    new-instance v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$1;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding;Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {v1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a08bd

    const-string v1, "method \'refresh\'"

    .line 51
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    .line 53
    new-instance v1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$2;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$2;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding;Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a037b

    const-string v1, "method \'onClick\'"

    .line 59
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object p2

    .line 61
    new-instance v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding$3;-><init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity_ViewBinding;Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
