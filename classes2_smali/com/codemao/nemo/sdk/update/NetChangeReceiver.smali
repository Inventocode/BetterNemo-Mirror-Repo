.class public Lcom/codemao/nemo/sdk/update/NetChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "NetChangeReceiver.java"


# instance fields
.field private isFirst:Z

.field private mHandlerUtil:Lcom/giu/xzz/utils/HandlerUtil;


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 15
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;->isFirst:Z

    .line 28
    new-instance v0, Lcom/giu/xzz/utils/HandlerUtil;

    new-instance v1, Lcom/codemao/nemo/sdk/update/NetChangeReceiver$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/sdk/update/NetChangeReceiver$1;-><init>(Lcom/codemao/nemo/sdk/update/NetChangeReceiver;)V

    invoke-direct {v0, p0, v1}, Lcom/giu/xzz/utils/HandlerUtil;-><init>(Ljava/lang/Object;Lcom/giu/xzz/utils/HandlerUtil$HandleBack;)V

    iput-object v0, p0, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;->mHandlerUtil:Lcom/giu/xzz/utils/HandlerUtil;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 4

    .line 20
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_22

    .line 21
    invoke-static {p1}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_22

    iget-boolean p1, p0, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;->isFirst:Z

    if-eqz p1, :cond_22

    const/4 p1, 0x0

    .line 22
    iput-boolean p1, p0, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;->isFirst:Z

    .line 23
    invoke-static {}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->get()Lcom/codemao/nemo/sdk/update/UpdateHelper;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/nemo/sdk/update/NetChangeReceiver;->mHandlerUtil:Lcom/giu/xzz/utils/HandlerUtil;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/sdk/update/UpdateHelper;->update(Landroid/os/Handler;)V

    :cond_22
    return-void
.end method
