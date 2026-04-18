.class Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Lcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2$8;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2$8;)V
    .registers 2

    .line 635
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public needUpdate(Ljava/lang/String;)V
    .registers 2

    .line 668
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .registers 5

    .line 648
    iget-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p1, p1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 649
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    .line 650
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v1, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v2, 0x1

    iput v2, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x7

    .line 651
    iput v2, p1, Landroid/os/Message;->what:I

    .line 652
    iput-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 653
    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onIlleagal()V
    .registers 5

    .line 658
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 659
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 660
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    const/4 v3, 0x1

    iput v3, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v3, 0x7

    .line 661
    iput v3, v0, Landroid/os/Message;->what:I

    .line 662
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 663
    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public onSuccess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 638
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    const/4 p1, 0x2

    .line 639
    iput p1, p2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 640
    new-instance p1, Landroid/os/Message;

    invoke-direct {p1}, Landroid/os/Message;-><init>()V

    const/4 p2, 0x6

    .line 641
    iput p2, p1, Landroid/os/Message;->what:I

    .line 642
    iget-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object p3, p2, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object p3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 643
    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object p2, p2, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {p2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
