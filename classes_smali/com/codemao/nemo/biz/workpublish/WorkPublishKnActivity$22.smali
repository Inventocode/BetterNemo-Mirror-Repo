.class Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "WorkPublishKnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->publish()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

.field final synthetic val$forkEnble:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Z)V
    .registers 3

    .line 949
    iput-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    iput-boolean p2, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->val$forkEnble:Z

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 976
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-string v0, "40101007"

    .line 977
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 978
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    if-nez p1, :cond_3b

    .line 979
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-direct {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightTextVisible(Z)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p2

    const-string/jumbo v0, "知道了"

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2502(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;Lcom/codemao/nemo/dialog/CustomDialogTypeOne;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 981
    :cond_3b
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2500(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    goto :goto_52

    :cond_45
    const-string v0, "402"

    .line 982
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_52

    .line 983
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_52
    :goto_52
    return-void
.end method

.method public onNetError()V
    .registers 2

    .line 989
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 990
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/SimpleWorkInfo;)V
    .registers 5

    .line 952
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$700(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 953
    iget-object v0, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const-string/jumbo v1, "发布成功"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 954
    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-direct {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;-><init>()V

    .line 955
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SimpleWorkInfo;->getWork_name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setWork_name(Ljava/lang/String;)V

    .line 956
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/SimpleWorkInfo;->getDescription()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setDescription(Ljava/lang/String;)V

    .line 957
    iget-boolean p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->val$forkEnble:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setFork_enable(Z)V

    .line 958
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2100(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setPreview(Ljava/lang/String;)V

    .line 959
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2200(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setBase64Str(Ljava/lang/String;)V

    .line 960
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->setId(J)V

    .line 961
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {v0}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->creatPublishEvents(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 962
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2300(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)Z

    move-result p1

    if-nez p1, :cond_62

    .line 963
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    invoke-static {}, Lcom/codemao/nemo/event/UpdateWorkInfoEvents;->createPublishNewEvent()Lcom/codemao/nemo/event/UpdateWorkInfoEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 965
    :cond_62
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_7b

    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;->access$2400(Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;)I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_75

    goto :goto_7b

    .line 969
    :cond_75
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    invoke-virtual {p1}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_95

    .line 966
    :cond_7b
    :goto_7b
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/event/RefreshEvent;

    invoke-direct {v0}, Lcom/codemao/nemo/event/RefreshEvent;-><init>()V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 967
    iget-object p1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->this$0:Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity;

    const-class v2, Lcom/codemao/nemo/MainActivityV2;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Lcom/giu/xzz/BaseActivity;->startActivity(Landroid/content/Intent;)V

    :goto_95
    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 949
    check-cast p1, Lcom/codemao/nemo/bean/SimpleWorkInfo;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnActivity$22;->onSuc(Lcom/codemao/nemo/bean/SimpleWorkInfo;)V

    return-void
.end method
