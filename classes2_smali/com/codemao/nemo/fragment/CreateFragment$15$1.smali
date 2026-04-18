.class Lcom/codemao/nemo/fragment/CreateFragment$15$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$15;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$15;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$15;)V
    .registers 2

    .line 1205
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$15;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 3

    .line 1218
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 v0, 0x9

    .line 1219
    iput v0, p1, Landroid/os/Message;->what:I

    .line 1220
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$15;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v0, 0x1

    .line 1221
    iput v0, p1, Landroid/os/Message;->arg1:I

    goto :goto_1e

    :cond_1b
    const/4 v0, 0x2

    .line 1223
    iput v0, p1, Landroid/os/Message;->arg1:I

    .line 1225
    :goto_1e
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$15;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$15;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIlleagal()V
    .registers 1

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 1208
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$15;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$15;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    .line 1209
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/16 p2, 0xa

    .line 1210
    iput p2, p1, Landroid/os/Message;->what:I

    .line 1211
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$15$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$15;

    iget p3, p2, Lcom/codemao/nemo/fragment/CreateFragment$15;->val$position:I

    iput p3, p1, Landroid/os/Message;->arg1:I

    .line 1212
    iget-object p3, p2, Lcom/codemao/nemo/fragment/CreateFragment$15;->val$createData:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1213
    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$15;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
