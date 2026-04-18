.class final Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "CppToolsManagerLoadWork.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V
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
    c = "com.codemao.toolssdk.cpp.manager.CppToolsManagerLoadWork$loadUrl$1$1"
    f = "CppToolsManagerLoadWork.kt"
    l = {
        0x6c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $courseUrl:Ljava/lang/String;

.field final synthetic $isInternational:Z

.field final synthetic $miaoCode:Ljava/lang/String;

.field final synthetic $playerType:Lcom/codemao/toolssdk/manager/PlayerType;

.field final synthetic $scope:Lkotlinx/coroutines/CoroutineScope;

.field final synthetic $stageType:Lcom/codemao/toolssdk/manager/StageType;

.field final synthetic $templateId:Ljava/lang/String;

.field final synthetic $workId:Ljava/lang/String;

.field final synthetic $workName:Ljava/lang/String;

.field final synthetic $workUrl:Ljava/lang/String;

.field label:I

.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/codemao/toolssdk/manager/StageType;",
            "Lcom/codemao/toolssdk/manager/PlayerType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlinx/coroutines/CoroutineScope;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workId:Ljava/lang/String;

    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workUrl:Ljava/lang/String;

    iput-object p4, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$courseUrl:Ljava/lang/String;

    iput-object p5, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workName:Ljava/lang/String;

    iput-boolean p6, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$isInternational:Z

    iput-object p7, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$stageType:Lcom/codemao/toolssdk/manager/StageType;

    iput-object p8, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    iput-object p9, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$templateId:Ljava/lang/String;

    iput-object p10, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$miaoCode:Ljava/lang/String;

    iput-object p11, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p12}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .registers 16
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

    new-instance p1, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workId:Ljava/lang/String;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workUrl:Ljava/lang/String;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$courseUrl:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workName:Ljava/lang/String;

    iget-boolean v6, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$isInternational:Z

    iget-object v7, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$stageType:Lcom/codemao/toolssdk/manager/StageType;

    iget-object v8, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    iget-object v9, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$templateId:Ljava/lang/String;

    iget-object v10, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$miaoCode:Ljava/lang/String;

    iget-object v11, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    move-object v0, p1

    move-object v12, p2

    invoke-direct/range {v0 .. v12}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    check-cast p2, Lkotlin/coroutines/Continuation;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->invoke(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

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

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;

    sget-object p2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 14

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v0

    .line 107
    iget v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->label:I

    const/4 v2, 0x1

    if-eqz v1, :cond_17

    if-ne v1, v2, :cond_f

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_39

    :cond_f
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_17
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 108
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    .line 109
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workId:Ljava/lang/String;

    .line 110
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workUrl:Ljava/lang/String;

    .line 111
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$courseUrl:Ljava/lang/String;

    .line 112
    iget-object v5, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$workName:Ljava/lang/String;

    .line 113
    iget-boolean v6, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$isInternational:Z

    .line 114
    iget-object v7, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$stageType:Lcom/codemao/toolssdk/manager/StageType;

    .line 115
    iget-object v8, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$playerType:Lcom/codemao/toolssdk/manager/PlayerType;

    .line 116
    iget-object v9, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$templateId:Ljava/lang/String;

    .line 117
    iget-object v10, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$miaoCode:Ljava/lang/String;

    .line 108
    iput v2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->label:I

    move-object v2, p1

    move-object v11, p0

    invoke-virtual/range {v1 .. v11}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getLoadWorkUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_39

    return-object v0

    .line 107
    :cond_39
    :goto_39
    check-cast p1, Ljava/lang/String;

    .line 119
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_55

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v2

    if-eqz v2, :cond_51

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v2

    goto :goto_52

    :cond_51
    move-object v2, v1

    :goto_52
    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->setToolType(Ljava/lang/String;)V

    .line 120
    :cond_55
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v2

    if-eqz v2, :cond_64

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v2

    goto :goto_65

    :cond_64
    move-object v2, v1

    :goto_65
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->enableCookieToken(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8a

    .line 121
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    .line 123
    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object v2

    if-eqz v2, :cond_78

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;->getToken()Ljava/lang/String;

    move-result-object v2

    goto :goto_79

    :cond_78
    move-object v2, v1

    .line 124
    :goto_79
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object v3

    if-eqz v3, :cond_86

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;->getDomain()Ljava/lang/String;

    move-result-object v3

    goto :goto_87

    :cond_86
    move-object v3, v1

    .line 121
    :goto_87
    invoke-static {v0, p1, v2, v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->access$addTokenToCookie(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    :cond_8a
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setLastLoadUrl(Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_a0

    sget-object v2, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getURL_INIT_DURATION()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->logEventTimeEnd(Ljava/lang/String;)V

    .line 129
    :cond_a0
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->$scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getMain()Lkotlinx/coroutines/MainCoroutineDispatcher;

    move-result-object v4

    const/4 v5, 0x0

    new-instance v6, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;->this$0:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;

    invoke-direct {v6, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 134
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method
