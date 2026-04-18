.class Lcom/codemao/nemo/fragment/CreateFragment$7;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->upload(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    .line 827
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .line 831
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$7$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$7$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$7;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 849
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$7;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->publishStatus:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_18

    goto :goto_19

    :cond_18
    const/4 v2, 0x1

    :goto_19
    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$7$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$7$2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$7;)V

    invoke-static {v0, v2, v1}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
