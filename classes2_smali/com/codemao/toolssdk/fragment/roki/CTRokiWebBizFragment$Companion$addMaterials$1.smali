.class final Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CTRokiWebBizFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->addMaterials(ZLjava/lang/String;)V
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
    c = "com.codemao.toolssdk.fragment.roki.CTRokiWebBizFragment$Companion$addMaterials$1"
    f = "CTRokiWebBizFragment.kt"
    l = {
        0x21,
        0x26,
        0x2e,
        0x2f
    }
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
            "Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;",
            ">;)V"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->$isActors:Z

    iput-object p2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->$url:Ljava/lang/String;

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

    new-instance p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;

    iget-boolean v0, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->$isActors:Z

    iget-object v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->$url:Ljava/lang/String;

    invoke-direct {p1, v0, v1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 16

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 24
    iget v1, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->label:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v1, :cond_30

    if-eq v1, v5, :cond_2c

    if-eq v1, v4, :cond_27

    if-eq v1, v3, :cond_22

    if-ne v1, v2, :cond_1a

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_b9

    :cond_1a
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_22
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_a3

    :cond_27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto/16 :goto_98

    :cond_2c
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_6e

    :cond_30
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 25
    sget-object p1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object p1

    .line 26
    sget-object v1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment;->Companion:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion;->getTestManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v7

    if-eqz v7, :cond_63

    if-eqz p1, :cond_49

    .line 27
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getToken()Ljava/lang/String;

    move-result-object v1

    move-object v8, v1

    goto :goto_4a

    :cond_49
    move-object v8, v6

    :goto_4a
    if-eqz p1, :cond_51

    .line 28
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUserId()J

    move-result-wide v9

    goto :goto_53

    :cond_51
    const-wide/16 v9, -0x1

    :goto_53
    if-eqz p1, :cond_5b

    .line 29
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/UserData;->getUsername()Ljava/lang/String;

    move-result-object p1

    move-object v11, p1

    goto :goto_5c

    :cond_5b
    move-object v11, v6

    .line 26
    :goto_5c
    sget-object v12, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$1;->INSTANCE:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$1;

    sget-object v13, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$2;->INSTANCE:Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$2;

    invoke-virtual/range {v7 .. v13}, Lcom/codemao/toolssdk/manager/CMToolsManager;->setUserData(Ljava/lang/String;JLjava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_63
    const-wide/16 v7, 0x3e8

    .line 33
    iput v5, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->label:I

    invoke-static {v7, v8, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6e

    return-object v0

    .line 34
    :cond_6e
    :goto_6e
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 35
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 36
    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/Boxing;->boxBoolean(Z)Ljava/lang/Boolean;

    move-result-object v5

    const-string v7, "runningGuide"

    invoke-virtual {v1, v7, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "guide"

    .line 37
    invoke-virtual {p1, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v1

    new-instance v5, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$3;

    invoke-direct {v5, p1, v6}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$3;-><init>(Ljava/util/HashMap;Lkotlin/coroutines/Continuation;)V

    iput v4, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->label:I

    invoke-static {v1, v5, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_98

    return-object v0

    :cond_98
    :goto_98
    const-wide/16 v4, 0x7d0

    .line 46
    iput v3, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->label:I

    invoke-static {v4, v5, p0}, Lkotlinx/coroutines/DelayKt;->delay(JLkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_a3

    return-object v0

    .line 47
    :cond_a3
    :goto_a3
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object p1

    new-instance v1, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;

    iget-boolean v3, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->$isActors:Z

    iget-object v4, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->$url:Ljava/lang/String;

    invoke-direct {v1, v3, v4, v6}, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1$4;-><init>(ZLjava/lang/String;Lkotlin/coroutines/Continuation;)V

    iput v2, p0, Lcom/codemao/toolssdk/fragment/roki/CTRokiWebBizFragment$Companion$addMaterials$1;->label:I

    invoke-static {p1, v1, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_b9

    return-object v0

    .line 56
    :cond_b9
    :goto_b9
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
