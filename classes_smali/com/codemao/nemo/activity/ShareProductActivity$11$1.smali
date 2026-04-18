.class Lcom/codemao/nemo/activity/ShareProductActivity$11$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ShareProductActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/ShareProductActivity$11;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/nemo/http/LocalNetCallBackV2<",
        "Lcom/codemao/nemo/bean/GetMiaoCodeResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/activity/ShareProductActivity$11;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/ShareProductActivity$11;)V
    .registers 2

    .line 565
    iput-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$11;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 577
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x9

    .line 578
    iput p2, p1, Landroid/os/Message;->what:I

    .line 579
    iget-object p2, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$11;

    iget-object p2, p2, Lcom/codemao/nemo/activity/ShareProductActivity$11;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p2}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$1300(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 584
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    .line 585
    iput v1, v0, Landroid/os/Message;->what:I

    .line 586
    iget-object v1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$11;

    iget-object v1, v1, Lcom/codemao/nemo/activity/ShareProductActivity$11;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {v1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$1300(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V
    .registers 4

    .line 568
    iget-object v0, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$11;

    iget-object v0, v0, Lcom/codemao/nemo/activity/ShareProductActivity$11;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;->setName(Ljava/lang/String;)V

    .line 569
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    .line 570
    iput v1, v0, Landroid/os/Message;->what:I

    .line 571
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 572
    iget-object p1, p0, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;->this$1:Lcom/codemao/nemo/activity/ShareProductActivity$11;

    iget-object p1, p1, Lcom/codemao/nemo/activity/ShareProductActivity$11;->this$0:Lcom/codemao/nemo/activity/ShareProductActivity;

    invoke-static {p1}, Lcom/codemao/nemo/activity/ShareProductActivity;->access$1300(Lcom/codemao/nemo/activity/ShareProductActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 565
    check-cast p1, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/activity/ShareProductActivity$11$1;->onSuc(Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V

    return-void
.end method
