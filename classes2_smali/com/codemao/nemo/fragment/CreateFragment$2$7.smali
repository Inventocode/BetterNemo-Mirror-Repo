.class Lcom/codemao/nemo/fragment/CreateFragment$2$7;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2;->onConfirmDelete(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$2;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V
    .registers 3

    .line 562
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$7;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 565
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    move-result v0

    .line 566
    new-instance v1, Landroid/os/Message;

    invoke-direct {v1}, Landroid/os/Message;-><init>()V

    const/4 v2, 0x2

    .line 567
    iput v2, v1, Landroid/os/Message;->what:I

    if-eqz v0, :cond_15

    .line 569
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    goto :goto_18

    :cond_15
    const/4 v0, 0x0

    .line 571
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 573
    :goto_18
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$7;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
