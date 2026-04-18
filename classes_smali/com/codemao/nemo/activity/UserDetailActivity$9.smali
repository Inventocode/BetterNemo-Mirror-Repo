.class Lcom/codemao/nemo/activity/UserDetailActivity$9;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->followUser(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserDetailActivity;)V
    .registers 2

    .line 623
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 634
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    .line 635
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string/jumbo p2, "关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 640
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    .line 641
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->rlTitleAvatar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 623
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity$9;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 5

    .line 626
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$402(Lcom/codemao/nemo/activity/UserDetailActivity;Z)Z

    .line 627
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1100(Lcom/codemao/nemo/activity/UserDetailActivity;)J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/codemao/nemo/event/FollowUserEvents;->creatFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 628
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1500(Lcom/codemao/nemo/activity/UserDetailActivity;ZZ)V

    .line 629
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$9;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1600(Lcom/codemao/nemo/activity/UserDetailActivity;)V

    return-void
.end method
