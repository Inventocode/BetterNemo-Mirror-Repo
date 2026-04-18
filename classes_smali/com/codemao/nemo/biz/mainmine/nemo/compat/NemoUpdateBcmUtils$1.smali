.class Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;
.super Ljava/lang/Object;
.source "NemoUpdateBcmUtils.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils;->lambda$download$0(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;)V
    .registers 3

    .line 77
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 7

    .line 89
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

    .line 80
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    if-eqz v0, :cond_c

    .line 81
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/compat/NemoUpdateBcmUtils$1;->val$workDetailInfo:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;->getBcm_url()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->bcm_url:Ljava/lang/String;

    .line 83
    :cond_c
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
