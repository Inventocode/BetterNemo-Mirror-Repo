.class final Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CTRokiWebBaseFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1;->toolLoadDidFinish()V
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
    c = "com.codemao.toolssdk.fragment.roki.CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1"
    f = "CTRokiWebBaseFragment.kt"
    l = {
        0x6e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;Lkotlin/coroutines/Continuation;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

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

    new-instance p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    invoke-direct {p1, v0, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;-><init>(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 109
    iget v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_25

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    const-wide/16 v3, 0x3e8

    .line 110
    iput v2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->label:I

    invoke-static {v3, v4, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_25

    return-object v0

    .line 111
    :cond_25
    :goto_25
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment$getSessionListener$1$toolLoadDidFinish$1;->this$0:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;

    invoke-static {p1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;->access$getSimple$p(Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBaseFragment;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {v2}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3c

    .line 112
    sget-object p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    const-string v0, "https://dev-cdn-common.codemao.cn/dev/952/100A2E4AC34A438AA6F401FD8262E59B/5572.png"

    invoke-virtual {p1, v2, v0}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->addMaterials(ZLjava/lang/String;)V

    .line 114
    :cond_3c
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
