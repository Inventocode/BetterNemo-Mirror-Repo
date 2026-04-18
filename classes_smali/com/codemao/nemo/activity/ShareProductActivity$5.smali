.class Lcom/codemao/nemo/activity/ShareProductActivity$5;
.super Ljava/lang/Object;
.source "ShareProductActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity;->share()V
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

    .line 361
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancle()V
    .registers 3

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const-string/jumbo v1, "分享失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 379
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->finish()V

    return-void
.end method

.method public checkPermisson(I)V
    .registers 6

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    iget-object v0, p1, Lcom/codemao/nemo/activity/ShareProductActivity;->permissions:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 370
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$500(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->continueShare()V

    goto :goto_21

    .line 372
    :cond_14
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/16 v1, 0x67

    iget-object v2, v0, Lcom/codemao/nemo/activity/ShareProductActivity;->permissions:[Ljava/lang/String;

    const-string v3, "TYPE_SHARE_WORK_CARD"

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public fail()V
    .registers 3

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const-string/jumbo v1, "分享失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 385
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->finish()V

    return-void
.end method

.method public finishS()V
    .registers 2

    .line 390
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->finish()V

    return-void
.end method

.method public onShareClick()V
    .registers 5

    .line 413
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$800(Lcom/codemao/nemo/activity/ShareProductActivity;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$800(Lcom/codemao/nemo/activity/ShareProductActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_2d

    .line 416
    :cond_15
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$900(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/http/DiscoveryNetUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$800(Lcom/codemao/nemo/activity/ShareProductActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lcom/codemao/nemo/activity/ShareProductActivity$5$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/activity/ShareProductActivity$5$1;-><init>(Lcom/codemao/nemo/activity/ShareProductActivity$5;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    :cond_2d
    :goto_2d
    return-void
.end method

.method public showMiaoCode()V
    .registers 3

    .line 395
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 396
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 399
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$500(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 400
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$500(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 402
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$600(Lcom/codemao/nemo/activity/ShareProductActivity;I)V

    .line 403
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$100(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$700(Lcom/codemao/nemo/activity/ShareProductActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public sucssess()V
    .registers 2

    .line 364
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$5;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/activity/ShareProductActivity;->finish()V

    return-void
.end method
