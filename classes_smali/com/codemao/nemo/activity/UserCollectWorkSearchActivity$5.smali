.class Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserCollectWorkSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->searchWorks(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/UserCollectWorks;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

.field final synthetic val$isNewSearch:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)V
    .registers 3

    .line 192
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->val$isNewSearch:Z

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 210
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$802(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    .line 211
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 212
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$302(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    .line 213
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 214
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$000(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2c

    .line 215
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$900(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    goto :goto_33

    .line 217
    :cond_2c
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 219
    :goto_33
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/util/ToastUtil;->showServerErrorToast(Landroid/content/Context;)V

    .line 220
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$1000(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    return-void
.end method

.method public onNetError()V
    .registers 4

    .line 225
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$802(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    .line 226
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$302(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    .line 228
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$1000(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)V

    .line 229
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/UserCollectWorks;)V
    .registers 13

    const/4 v0, 0x0

    if-eqz p1, :cond_99

    .line 195
    iget-boolean v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->val$isNewSearch:Z

    if-eqz v1, :cond_99

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    .line 196
    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v2, v2, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    aput-object v2, v1, v0

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 198
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getTotal()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    .line 199
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v3

    const-string v5, "主态"

    const-string/jumbo v6, "客态"

    if-eqz v3, :cond_48

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$600(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)J

    move-result-wide v7

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v9

    cmp-long v3, v7, v9

    if-nez v3, :cond_48

    move-object v3, v5

    goto :goto_49

    :cond_48
    move-object v3, v6

    :goto_49
    aput-object v3, v1, v2

    const-string/jumbo v2, "搜索页-我的收藏-发起搜索"

    .line 196
    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 200
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iget-object v3, v3, Lcom/codemao/nemo/activity/BaseSearchActivity;->keyword:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/UserCollectWorks;->getTotal()I

    move-result v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkCount(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v3

    if-eqz v3, :cond_8d

    iget-object v3, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v3}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$600(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;)J

    move-result-wide v3

    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v7

    invoke-virtual {v7}, Lcom/codemao/nemo/bean/LocalUserInfo;->getId()J

    move-result-wide v7

    cmp-long v9, v3, v7

    if-nez v9, :cond_8d

    goto :goto_8e

    :cond_8d
    move-object v5, v6

    :goto_8e
    invoke-virtual {v1, v5}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setUserState(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 203
    :cond_99
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v1, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$700(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Lcom/codemao/nemo/bean/UserCollectWorks;)V

    .line 204
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$802(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    .line 205
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->access$302(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 192
    check-cast p1, Lcom/codemao/nemo/bean/UserCollectWorks;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$5;->onSuc(Lcom/codemao/nemo/bean/UserCollectWorks;)V

    return-void
.end method
