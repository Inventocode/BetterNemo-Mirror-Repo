.class Lcom/codemao/nemo/fragment/CreateFragment$17$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$17;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$17;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$17;)V
    .registers 2

    .line 1430
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$17$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$17;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 7

    .line 1442
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x3

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 7

    .line 1433
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$17$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$17;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v1, :cond_e

    .line 1434
    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$17;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 1436
    :cond_e
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x3

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
