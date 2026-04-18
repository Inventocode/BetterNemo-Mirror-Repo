.class Lcom/codemao/nemo/util/ReworkHelper$4;
.super Ljava/lang/Object;
.source "ReworkHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ReworkHelper;->download()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ReworkHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 212
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_19

    const-string v1, "Socket closed"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3b

    const-string v1, "Canceled"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3b

    .line 214
    :cond_19
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$200(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object p1

    const/4 v1, 0x3

    iput v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    .line 215
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v2, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v2}, Lcom/codemao/nemo/util/ReworkHelper;->access$200(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, v0, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {p1, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 216
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1200(Lcom/codemao/nemo/util/ReworkHelper;)V

    :cond_3b
    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    .line 199
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1302(Lcom/codemao/nemo/util/ReworkHelper;Z)Z

    .line 200
    sput-boolean v1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 201
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1402(Lcom/codemao/nemo/util/ReworkHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 202
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$1400(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    iget-object v2, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v2}, Lcom/codemao/nemo/util/ReworkHelper;->access$1100(Lcom/codemao/nemo/util/ReworkHelper;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 203
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v1, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 204
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 205
    iput v3, v0, Landroid/os/Message;->what:I

    .line 206
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$4;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1500(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
