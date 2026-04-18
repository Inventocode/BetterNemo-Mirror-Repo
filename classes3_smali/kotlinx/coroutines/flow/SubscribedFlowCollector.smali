.class public final Lkotlinx/coroutines/flow/SubscribedFlowCollector;
.super Ljava/lang/Object;
.source "Share.kt"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lkotlinx/coroutines/flow/FlowCollector<",
        "TT;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nShare.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n+ 2 CoroutineScope.kt\nkotlinx/coroutines/CoroutineScopeKt\n*L\n1#1,417:1\n329#2:418\n*S KotlinDebug\n*F\n+ 1 Share.kt\nkotlinx/coroutines/flow/SubscribedFlowCollector\n*L\n408#1:418\n*E\n"
.end annotation


# instance fields
.field private final action:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "-TT;>;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final collector:Lkotlinx/coroutines/flow/FlowCollector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/FlowCollector<",
            "TT;>;"
        }
    .end annotation
.end field


# virtual methods
.method public emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    iget-object v0, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->collector:Lkotlinx/coroutines/flow/FlowCollector;

    invoke-interface {v0, p1, p2}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;

    iget v1, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;-><init>(Lkotlinx/coroutines/flow/SubscribedFlowCollector;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 407
    iget v2, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_42

    if-eq v2, v4, :cond_34

    if-ne v2, v3, :cond_2c

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_7a

    .line 415
    :cond_2c
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 407
    :cond_34
    iget-object v2, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/flow/internal/SafeCollector;

    iget-object v4, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->L$0:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    :try_start_3c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_3f
    .catchall {:try_start_3c .. :try_end_3f} :catchall_40

    goto :goto_61

    :catchall_40
    move-exception p1

    goto :goto_82

    :cond_42
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 408
    iget-object p1, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->collector:Lkotlinx/coroutines/flow/FlowCollector;

    .line 329
    invoke-interface {v0}, Lkotlin/coroutines/Continuation;->getContext()Lkotlin/coroutines/CoroutineContext;

    move-result-object v2

    .line 408
    new-instance v5, Lkotlinx/coroutines/flow/internal/SafeCollector;

    invoke-direct {v5, p1, v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/CoroutineContext;)V

    .line 410
    :try_start_50
    iget-object p1, p0, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->action:Lkotlin/jvm/functions/Function2;

    iput-object p0, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->L$1:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->label:I

    invoke-interface {p1, v5, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_5c
    .catchall {:try_start_50 .. :try_end_5c} :catchall_80

    if-ne p1, v1, :cond_5f

    return-object v1

    :cond_5f
    move-object v4, p0

    move-object v2, v5

    .line 412
    :goto_61
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    .line 414
    iget-object p1, v4, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->collector:Lkotlinx/coroutines/flow/FlowCollector;

    instance-of v2, p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    if-eqz v2, :cond_7d

    check-cast p1, Lkotlinx/coroutines/flow/SubscribedFlowCollector;

    const/4 v2, 0x0

    iput-object v2, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/flow/SubscribedFlowCollector$onSubscription$1;->label:I

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/flow/SubscribedFlowCollector;->onSubscription(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7a

    return-object v1

    .line 415
    :cond_7a
    :goto_7a
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :cond_7d
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    :catchall_80
    move-exception p1

    move-object v2, v5

    .line 412
    :goto_82
    invoke-virtual {v2}, Lkotlinx/coroutines/flow/internal/SafeCollector;->releaseIntercepted()V

    throw p1
.end method
