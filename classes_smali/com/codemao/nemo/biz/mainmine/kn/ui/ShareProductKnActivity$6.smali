.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;
.super Ljava/lang/Object;
.source "ShareProductKnActivity.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;
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

    .line 444
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 4

    .line 448
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2e

    const/16 v1, 0x8

    if-eq v0, v1, :cond_15

    const/16 p1, 0x9

    if-eq v0, p1, :cond_e

    goto :goto_35

    .line 474
    :cond_e
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const/4 v0, 0x3

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$400(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V

    goto :goto_35

    .line 453
    :cond_15
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$400(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V

    .line 454
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    .line 455
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$900(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6$1;-><init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setGenerateMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$GenerateMiaoCodeCallback;)V

    goto :goto_35

    .line 450
    :cond_2e
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$6;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$800(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;I)V

    :goto_35
    return-void
.end method
