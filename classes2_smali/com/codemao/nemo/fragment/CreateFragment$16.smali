.class Lcom/codemao/nemo/fragment/CreateFragment$16;
.super Lcom/codemao/nemo/http/LocalNetCallBackV2;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->generateMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 1253
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$16;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$16;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Lcom/codemao/nemo/http/LocalNetCallBackV2;-><init>()V

    return-void
.end method


# virtual methods
.method public onErr(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 1265
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0x9

    .line 1266
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1267
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$16;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onNetError()V
    .registers 3

    .line 1272
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x9

    .line 1273
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1274
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$16;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuc(Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V
    .registers 4

    .line 1256
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$16;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;->setName(Ljava/lang/String;)V

    .line 1257
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0x8

    .line 1258
    iput v1, v0, Landroid/os/Message;->what:I

    .line 1259
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1260
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$16;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bridge synthetic onSuc(Ljava/lang/Object;)V
    .registers 2

    .line 1253
    check-cast p1, Lcom/codemao/nemo/bean/GetMiaoCodeResponse;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/fragment/CreateFragment$16;->onSuc(Lcom/codemao/nemo/bean/GetMiaoCodeResponse;)V

    return-void
.end method
