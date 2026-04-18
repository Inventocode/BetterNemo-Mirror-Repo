.class Lcom/codemao/nemo/fragment/CreateFragment$7$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$7;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$7;)V
    .registers 2

    .line 831
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 834
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v2, 0x2

    if-eq v1, v2, :cond_58

    const/4 v2, 0x1

    if-eq v1, v2, :cond_58

    .line 835
    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 836
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput v2, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 837
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/16 v1, 0xb

    .line 838
    iput v1, v0, Landroid/os/Message;->what:I

    .line 839
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v2, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 840
    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 841
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    if-gez v0, :cond_46

    .line 842
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v2, v2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    goto :goto_58

    .line 844
    :cond_46
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/UploadBcmEvent;

    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$7;

    iget-object v3, v2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v2, v2, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    invoke-direct {v1, v3, v2}, Lcom/codemao/nemo/event/UploadBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_58
    :goto_58
    return-void
.end method
