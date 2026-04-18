.class Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;
.super Ljava/lang/Object;
.source "BaseWorkPlayActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/WorkPlayShareDialog$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->getScreenShoot(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)V
    .registers 2

    .line 681
    iput-object p1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancle()V
    .registers 3

    .line 690
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    const-string/jumbo v1, "分享取消"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public fail()V
    .registers 3

    .line 695
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    const-string/jumbo v1, "分享失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public report(Ljava/lang/String;)V
    .registers 6

    .line 700
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-wide v2, v2, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-object v1, v1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workType:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public sucssess()V
    .registers 4

    .line 684
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-wide v1, v1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    invoke-static {v1, v2}, Lcom/codemao/nemo/event/ShareEvents;->creatShareSuccessEvents(J)Lcom/codemao/nemo/event/ShareEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 685
    iget-object v0, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->access$100(Lcom/codemao/nemo/activity/BaseWorkPlayActivity;)Lcom/giu/xzz/mvp/BasePresenter;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;

    iget-object v1, p0, Lcom/codemao/nemo/activity/BaseWorkPlayActivity$4;->this$0:Lcom/codemao/nemo/activity/BaseWorkPlayActivity;

    iget-wide v1, v1, Lcom/codemao/nemo/activity/BaseWorkPlayActivity;->workId:J

    invoke-virtual {v0, v1, v2}, Lcom/codemao/nemo/presenter/WorkPlayPresentImpl;->reportShareWork(J)V

    return-void
.end method
