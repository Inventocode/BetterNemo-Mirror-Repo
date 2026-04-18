.class public final Lcom/codemao/toolssdk/permissionx/request/RequestChain;
.super Ljava/lang/Object;
.source "RequestChain.kt"


# instance fields
.field private headTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;

.field private tailTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addTaskToChain$toolssdk_release(Lcom/codemao/toolssdk/permissionx/request/BaseTask;)V
    .registers 3

    const-string v0, "task"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->headTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;

    if-nez v0, :cond_b

    .line 40
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->headTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;

    .line 43
    :cond_b
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->tailTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;

    if-nez v0, :cond_10

    goto :goto_12

    :cond_10
    iput-object p1, v0, Lcom/codemao/toolssdk/permissionx/request/BaseTask;->next:Lcom/codemao/toolssdk/permissionx/request/ChainTask;

    .line 44
    :goto_12
    iput-object p1, p0, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->tailTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;

    return-void
.end method

.method public final runTask$toolssdk_release()V
    .registers 2

    .line 51
    iget-object v0, p0, Lcom/codemao/toolssdk/permissionx/request/RequestChain;->headTask:Lcom/codemao/toolssdk/permissionx/request/BaseTask;

    if-eqz v0, :cond_7

    invoke-interface {v0}, Lcom/codemao/toolssdk/permissionx/request/ChainTask;->request()V

    :cond_7
    return-void
.end method
