.class final Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CppToolsManagerLoadWork.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.codemao.toolssdk.cpp.manager.CppToolsManagerLoadWork$loadUrl$1$1$1"
    f = "CppToolsManagerLoadWork.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->$url:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 5
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

    new-instance p1, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->$url:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 129
    iget v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->label:I

    if-nez v0, :cond_39

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 130
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->$url:Ljava/lang/String;

    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFinalUrl(Ljava/lang/String;)V

    .line 131
    :cond_17
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->$url:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->managerLoadUrl(Ljava/lang/String;)V

    .line 132
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;->$url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 133
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 129
    :cond_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
