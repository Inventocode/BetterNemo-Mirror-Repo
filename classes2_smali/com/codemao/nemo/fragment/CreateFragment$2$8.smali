.class Lcom/codemao/nemo/fragment/CreateFragment$2$8;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$2;->onPublish(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
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

    .line 617
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 11

    .line 621
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$2;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$2;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$2$8$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$8;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 635
    iget-object v6, p0, Lcom/codemao/nemo/fragment/CreateFragment$2$8;->val$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    new-instance v9, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;

    invoke-direct {v9, p0}, Lcom/codemao/nemo/fragment/CreateFragment$2$8$2;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$2$8;)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-static/range {v4 .. v9}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->uploadBcm(ZZLcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;ZILcom/codemao/creativecenter/utils/bcm/listener/UploadCallBack;)V

    return-void
.end method
