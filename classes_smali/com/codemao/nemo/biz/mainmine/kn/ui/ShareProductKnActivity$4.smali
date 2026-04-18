.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/dialog/ShareCardDialogV3$ShareListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->share()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)V
    .registers 2

    .line 360
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancle()V
    .registers 3

    .line 377
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const-string/jumbo v1, "分享失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 378
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method

.method public checkPermisson(I)V
    .registers 6

    .line 368
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget-object v0, p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->permissions:[Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/PermissionUtils;->checkPermission(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_14

    .line 369
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$300(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/ShareCardDialogV3;->continueShare()V

    goto :goto_21

    .line 371
    :cond_14
    sget-object p1, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->INSTANCE:Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const/16 v1, 0x67

    iget-object v2, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->permissions:[Ljava/lang/String;

    const-string v3, "TYPE_SHARE_WORK_CARD"

    invoke-virtual {p1, v0, v1, v3, v2}, Lcom/codemao/newnemo/util/permission/PermissionNoticeTools;->checkPermissionInOrigin(Landroid/app/Activity;ILjava/lang/String;[Ljava/lang/String;)V

    :goto_21
    return-void
.end method

.method public fail()V
    .registers 3

    .line 383
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const-string/jumbo v1, "分享失败"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 384
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method

.method public finishS()V
    .registers 2

    .line 389
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method

.method public onShareClick()V
    .registers 5

    .line 412
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$700(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/http/DiscoveryNetUtil;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$600(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    new-instance v3, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->shareWork(JLcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method public showMiaoCode()V
    .registers 3

    .line 394
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 395
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 398
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$300(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 399
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$300(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/dialog/ShareCardDialogV3;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 401
    :cond_1f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$400(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V

    .line 402
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$500(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method

.method public sucssess()V
    .registers 2

    .line 363
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$4;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method
