.class Lcom/codemao/nemo/activity/WorkPublishActivity$21;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkPublishActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkPublishActivity;->publish(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/SimpleWorkInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

.field final synthetic val$forkEnble:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkPublishActivity;Z)V
    .registers 3

    .line 1333
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->val$forkEnble:Z

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1360
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "40101007"

    .line 1361
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 1366
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2400(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-virtual {p1, v0, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;->showPublishForbid(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2a

    :cond_1d
    const-string v0, "402"

    .line 1367
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2a

    .line 1368
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_2a
    :goto_2a
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 1374
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1375
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/SimpleWorkInfo;)V
    .registers 5

    .line 1336
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$800(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 1337
    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-string/jumbo v1, "发布成功"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 1338
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;-><init>()V

    .line 1339
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SimpleWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 1340
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SimpleWorkInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setDescription(Ljava/lang/String;)V

    .line 1341
    iget-boolean p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->val$forkEnble:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setFork_enable(Z)V

    .line 1342
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2200(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 1343
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$2300(Lcom/codemao/nemo/activity/WorkPublishActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setBase64Str(Ljava/lang/String;)V

    .line 1344
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$300(Lcom/codemao/nemo/activity/WorkPublishActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setId(J)V

    .line 1345
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1346
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isEditWorkInfo()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_79

    .line 1347
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->createPublishNewEvent()Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 1348
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    const-class v2, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_7e

    .line 1350
    :cond_79
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    .line 1352
    :goto_7e
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->this$0:Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkPublishActivity;->access$900(Lcom/codemao/nemo/activity/WorkPublishActivity;)Lcom/codemao/nemo/bean/WorkPublishInfoCompat;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/WorkPublishInfoCompat;->isNemo()Z

    move-result p1

    if-eqz p1, :cond_96

    .line 1353
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_96
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 1333
    check-cast p1, Lcom/codemao/nemo/bean/SimpleWorkInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/WorkPublishActivity$21;->onSuc(Lcom/codemao/nemo/bean/SimpleWorkInfo;)V

    return-void
.end method
