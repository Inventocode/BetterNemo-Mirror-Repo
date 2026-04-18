.class Lcom/codemao/nemo/activity/ShareProductActivity$7;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/activity/ShareProductActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity;)V
    .registers 2

    .line 448
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$7;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 452
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    const/16 p1, 0x9

    if-eq v0, p1, :cond_e

    goto :goto_35

    .line 478
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$7;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$600(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    goto :goto_35

    .line 457
    :cond_15
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$7;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$600(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    .line 458
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$7;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$1100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/ShareProductActivity$7$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity$7$1;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity$7;Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;)V

    goto :goto_35

    .line 454
    :cond_2e
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$7;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$1000(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    :goto_35
    return-void
.end method
