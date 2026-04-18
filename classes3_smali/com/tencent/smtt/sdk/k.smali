.class public Lcom/tencent/smtt/sdk/k;
.super Lcom/tencent/smtt/sdk/ServiceWorkerController;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/ServiceWorkerController;-><init>()V

    return-void
.end method


# virtual methods
.method public getServiceWorkerWebSettings()Lcom/tencent/smtt/export/external/interfaces/ServiceWorkerWebSettings;
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-ge v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    invoke-static {}, Landroid/webkit/ServiceWorkerController;->getInstance()Landroid/webkit/ServiceWorkerController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/ServiceWorkerController;->getServiceWorkerWebSettings()Landroid/webkit/ServiceWorkerWebSettings;

    move-result-object v0

    new-instance v1, Lcom/tencent/smtt/sdk/k$1;

    invoke-direct {v1, p0, v0}, Lcom/tencent/smtt/sdk/k$1;-><init>(Lcom/tencent/smtt/sdk/k;Landroid/webkit/ServiceWorkerWebSettings;)V

    return-object v1
.end method

.method public setServiceWorkerClient(Lcom/tencent/smtt/export/external/interfaces/ServiceWorkerClient;)V
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_12

    invoke-static {}, Landroid/webkit/ServiceWorkerController;->getInstance()Landroid/webkit/ServiceWorkerController;

    move-result-object v0

    new-instance v1, Lcom/tencent/smtt/sdk/k$2;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/k$2;-><init>(Lcom/tencent/smtt/sdk/k;Lcom/tencent/smtt/export/external/interfaces/ServiceWorkerClient;)V

    invoke-virtual {v0, v1}, Landroid/webkit/ServiceWorkerController;->setServiceWorkerClient(Landroid/webkit/ServiceWorkerClient;)V

    :cond_12
    return-void
.end method
