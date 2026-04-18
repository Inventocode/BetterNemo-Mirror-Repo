.class public abstract Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;
.super Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerUserData;
.source "CppToolsManagerLoadUrl.kt"


# instance fields
.field private isEnableOffline:Z

.field private workType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerUserData;-><init>()V

    return-void
.end method

.method public static final synthetic access$getLoadFrom(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getLoadFrom(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method private final addKnParams(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 8

    const-string p4, "appId"

    .line 106
    invoke-direct {p0, p1, p4, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "signature"

    .line 107
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    if-eqz p5, :cond_1a

    .line 108
    invoke-virtual {p5}, Lcom/codemao/toolssdk/manager/StageType;->getType()I

    move-result p3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_1b

    :cond_1a
    move-object p3, p2

    :goto_1b
    const-string p4, "stageType"

    invoke-direct {p0, p1, p4, p3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p6, :cond_2e

    .line 109
    invoke-virtual {p6}, Lcom/codemao/toolssdk/manager/PlayerType;->getType()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_2e
    const-string p3, "playerType"

    invoke-direct {p0, p1, p3, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "toolMode"

    .line 110
    invoke-direct {p0, p1, p2, p7}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    invoke-interface {p0, p6}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->setPlayerType(Lcom/codemao/toolssdk/manager/PlayerType;)V

    return-object p1
.end method

.method static synthetic addKnParams$default(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri$Builder;
    .registers 19

    if-nez p9, :cond_2e

    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    const/4 v5, 0x0

    goto :goto_a

    :cond_9
    move v5, p4

    :goto_a
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_11

    const/4 v0, 0x0

    move-object v6, v0

    goto :goto_12

    :cond_11
    move-object v6, p5

    :goto_12
    and-int/lit8 v0, p8, 0x20

    if-eqz v0, :cond_1a

    .line 103
    sget-object v0, Lcom/codemao/toolssdk/manager/PlayerType;->Share:Lcom/codemao/toolssdk/manager/PlayerType;

    move-object v7, v0

    goto :goto_1b

    :cond_1a
    move-object v7, p6

    :goto_1b
    and-int/lit8 v0, p8, 0x40

    if-eqz v0, :cond_23

    const-string v0, "normal"

    move-object v8, v0

    goto :goto_25

    :cond_23
    move-object/from16 v8, p7

    :goto_25
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    .line 97
    invoke-direct/range {v1 .. v8}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->addKnParams(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    return-object v0

    :cond_2e
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Super calls with default arguments not supported in this target, function: addKnParams"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private final appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    if-eqz p3, :cond_b

    .line 86
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    if-nez v0, :cond_11

    .line 87
    invoke-virtual {p1, p2, p3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_11
    return-void
.end method

.method private final appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri$Builder;",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_9

    .line 92
    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    if-eqz v0, :cond_1b

    .line 93
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, v0, p2}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    :cond_1b
    return-void
.end method

.method private final getActionParameter(Z)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    new-instance v0, Lkotlin/Pair;

    if-eqz p1, :cond_7

    const-string p1, "new_work"

    goto :goto_9

    :cond_7
    const-string p1, "load_work"

    :goto_9
    const-string v1, "action"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getApiEnvParameter()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 73
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getKnQueryEnv(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;

    move-result-object v0

    .line 74
    new-instance v1, Lkotlin/Pair;

    const-string v2, "api_env"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final getCommonUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
    .registers 8

    .line 124
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    .line 125
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->workIdIsEmpty(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_20

    .line 126
    sget-object p2, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object p3

    if-eqz p3, :cond_18

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v2

    :cond_18
    invoke-virtual {p2, v2}, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->getWorkIdKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 127
    invoke-direct {p0, v0, p2, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_20
    const/4 p1, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_2d

    .line 128
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2b

    goto :goto_2d

    :cond_2b
    const/4 v3, 0x0

    goto :goto_2e

    :cond_2d
    :goto_2d
    const/4 v3, 0x1

    :goto_2e
    if-nez v3, :cond_44

    .line 129
    sget-object p1, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object p3

    if-eqz p3, :cond_3c

    invoke-virtual {p3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v2

    :cond_3c
    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->getFileUrlKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 130
    invoke-direct {p0, v0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_62

    :cond_44
    if-eqz p3, :cond_4c

    .line 131
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-nez p2, :cond_4d

    :cond_4c
    const/4 p1, 0x1

    :cond_4d
    if-nez p1, :cond_62

    .line 132
    sget-object p1, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object p2

    if-eqz p2, :cond_5b

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v2

    :cond_5b
    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/cpp/util/CTLoadUrlParamsUtils;->getCourseUrlKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 133
    invoke-direct {p0, v0, p1, p3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_62
    :goto_62
    return-object v0
.end method

.method private final getEnvUrl()Ljava/lang/String;
    .registers 5

    .line 26
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    .line 27
    :goto_c
    sget-object v1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v1

    .line 28
    sget-object v2, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/manager/test/WoodToolsManagerTest;->getTestLocalHost()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_23

    .line 29
    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_21

    goto :goto_23

    :cond_21
    const/4 v3, 0x0

    goto :goto_24

    :cond_23
    :goto_23
    const/4 v3, 0x1

    :goto_24
    if-eqz v3, :cond_2d

    .line 30
    sget-object v2, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {v2, v1, v0}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getWorkTypeUrl(Lcom/codemao/toolssdk/manager/CMTEnvMode;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    return-object v2
.end method

.method private final getLoadFrom(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;

    if-eqz v0, :cond_13

    move-object v0, p1

    check-cast v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;

    iget v1, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_13

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->label:I

    goto :goto_18

    :cond_13
    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Lkotlin/coroutines/Continuation;)V

    :goto_18
    iget-object p1, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v1

    .line 286
    iget v2, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v2, :cond_3f

    if-ne v2, v5, :cond_37

    iget-object v1, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    iget-object v2, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlin/Pair;

    iget-object v0, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;

    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    goto :goto_a0

    :cond_37
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_3f
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p1

    if-eqz p1, :cond_5d

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getLifecycleCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v6

    if-eqz v6, :cond_5d

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v7

    const/4 v8, 0x0

    new-instance v9, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$2;

    invoke-direct {v9, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$2;-><init>(Lkotlin/coroutines/Continuation;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    .line 290
    :cond_5d
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->localAllRight()Lkotlin/Pair;

    move-result-object v2

    .line 291
    invoke-virtual {v2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-nez p1, :cond_81

    .line 292
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkTypeSupportOffline()Z

    move-result p1

    if-eqz p1, :cond_7c

    .line 293
    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, v3, v4, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->reportEnableOffline(ZLcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Ljava/lang/String;)V

    .line 295
    :cond_7c
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getEnvUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 297
    :cond_81
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_89

    const-string p1, ""

    .line 298
    :cond_89
    sget-object v6, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-virtual {v6, p1}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getPackageInfoFormMemory$toolssdk_release(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;

    move-result-object v7

    .line 299
    iput-object p0, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->L$0:Ljava/lang/Object;

    iput-object v2, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->L$1:Ljava/lang/Object;

    iput-object v7, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->L$2:Ljava/lang/Object;

    iput v5, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadFrom$1;->label:I

    invoke-virtual {v6, p1, v7, v0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->packageInfoRight$toolssdk_release(Ljava/lang/String;Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_9e

    return-object v1

    :cond_9e
    move-object v0, p0

    move-object v1, v7

    .line 286
    :goto_a0
    check-cast p1, Lkotlin/Pair;

    .line 300
    sget-object v6, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "判断远程离线包信息是否可用："

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 301
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_e9

    .line 302
    invoke-direct {v0, v5, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->reportEnableOffline(ZLcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Ljava/lang/String;)V

    .line 303
    iput-boolean v5, v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->isEnableOffline:Z

    .line 304
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "file:///"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 306
    :cond_e9
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-direct {v0, v3, v1, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->reportEnableOffline(ZLcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Ljava/lang/String;)V

    .line 307
    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getEnvUrl()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getMiaoCodeParameter(Ljava/lang/String;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 82
    new-instance v0, Lkotlin/Pair;

    const-string v1, "miaoCode"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method private final getProjectCodeParameter(Ljava/lang/String;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 65
    new-instance v0, Lkotlin/Pair;

    const-string v1, "projectCode"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getProjectIdParameter(Ljava/lang/String;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 69
    new-instance v0, Lkotlin/Pair;

    const-string v1, "projectId"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getStartTimeParameter()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 57
    new-instance v0, Lkotlin/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "start_time"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getTemplateIdParameter(Ljava/lang/String;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 78
    new-instance v0, Lkotlin/Pair;

    const-string v1, "sampleId"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method private final getTokenParameter()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 41
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserToken()Ljava/lang/String;

    move-result-object v1

    const-string v2, "token"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getToolTypeParameter()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 45
    new-instance v0, Lkotlin/Pair;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v1

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v1

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const-string v2, "toolType"

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private final getWorkNameParameter(Ljava/lang/String;)Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 53
    new-instance v0, Lkotlin/Pair;

    const-string v1, "work_name"

    invoke-direct {v0, v1, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return-object v0
.end method

.method private final getWorkTypeParameter()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->workType:Ljava/lang/String;

    if-eqz v0, :cond_c

    new-instance v1, Lkotlin/Pair;

    const-string v2, "work_type"

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return-object v1
.end method

.method private final isCreateNewWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 4

    if-nez p1, :cond_8

    if-nez p2, :cond_8

    if-nez p3, :cond_8

    const/4 p1, 0x1

    goto :goto_9

    :cond_8
    const/4 p1, 0x0

    :goto_9
    return p1
.end method

.method private final isWood3CommonParameters()Z
    .registers 2

    .line 37
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkTypeCpp()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkTypePython()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method private final localAllRight()Lkotlin/Pair;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 263
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkTypeSupportOffline()Z

    move-result v0

    .line 264
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 265
    iput-boolean v2, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->isEnableOffline:Z

    if-nez v1, :cond_17

    .line 267
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "没有toolType"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    :cond_17
    if-nez v0, :cond_23

    .line 270
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "当前toolType不支持离线模式"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 272
    :cond_23
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->isUserEnableOnline()Z

    move-result v2

    if-eqz v2, :cond_3a

    .line 273
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "用户手动开启了在线模式"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 274
    new-instance v0, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, v2, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 276
    :cond_3a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v2

    if-nez v2, :cond_42

    const/4 v0, 0x0

    goto :goto_46

    .line 278
    :cond_42
    invoke-virtual {v0, v2, v1}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->getIndexHtmlPath$toolssdk_release(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_46
    if-nez v0, :cond_59

    .line 280
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "离线包index文件不存在"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dOffline(Ljava/lang/String;)V

    .line 281
    new-instance v0, Lkotlin/Pair;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v2, "本地离线包不存在"

    invoke-direct {v0, v1, v2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 283
    :cond_59
    new-instance v1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v1, v2, v0}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method private final reportEnableOffline(ZLcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;Ljava/lang/String;)V
    .registers 13

    .line 316
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_8

    const-string v0, ""

    :cond_8
    move-object v3, v0

    .line 317
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-virtual {v0, v3}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageCache;->getCacheNewestVersion(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    .line 318
    sget-object v1, Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;

    .line 321
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz p2, :cond_20

    .line 322
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->getVersion()Ljava/lang/String;

    move-result-object v5

    goto :goto_21

    :cond_20
    move-object v5, v2

    .line 323
    :goto_21
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Ljava/lang/String;

    if-eqz p2, :cond_30

    .line 324
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/offlinepackage/OfflinePackageEnable;->getMd5()Ljava/lang/String;

    move-result-object p2

    move-object v7, p2

    goto :goto_31

    :cond_30
    move-object v7, v2

    :goto_31
    move v2, p1

    move-object v8, p3

    .line 318
    invoke-virtual/range {v1 .. v8}, Lcom/codemao/toolssdk/func/logevent/OfflineLogEventUtils;->enable(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final workIdIsEmpty(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_d

    .line 116
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-nez v2, :cond_b

    goto :goto_d

    :cond_b
    const/4 v2, 0x0

    goto :goto_e

    :cond_d
    :goto_d
    const/4 v2, 0x1

    :goto_e
    if-nez v2, :cond_18

    const-string v2, "-1"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_19

    :cond_18
    const/4 v0, 0x1

    :cond_19
    return v0
.end method


# virtual methods
.method public destroy()V
    .registers 1

    .line 330
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->destroy()V

    return-void
.end method

.method protected final getCodeLabUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    .line 250
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "codelab,当前toolType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 251
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_2c

    .line 252
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_2a

    goto :goto_2c

    :cond_2a
    const/4 v3, 0x0

    goto :goto_2d

    :cond_2c
    :goto_2c
    const/4 v3, 0x1

    :goto_2d
    if-nez v3, :cond_37

    .line 253
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getProjectCodeParameter(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    goto :goto_49

    :cond_37
    if-eqz p2, :cond_3f

    .line 254
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_40

    :cond_3f
    const/4 v1, 0x1

    :cond_40
    if-nez v1, :cond_49

    .line 255
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getProjectIdParameter(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 257
    :cond_49
    :goto_49
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getToolTypeParameter()Lkotlin/Pair;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 258
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getStartTimeParameter()Lkotlin/Pair;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 259
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getEnvUrl()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final getLoadWorkUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .registers 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Lcom/codemao/toolssdk/manager/StageType;",
            "Lcom/codemao/toolssdk/manager/PlayerType;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p10

    instance-of v3, v2, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;

    if-eqz v3, :cond_19

    move-object v3, v2

    check-cast v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;

    iget v4, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_19

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->label:I

    goto :goto_1e

    :cond_19
    new-instance v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;

    invoke-direct {v3, v0, v2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Lkotlin/coroutines/Continuation;)V

    :goto_1e
    iget-object v2, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/IntrinsicsKt;->getCOROUTINE_SUSPENDED()Ljava/lang/Object;

    move-result-object v4

    .line 207
    iget v5, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->label:I

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_6a

    if-ne v5, v7, :cond_62

    iget-boolean v1, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->Z$0:Z

    iget-object v4, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$8:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    iget-object v5, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$7:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v7, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lcom/codemao/toolssdk/manager/PlayerType;

    iget-object v8, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lcom/codemao/toolssdk/manager/StageType;

    iget-object v9, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/lang/String;

    iget-object v10, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$3:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$2:Ljava/lang/Object;

    check-cast v11, Ljava/lang/String;

    iget-object v12, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v3, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$0:Ljava/lang/Object;

    check-cast v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;

    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    move v13, v1

    move-object/from16 v18, v11

    move-object v11, v5

    move-object/from16 v5, v18

    move-object/from16 v19, v9

    move-object v9, v8

    move-object/from16 v8, v19

    goto/16 :goto_f5

    :cond_62
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6a
    invoke-static {v2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 218
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "拼接url,当前toolType:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 219
    invoke-interface/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkAIKids()Z

    move-result v2

    if-eqz v2, :cond_c2

    const-string v2, "/"

    const/4 v3, 0x0

    if-eqz v1, :cond_9a

    const/4 v4, 0x2

    .line 220
    invoke-static {v1, v2, v3, v4, v6}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v7, :cond_9a

    goto :goto_9b

    :cond_9a
    const/4 v7, 0x0

    :goto_9b
    if-eqz v7, :cond_9f

    const-string v2, ""

    .line 221
    :cond_9f
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getEnvUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "&token="

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getUserToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 223
    :cond_c2
    iput-object v0, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$0:Ljava/lang/Object;

    move-object/from16 v2, p1

    iput-object v2, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$1:Ljava/lang/Object;

    move-object/from16 v5, p2

    iput-object v5, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$2:Ljava/lang/Object;

    iput-object v1, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$3:Ljava/lang/Object;

    move-object/from16 v8, p4

    iput-object v8, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$4:Ljava/lang/Object;

    move-object/from16 v9, p6

    iput-object v9, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$5:Ljava/lang/Object;

    move-object/from16 v10, p7

    iput-object v10, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$6:Ljava/lang/Object;

    move-object/from16 v11, p8

    iput-object v11, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$7:Ljava/lang/Object;

    move-object/from16 v12, p9

    iput-object v12, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->L$8:Ljava/lang/Object;

    move/from16 v13, p5

    iput-boolean v13, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->Z$0:Z

    iput v7, v3, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl$getLoadWorkUrl$1;->label:I

    invoke-direct {v0, v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getLoadFrom(Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_ef

    return-object v4

    :cond_ef
    move-object v7, v10

    move-object v4, v12

    move-object v10, v1

    move-object v12, v2

    move-object v2, v3

    move-object v3, v0

    .line 207
    :goto_f5
    check-cast v2, Ljava/lang/String;

    .line 224
    invoke-direct {v3, v12, v5, v10}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getCommonUriBuilder(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 225
    invoke-interface {v3}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;->isWorkTypeKn()Z

    move-result v14

    if-eqz v14, :cond_14f

    .line 226
    invoke-direct {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getToolTypeParameter()Lkotlin/Pair;

    move-result-object v14

    invoke-direct {v3, v1, v14}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 229
    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v14

    if-eqz v14, :cond_113

    invoke-virtual {v14}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getAppId()Ljava/lang/String;

    move-result-object v14

    goto :goto_114

    :cond_113
    move-object v14, v6

    .line 230
    :goto_114
    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v15

    if-eqz v15, :cond_11e

    invoke-virtual {v15}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getSignature()Ljava/lang/String;

    move-result-object v6

    :cond_11e
    const/4 v15, 0x0

    const/16 v16, 0x40

    const/16 v17, 0x0

    move-object/from16 p1, v3

    move-object/from16 p2, v1

    move-object/from16 p3, v14

    move-object/from16 p4, v6

    move/from16 p5, v13

    move-object/from16 p6, v9

    move-object/from16 p7, v7

    move-object/from16 p8, v15

    move/from16 p9, v16

    move-object/from16 p10, v17

    .line 227
    invoke-static/range {p1 .. p10}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->addKnParams$default(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;Landroid/net/Uri$Builder;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;ILjava/lang/Object;)Landroid/net/Uri$Builder;

    .line 235
    invoke-direct {v3, v11}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getTemplateIdParameter(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v6

    invoke-direct {v3, v1, v6}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 236
    invoke-direct {v3, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getMiaoCodeParameter(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 237
    invoke-direct {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getTokenParameter()Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 239
    :cond_14f
    invoke-direct {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->isWood3CommonParameters()Z

    move-result v4

    if-eqz v4, :cond_167

    .line 240
    invoke-direct {v3, v12, v5, v10}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->isCreateNewWork(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getActionParameter(Z)Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 241
    invoke-direct {v3, v8}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getWorkNameParameter(Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 243
    :cond_167
    invoke-direct {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getStartTimeParameter()Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 244
    invoke-direct {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getApiEnvParameter()Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 245
    invoke-direct {v3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getWorkTypeParameter()Lkotlin/Pair;

    move-result-object v4

    invoke-direct {v3, v1, v4}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->appendUri(Landroid/net/Uri$Builder;Lkotlin/Pair;)V

    .line 246
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected final isEnableOffline()Z
    .registers 2

    .line 21
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->isEnableOffline:Z

    return v0
.end method
