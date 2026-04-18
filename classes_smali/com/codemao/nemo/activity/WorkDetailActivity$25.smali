.class Lcom/codemao/nemo/activity/WorkDetailActivity$25;
.super Ljava/lang/Object;
.source "WorkDetailActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/ShareDialog$OnCopyListener;


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

    .line 995
    iput-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public copyLink()V
    .registers 4

    .line 1003
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$500(Lcom/codemao/nemo/activity/WorkDetailActivity;)Lcom/codemao/nemo/biz/workdetail/WorkDetailResponse;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/codemao/nemo/event/ShareEvents;->creatShareSuccessEvents(J)Lcom/codemao/nemo/event/ShareEvents;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onClickDismiss()V
    .registers 1

    return-void
.end method

.method public onShareClick(ILjava/lang/String;)V
    .registers 5

    .line 1008
    iget-object p1, p0, Lcom/codemao/nemo/activity/WorkDetailActivity$25;->this$0:Lcom/codemao/nemo/activity/WorkDetailActivity;

    iget-object p2, p1, Lcom/codemao/nemo/activity/WorkDetailActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-static {p1}, Lcom/codemao/nemo/activity/WorkDetailActivity;->access$1100(Lcom/codemao/nemo/activity/WorkDetailActivity;)J

    move-result-wide v0

    new-instance p1, Lcom/codemao/nemo/activity/WorkDetailActivity$25$1;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/activity/WorkDetailActivity$25$1;-><init>(Lcom/codemao/nemo/activity/WorkDetailActivity$25;)V

    invoke-virtual {p2, v0, v1, p1}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method
