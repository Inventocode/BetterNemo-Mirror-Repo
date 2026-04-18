.class final Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "BindPlatFormAction.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/activity/login/BindPlatFormAction;->onDestroy()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Lkotlinx/coroutines/CoroutineScope;",
        "Lkotlin/coroutines/Continuation<",
        "-",
        "Lkotlin/Unit;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.codemao.nemo.activity.login.BindPlatFormAction$onDestroy$1"
    f = "BindPlatFormAction.kt"
    l = {
        0x9c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/activity/login/BindPlatFormAction;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/Continuation<",
            "*>;)",
            "Lkotlin/coroutines/Continuation<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    new-instance p1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;

    iget-object v0, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-direct {p1, v0, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;-><init>(Lcom/codemao/nemo/activity/login/BindPlatFormAction;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 155
    iget v1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_2b

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 156
    iget-object p1, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->this$0:Lcom/codemao/nemo/activity/login/BindPlatFormAction;

    invoke-static {p1}, Lcom/codemao/nemo/activity/login/BindPlatFormAction;->access$getJob$p(Lcom/codemao/nemo/activity/login/BindPlatFormAction;)Lkotlinx/coroutines/Job;

    move-result-object p1

    if-eqz p1, :cond_2e

    iput v2, p0, Lcom/codemao/nemo/activity/login/BindPlatFormAction$onDestroy$1;->label:I

    invoke-static {p1, p0}, Lkotlinx/coroutines/JobKt;->cancelAndJoin(Lkotlinx/coroutines/Job;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2b

    return-object v0

    :cond_2b
    :goto_2b
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_2f

    :cond_2e
    const/4 p1, 0x0

    :goto_2f
    return-object p1
.end method
