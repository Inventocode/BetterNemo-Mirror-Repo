.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeErrorCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->showGenerateMiaoDialog(I)V
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

    .line 526
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public tryAgain()V
    .registers 3

    .line 529
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 530
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/util/ToastUtil;->showNetErrorToast(Landroid/content/Context;)V

    return-void

    .line 533
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$400(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V

    .line 534
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$9;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/bean/WorkShareCompatData;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$500(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    return-void
.end method
