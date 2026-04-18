.class Lcom/codemao/nemo/util/ReworkHelper$1;
.super Ljava/lang/Object;
.source "ReworkHelper.java"

# interfaces
.implements Lcom/codemao/nemo/view/ReWorkDialog$ReWorkCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ReworkHelper;->showReworkDialog(Landroid/app/Activity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeWorkDetailInfo;Lcom/codemao/nemo/util/ReworkHelper$ReWorkForkCallback;)Lcom/codemao/nemo/view/ReWorkDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ReworkHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ReworkHelper;)V
    .registers 2

    .line 63
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .registers 3

    .line 66
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$002(Lcom/codemao/nemo/util/ReworkHelper;Z)Z

    .line 67
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/view/ReWorkDialog;->getType()I

    move-result v0

    if-eq v0, v1, :cond_24

    sget-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz v0, :cond_24

    const/4 v0, 0x0

    .line 68
    sput-boolean v0, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    .line 69
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$200(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/CallUtil;->cancelDownloadById(Ljava/lang/String;)V

    .line 72
    :cond_24
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$300(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public openLater()V
    .registers 4

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object v1

    const v2, 0x7f1202c2

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 78
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$002(Lcom/codemao/nemo/util/ReworkHelper;Z)Z

    .line 79
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$300(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public studyCode()V
    .registers 2

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$600(Lcom/codemao/nemo/util/ReworkHelper;)V

    return-void
.end method

.method public tryAgain()V
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_18

    .line 85
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "网络连接异常，请重新再试"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 88
    :cond_18
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$100(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/nemo/view/ReWorkDialog;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/ReWorkDialog;->showByType(I)Lcom/codemao/nemo/view/ReWorkDialog;

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$500(Lcom/codemao/nemo/util/ReworkHelper;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_31

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$600(Lcom/codemao/nemo/util/ReworkHelper;)V

    goto :goto_4e

    .line 91
    :cond_31
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$500(Lcom/codemao/nemo/util/ReworkHelper;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_40

    .line 92
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$700(Lcom/codemao/nemo/util/ReworkHelper;)V

    goto :goto_4e

    .line 93
    :cond_40
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$500(Lcom/codemao/nemo/util/ReworkHelper;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4e

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$1;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ReworkHelper;->access$800(Lcom/codemao/nemo/util/ReworkHelper;)V

    :cond_4e
    :goto_4e
    return-void
.end method
