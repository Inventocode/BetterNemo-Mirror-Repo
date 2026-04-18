.class public Lcom/codemao/nemo/activity/CloudSearchActivity_ViewBinding;
.super Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;
.source "CloudSearchActivity_ViewBinding.java"


# direct methods
.method public constructor <init>(Lcom/codemao/nemo/activity/CloudSearchActivity;Landroid/view/View;)V
    .registers 6

    .line 24
    invoke-direct {p0, p1, p2}, Lcom/codemao/nemo/activity/BaseSearchActivity_ViewBinding;-><init>(Lcom/codemao/nemo/activity/BaseSearchActivity;Landroid/view/View;)V

    .line 28
    const-class v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    const v1, 0x7f0a072e

    const-string v2, "field \'smartLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 29
    const-class v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const v1, 0x7f0a072f

    const-string v2, "field \'smartRecyclerView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    iput-object v0, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->smartRecyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    .line 30
    const-class v0, Lcom/codemao/nemo/view/LoadView;

    const v1, 0x7f0a050b

    const-string v2, "field \'mLoadView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/LoadView;

    iput-object p2, p1, Lcom/codemao/nemo/activity/CloudSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    return-void
.end method
