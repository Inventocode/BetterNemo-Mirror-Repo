.class public Lcom/sdk/d/c$b;
.super Ljava/util/concurrent/FutureTask;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sdk/d/c;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask<",
        "TResult;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/sdk/d/c;


# direct methods
.method public constructor <init>(Lcom/sdk/d/c;Ljava/util/concurrent/Callable;)V
    .registers 3

    iput-object p1, p0, Lcom/sdk/d/c$b;->a:Lcom/sdk/d/c;

    invoke-direct {p0, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    return-void
.end method


# virtual methods
.method public done()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/sdk/d/c$b;->a:Lcom/sdk/d/c;

    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, v0, Lcom/sdk/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-virtual {v0, v1}, Lcom/sdk/d/c;->a(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_2e

    :catch_12
    move-exception v0

    iget-object v1, p0, Lcom/sdk/d/c$b;->a:Lcom/sdk/d/c;

    const/4 v2, 0x0

    iget-object v3, v1, Lcom/sdk/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-nez v3, :cond_21

    invoke-virtual {v1, v2}, Lcom/sdk/d/c;->a(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_21
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/sdk/d/c$b;->a:Lcom/sdk/d/c;

    iget-object v1, v1, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    const-string v2, "PriorityAsyncTask"

    invoke-static {v2, v0, v1}, Lcom/sdk/n/b;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;)I

    :cond_2e
    :goto_2e
    return-void
.end method
