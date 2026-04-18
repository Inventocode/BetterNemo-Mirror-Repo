.class final Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CTRokiWebBizFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.codemao.toolssdk.fragment.roki.CTRokiWebBizFragment$Companion$addMaterials$1$4"
    f = "CTRokiWebBizFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $isActors:Z

.field final synthetic $url:Ljava/lang/String;

.field label:I


# direct methods
.method constructor <init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$isActors:Z

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$url:Ljava/lang/String;

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

    new-instance p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;

    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$isActors:Z

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$url:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    .line 47
    iget v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->label:I

    if-nez v0, :cond_34

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 48
    iget-boolean p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$isActors:Z

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_18

    new-array v3, v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$url:Ljava/lang/String;

    aput-object v4, v3, v0

    goto :goto_19

    :cond_18
    move-object v3, v2

    :goto_19
    if-eqz p1, :cond_1c

    goto :goto_22

    :cond_1c
    new-array v2, v1, [Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;->$url:Ljava/lang/String;

    aput-object p1, v2, v0

    .line 50
    :goto_22
    sget-object p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->getTestManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_31

    sget-object v0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4$1;->INSTANCE:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4$1;

    sget-object v1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4$2;->INSTANCE:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4$2;

    invoke-virtual {p1, v3, v2, v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->addMaterials([Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    .line 55
    :cond_31
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1

    .line 47
    :cond_34
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
