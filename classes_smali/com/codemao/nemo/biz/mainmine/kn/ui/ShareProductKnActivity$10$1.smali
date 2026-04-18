.class Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "ShareProductKnActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->run()V
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
.field final synthetic this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;)V
    .registers 2

    .line 561
    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 573
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x9

    .line 574
    iput p2, p1, Landroid/os/Message;->what:I

    .line 575
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;

    iget-object p2, p2, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$1100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 580
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    .line 581
    iput v1, v0, Landroid/os/Message;->what:I

    .line 582
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;

    iget-object v1, v1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$1100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V
    .registers 4

    .line 564
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;

    iget-object v0, v0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;->setName(Ljava/lang/String;)V

    .line 565
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    .line 566
    iput v1, v0, Landroid/os/Message;->what:I

    .line 567
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 568
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;->this$1:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;

    iget-object p1, p1, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;

    invoke-static {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;->access$1100(Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 561
    check-cast p1, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/ShareProductKnActivity$10$1;->onSuc(Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V

    return-void
.end method
