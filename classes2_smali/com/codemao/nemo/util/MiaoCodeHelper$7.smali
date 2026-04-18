.class Lcom/codemao/nemo/util/MiaoCodeHelper$7;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;->download(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

.field final synthetic val$showLater:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V
    .registers 3

    .line 196
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    iput-boolean p2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->val$showLater:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 7

    const/4 p1, 0x0

    .line 213
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 214
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v2}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$300(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 215
    iget-boolean p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->val$showLater:Z

    if-nez p1, :cond_2c

    .line 216
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x4

    .line 217
    iput v0, p1, Landroid/os/Message;->what:I

    .line 218
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2c
    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    const/4 v0, 0x0

    .line 199
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 200
    iget-object v1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$302(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 202
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$400(Lcom/codemao/nemo/util/MiaoCodeHelper;)Z

    move-result v0

    if-nez v0, :cond_31

    .line 204
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 205
    iput v1, v0, Landroid/os/Message;->what:I

    .line 206
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 207
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_31
    return-void
.end method
