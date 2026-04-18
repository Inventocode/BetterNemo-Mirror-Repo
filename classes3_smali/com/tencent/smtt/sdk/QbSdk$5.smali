.class final Lcom/tencent/smtt/sdk/QbSdk$5;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/smtt/sdk/TbsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/smtt/sdk/QbSdk;->initX5Environment(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$5;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/QbSdk$5;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDownloadFinish(I)V
    .registers 2

    return-void
.end method

.method public onDownloadProgress(I)V
    .registers 2

    return-void
.end method

.method public onInstallFinish(I)V
    .registers 3

    iget-object p1, p0, Lcom/tencent/smtt/sdk/QbSdk$5;->a:Landroid/content/Context;

    iget-object v0, p0, Lcom/tencent/smtt/sdk/QbSdk$5;->b:Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;

    invoke-static {p1, v0}, Lcom/tencent/smtt/sdk/QbSdk;->preInit(Landroid/content/Context;Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;)V

    return-void
.end method
