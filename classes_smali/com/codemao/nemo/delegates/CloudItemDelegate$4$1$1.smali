.class Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;
.super Ljava/lang/Object;
.source "CloudItemDelegate.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/BcmDownloadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 222
    iput-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    iput-object p2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/String;)V
    .registers 7

    const/4 v0, 0x0

    .line 235
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const/4 v0, 0x0

    .line 236
    sput-object v0, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    .line 237
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1c

    const-string v0, "Socket closed"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    const-string v0, "Canceled"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_42

    .line 238
    :cond_1c
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    iget-object p1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object v0, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    const/4 v1, 0x3

    iput v1, v0, Lcom/codemao/nemo/bean/CloudData;->downloadStatus:I

    .line 240
    iget-object v1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object p1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v1, p1, v0}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadEndUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V

    .line 241
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    iget-object v2, v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget v2, v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {p1, v0}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_42
    return-void
.end method

.method public onSuccess(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 6

    const/4 v0, 0x0

    .line 225
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    const/4 v0, 0x0

    .line 226
    sput-object v0, Lcom/codemao/nemo/util/AppConstants;->DOWNLOADING_BCM_ID:Ljava/lang/String;

    .line 227
    iget-object v0, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    iget-object v0, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object v1, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$data:Lcom/codemao/nemo/bean/CloudData;

    const/4 v2, 0x2

    iput v2, v1, Lcom/codemao/nemo/bean/CloudData;->downloadStatus:I

    .line 228
    iget-object v2, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    iget-object v0, v0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$holder:Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    invoke-virtual {v2, v0, v1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->downloadEndUI(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/CloudData;)V

    .line 229
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;

    iget-object v2, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    iget-object v2, v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget v2, v2, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->val$position:I

    const/4 v3, 0x1

    invoke-direct {v1, p1, v2, v3, v3}, Lcom/codemao/creativecenter/utils/bcm/events/DownloadBcmResult;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;III)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 230
    iget-object p1, p0, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1$1;->this$2:Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;

    iget-object p1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4$1;->this$1:Lcom/codemao/nemo/delegates/CloudItemDelegate$4;

    iget-object p1, p1, Lcom/codemao/nemo/delegates/CloudItemDelegate$4;->this$0:Lcom/codemao/nemo/delegates/CloudItemDelegate;

    invoke-static {p1}, Lcom/codemao/nemo/delegates/CloudItemDelegate;->access$200(Lcom/codemao/nemo/delegates/CloudItemDelegate;)Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f1202ea

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;I)V

    return-void
.end method
