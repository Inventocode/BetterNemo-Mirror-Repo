.class Lcom/codemao/nemo/fragment/CreateFragment$2$9$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2$9;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$9;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2$9;)V
    .registers 2

    .line 700
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$9$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 6

    const/4 p1, 0x0

    .line 709
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 710
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$9$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$9;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$2$9;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2$9;->val$position:I

    const/4 v3, 0x2

    invoke-direct {v0, v2, v1, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 7

    const/4 v0, 0x0

    .line 703
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 704
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$9$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$9;

    iget v2, v2, Lcom/codemao/nemo/fragment/CreateFragment$2$9;->val$position:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-direct {v1, p1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    return-void
.end method
