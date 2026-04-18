.class Lcom/codemao/nemo/activity/ShareProductActivity$10;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->showGenerateMiaoDialog(I)V
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

    .line 530
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$10;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryAgain()V
    .registers 3

    .line 533
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$10;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 534
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$10;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 537
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$10;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$600(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    .line 538
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$10;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$700(Lcom/codemao/nemo/activity/ShareProductActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
