.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->setNetErrorCallback(Z)V
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

    .line 296
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iput-boolean p2, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->val$showLater:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryAgain()V
    .registers 4

    .line 299
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$1000(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_16

    .line 300
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$1000(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 303
    :cond_16
    iget-boolean v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->val$showLater:Z

    if-eqz v0, :cond_36

    .line 304
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/nemo/bean/MiaoCode;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    goto :goto_40

    .line 306
    :cond_36
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    .line 308
    :goto_40
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    iget-boolean v1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$9;->val$showLater:Z

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$1100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;ZZ)V

    return-void
.end method
