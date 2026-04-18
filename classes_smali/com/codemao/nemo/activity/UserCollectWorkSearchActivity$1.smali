.class Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "UserCollectWorkSearchActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;->cancelCollectWork(J)V
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
.field final synthetic this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

.field final synthetic val$workId:J


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;J)V
    .registers 4

    .line 95
    iput-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    iput-wide p2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->val$workId:J

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 103
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    const-string/jumbo p2, "取消收藏失败"

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 95
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->onSuc(Ljava/lang/String;)V

    return-void
.end method

.method public onSuc(Ljava/lang/String;)V
    .registers 6

    .line 98
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-wide v0, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->val$workId:J

    iget-object v2, p0, Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity$1;->this$0:Lcom/codemao/nemo/activity/UserCollectWorkSearchActivity;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatCollectOrCollectEvents(JZI)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
