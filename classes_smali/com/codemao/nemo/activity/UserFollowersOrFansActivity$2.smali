.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;
.super Ljava/lang/Object;
.source "UserFollowersOrFansActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView$LoadingListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V
    .registers 2

    .line 147
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadMore()V
    .registers 3

    .line 155
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 156
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 159
    :cond_10
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$200(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_24

    .line 160
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$302(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;Z)Z

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$400(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    goto :goto_32

    .line 163
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->loadMoreComplete()V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$2;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->recyclerView:Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setNoMore(Z)V

    :goto_32
    return-void
.end method
