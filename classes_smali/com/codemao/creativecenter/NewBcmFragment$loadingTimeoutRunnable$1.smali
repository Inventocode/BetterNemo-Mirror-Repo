.class final Lcom/codemao/creativecenter/NewBcmFragment$loadingTimeoutRunnable$1;
.super Ljava/lang/Object;
.source "NewBcmFragment.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/NewBcmFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/NewBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/NewBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/NewBcmFragment$loadingTimeoutRunnable$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    .line 741
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$loadingTimeoutRunnable$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    invoke-static {v0}, Lcom/codemao/creativecenter/NewBcmFragment;->access$isLoadFinish$p(Lcom/codemao/creativecenter/NewBcmFragment;)Z

    move-result v0

    if-nez v0, :cond_14

    .line 742
    iget-object v0, p0, Lcom/codemao/creativecenter/NewBcmFragment$loadingTimeoutRunnable$1;->this$0:Lcom/codemao/creativecenter/NewBcmFragment;

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Load time out."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/NewBcmFragment;->onLoadBcmError(Ljava/lang/Exception;)V

    :cond_14
    return-void
.end method
