.class Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;
.super Ljava/lang/Object;
.source "UserFollowersOrFansActivity.java"

# interfaces
.implements Lcom/scwang/smartrefresh/layout/listener/OnRefreshListener;


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

    .line 169
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onRefresh(Lcom/scwang/smartrefresh/layout/api/RefreshLayout;)V
    .registers 3

    .line 172
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_10

    .line 173
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->mLoadView:Lcom/codemao/nemo/view/LoadView;

    invoke-virtual {p1}, Lcom/codemao/nemo/view/LoadView;->showError()V

    return-void

    .line 176
    :cond_10
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$502(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;I)I

    .line 177
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity$3;->this$0:Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;->access$400(Lcom/codemao/nemo/activity/UserFollowersOrFansActivity;)V

    return-void
.end method
