.class Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 621
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 624
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    .line 625
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_39

    const/4 v2, 0x1

    if-eq v1, v2, :cond_39

    .line 626
    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 627
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 628
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x7

    .line 629
    iput v1, v0, Landroid/os/Message;->what:I

    .line 630
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;->this$2:Lcom/codemao/nemo/fragment/CreateFragment$2$8;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 631
    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_39
    return-void
.end method
