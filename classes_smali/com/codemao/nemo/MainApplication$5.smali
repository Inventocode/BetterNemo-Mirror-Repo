.class Lcom/codemao/nemo/MainApplication$5;
.super Ljava/lang/Object;
.source "MainApplication.java"

# interfaces
.implements Lcom/tencent/smtt/sdk/QbSdk$PreInitCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/MainApplication;->initX5()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/MainApplication;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/MainApplication;)V
    .registers 2

    .line 375
    iput-object p1, p0, Lcom/codemao/nemo/MainApplication$5;->this$0:Lcom/codemao/nemo/MainApplication;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCoreInitFinished()V
    .registers 1

    return-void
.end method

.method public onViewInitFinished(Z)V
    .registers 4

    .line 379
    sget-object v0, Lcom/codemao/nemo/MainApplication;->configVO:Lcom/codemao/nemo/bean/ConfigVO;

    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/ConfigVO;->getEnv()Ljava/lang/String;

    move-result-object v0

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_36

    .line 380
    iget-object v0, p0, Lcom/codemao/nemo/MainApplication$5;->this$0:Lcom/codemao/nemo/MainApplication;

    invoke-virtual {v0}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ""

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 381
    iget-object p1, p0, Lcom/codemao/nemo/MainApplication$5;->this$0:Lcom/codemao/nemo/MainApplication;

    invoke-virtual {p1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string/jumbo v0, "正在使用X5内核"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    :cond_36
    return-void
.end method
