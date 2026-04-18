.class Lcom/codemao/nemo/fragment/CreateFragment$2$4;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2;->onCopy(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
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

    .line 451
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$4;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$4;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    const-wide/16 v0, 0x1f4

    .line 455
    :try_start_2
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_5} :catch_6

    goto :goto_a

    :catch_6
    move-exception v0

    .line 457
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 459
    :goto_a
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$4;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->copyBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    .line 460
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    const/4 v2, 0x1

    .line 461
    iput v2, v1, Landroid/os/Message;->what:I

    .line 462
    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 463
    iget v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$4;->val$position:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    .line 464
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$4;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
