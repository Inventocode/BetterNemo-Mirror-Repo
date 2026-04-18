.class Lcom/codemao/nemo/fragment/CreateFragment$19;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->refresh()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;)V
    .registers 2

    .line 1511
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 1514
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object v0

    .line 1515
    iget-object v1, p0, Lcom/codemao/nemo/fragment/CreateFragment$19;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v1}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/fragment/CreateFragment$19$1;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/fragment/CreateFragment$19$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$19;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
