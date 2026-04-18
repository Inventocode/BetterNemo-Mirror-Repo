.class public Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity_ViewBinding;
.super Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;
.source "UserCollectWorkSearchActivity_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Landroid/view/View;)V
    .registers 6

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;Landroid/view/View;)V

    .line 29
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a072e

    const-string v2, "field \'refreshLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 30
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const v1, 0x7f0a072f

    const-string v2, "field \'recyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    .line 31
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/LoadView;

    iput-object p2, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    return-void
.end method
