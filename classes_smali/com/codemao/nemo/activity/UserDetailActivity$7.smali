.class Lcom/codemao/nemo/activity/UserDetailActivity$7;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserDetailActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserDetailActivity;->editUserInfo(Landroid/view/View;)V
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

    .line 563
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 572
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object p1, p1, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 573
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const-string/jumbo p2, "取消关注失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 578
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    iget-object v0, v0, Lcom/codemao/nemo/activity/UserDetailActivity;->tvEditOrFollow:Lcom/codemao/nemo/view/RoundTextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 579
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 563
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserDetailActivity$7;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 4

    .line 566
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1100(Lcom/codemao/nemo/activity/UserDetailActivity;)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/FollowUserEvents;->creatCancelFollowUserEvents(J)Lcom/codemao/nemo/event/FollowUserEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 567
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserDetailActivity$7;->this$0:Lcom/codemao/nemo/activity/UserDetailActivity;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/UserDetailActivity;->access$1500(Lcom/codemao/nemo/activity/UserDetailActivity;ZZ)V

    return-void
.end method
