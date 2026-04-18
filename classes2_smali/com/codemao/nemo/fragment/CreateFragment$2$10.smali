.class Lcom/codemao/nemo/fragment/CreateFragment$2$10;
.super Ljava/lang/Thread;
.source "CreateFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2;->onCancelDownload(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 729
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->val$position:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 732
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    move-result v0

    if-eqz v0, :cond_3e

    .line 733
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/MineTabEvent;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v3, v3, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/codemao/nemo/event/MineTabEvent;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 734
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x2

    .line 735
    iput v1, v0, Landroid/os/Message;->what:I

    .line 736
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 737
    iput v1, v0, Landroid/os/Message;->what:I

    .line 738
    iget v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->val$position:I

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 739
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$10;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v1, v1, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3e
    return-void
.end method
