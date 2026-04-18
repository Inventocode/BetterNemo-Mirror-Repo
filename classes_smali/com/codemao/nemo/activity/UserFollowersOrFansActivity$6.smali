.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserFollowersOrFansActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->getDatas()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/UserFansOrFollowers;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V
    .registers 2

    .line 298
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 307
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 308
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {p1}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 309
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_22

    .line 310
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_29

    .line 312
    :cond_22
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 314
    :goto_29
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$302(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Z)Z

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 320
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 321
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->refreshLayout:Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    invoke-virtual {v0}, Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;->finishRefresh()Lcom/scwang/smartrefresh/layout/SmartRefreshLayout;

    .line 322
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$100(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_22

    .line 323
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    goto :goto_29

    .line 325
    :cond_22
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->hide()V

    .line 327
    :goto_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$302(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Z)Z

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/UserFansOrFollowers;)V
    .registers 3

    .line 301
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$600(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Lcom/codemao/nemo/bean/UserFansOrFollowers;)V

    .line 302
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$302(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Z)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 298
    check-cast p1, Lcom/codemao/nemo/bean/UserFansOrFollowers;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$6;->onSuc(Lcom/codemao/nemo/bean/UserFansOrFollowers;)V

    return-void
.end method
