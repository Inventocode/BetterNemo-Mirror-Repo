.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->download(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

.field final synthetic val$showLater:Z


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Z)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iput-boolean p2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->val$showLater:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 7

    const/4 p1, 0x0

    .line 241
    sput-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 242
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$600(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Z

    move-result v0

    if-nez v0, :cond_3d

    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    if-nez v0, :cond_14

    goto :goto_3d

    .line 245
    :cond_14
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v2}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 246
    iget-boolean p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->val$showLater:Z

    if-nez p1, :cond_3d

    .line 247
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 v0, 0x4

    .line 248
    iput v0, p1, Landroid/os/Message;->what:I

    .line 249
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$900(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3d
    :goto_3d
    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    const/4 v0, 0x0

    .line 225
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 226
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$600(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Z

    move-result v1

    if-nez v1, :cond_42

    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v1

    if-nez v1, :cond_14

    goto :goto_42

    .line 229
    :cond_14
    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$802(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 230
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    const/4 v3, 0x1

    invoke-direct {v2, p1, v0, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v1, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 231
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$400(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Z

    move-result v0

    if-nez v0, :cond_42

    .line 232
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x3

    .line 233
    iput v1, v0, Landroid/os/Message;->what:I

    .line 234
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 235
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$7;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$900(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_42
    :goto_42
    return-void
.end method
