.class final Lcom/tencent/smtt/sdk/QbSdk$3;
.super Landroid/os/Handler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

.field final synthetic b:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/os/Looper;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;Landroid/content/Context;)V
    .registers 4

    iput-object p2, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    iput-object p3, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->b:Landroid/content/Context;

    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x1

    if-eq p1, v0, :cond_20

    const/4 v0, 0x2

    if-eq p1, v0, :cond_14

    const/4 v0, 0x3

    if-eq p1, v0, :cond_c

    goto :goto_47

    :cond_c
    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz p1, :cond_47

    invoke-interface {p1}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onCoreInitFinished()V

    goto :goto_47

    :cond_14
    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz p1, :cond_1c

    const/4 v0, 0x0

    :goto_19
    invoke-interface {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;->onViewInitFinished(Z)V

    :cond_1c
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    goto :goto_47

    :cond_20
    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object p1

    iget-object v1, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->b:Landroid/content/Context;

    const-string v2, "disable_unpreinit.txt"

    invoke-virtual {p1, v1, v2}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->canUseFunction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Z)Z

    sget-boolean p1, Lcom/tencent/smtt/sdk/QbSdk;->j:Z

    if-eqz p1, :cond_42

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p1

    if-eqz p1, :cond_42

    iget-object v1, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->b:Landroid/content/Context;

    invoke-virtual {p1, v1}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    :cond_42
    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$3;->a:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    if-eqz p1, :cond_1c

    goto :goto_19

    :cond_47
    :goto_47
    return-void
.end method
