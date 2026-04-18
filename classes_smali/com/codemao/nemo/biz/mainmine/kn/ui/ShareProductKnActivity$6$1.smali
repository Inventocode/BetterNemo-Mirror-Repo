.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

.field final synthetic val$res:Lcom/codemao/nemo/bean/GetMiaoCodeResponse;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V
    .registers 3

    .line 455
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->val$res:Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public goParse()V
    .registers 4

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    const-string/jumbo v1, "卡片分享页面-点击去粘贴喵口令"

    .line 458
    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$900(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 460
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const-string v1, "clipboard"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "【喵口令】快看看我的作品["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->val$res:Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    .line 462
    invoke-virtual {v2}, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]吧，复制这段文本，打开编程猫Nemo即可浏览，内容为:$&"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->val$res:Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;->getToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&$"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Label"

    .line 461
    invoke-static {v2, v1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v1

    .line 463
    invoke-virtual {v0, v1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 464
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const-string/jumbo v1, "喵口令已粘贴成功"

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToastCenter(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 465
    sget-object v0, Lcom/codemao/nemo/util/AppConstants;->GENERATE_MIAOCODE:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->val$res:Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;->getToken()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 466
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->finish()V

    return-void
.end method
