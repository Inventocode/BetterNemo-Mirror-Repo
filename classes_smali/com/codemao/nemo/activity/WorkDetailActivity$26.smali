.class Lcom/codemao/nemo/activity/WorkDetailActivity$26;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcn/codemao/android/share/interfaces/IshareResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/WorkDetailActivity;->showShareDialog(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/WorkDetailActivity;)V
    .registers 2

    .line 980
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$26;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Ljava/lang/String;)V
    .registers 3

    .line 988
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$26;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v0, "分享取消"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onFailure(Ljava/lang/String;)V
    .registers 3

    .line 993
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$26;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    const-string/jumbo v0, "分享失败"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/String;)V
    .registers 4

    .line 983
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$26;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/codemao/nemo/event/ShareEvents;->creatShareSuccessEvents(J)Lcom/codemao/nemo/event/ShareEvents;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
