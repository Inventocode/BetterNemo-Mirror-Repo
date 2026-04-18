.class public abstract Lcom/tencent/smtt/sdk/ServiceWorkerController;
.super Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/ServiceWorkerController;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_22

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object p0

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/x;->q()Lcom/tencent/smtt/export/external/interfaces/IX5CoreServiceWorkerController;

    move-result-object p0

    if-eqz p0, :cond_21

    new-instance v0, Lcom/tencent/smtt/sdk/ServiceWorkerController$1;

    invoke-direct {v0, p0}, Lcom/tencent/smtt/sdk/ServiceWorkerController$1;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5CoreServiceWorkerController;)V

    :cond_21
    return-object v0

    :cond_22
    sget p0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt p0, v1, :cond_2e

    new-instance p0, Lcom/tencent/smtt/sdk/k;

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/k;-><init>()V

    return-object p0

    :cond_2e
    return-object v0
.end method


# virtual methods
.method public abstract getServiceWorkerWebSettings()Lcom/tencent/smtt/export/external/interfaces/ServiceWorkerWebSettings;
.end method

.method public abstract setServiceWorkerClient(Lcom/tencent/smtt/export/external/interfaces/ServiceWorkerClient;)V
.end method
