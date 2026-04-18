.class Lcom/codemao/nemo/fragment/CreateFragment$20$1;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment$20;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment$20;)V
    .registers 2

    .line 1608
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 1611
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$20$1;->this$1:Lcom/codemao/nemo/fragment/CreateFragment$20;

    iget-object v0, v0, Lcom/codemao/nemo/fragment/CreateFragment$20;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$600(Lcom/codemao/nemo/fragment/CreateFragment;)V

    return-void
.end method
