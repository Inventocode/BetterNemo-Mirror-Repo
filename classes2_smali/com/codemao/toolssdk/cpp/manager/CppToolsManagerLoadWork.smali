.class public abstract Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;
.super Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;
.source "CppToolsManagerLoadWork.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCppToolsManagerLoadWork.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CppToolsManagerLoadWork.kt\ncom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,250:1\n1#2:251\n*E\n"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$fth9olY3VvP9LUnF-tgZY5fjh4c(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    invoke-static/range {p0 .. p9}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->loadUrl$lambda$1(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;-><init>()V

    return-void
.end method

.method public static final synthetic access$addTokenToCookie(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 19
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->addTokenToCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private final addTokenToCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 9

    .line 52
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    .line 54
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v0

    const/4 v1, 0x1

    .line 55
    invoke-virtual {v0, v1}, Landroid/webkit/CookieManager;->setAcceptCookie(Z)V

    .line 57
    sget-object v1, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    sget-object v2, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getEnvMode()Lcom/codemao/toolssdk/manager/CMTEnvMode;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->getCommonPrefix(Lcom/codemao/toolssdk/manager/CMTEnvMode;)Ljava/lang/String;

    move-result-object v1

    .line 58
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "authorization"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 59
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_86

    .line 60
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_31
    .catchall {:try_start_0 .. :try_end_31} :catchall_ba

    const-string v3, ";Path = /"

    const/16 v4, 0x3d

    if-eqz v2, :cond_50

    .line 61
    :try_start_37
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_86

    .line 63
    :cond_50
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ";Domain="

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/webkit/CookieManager;->setCookie(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cookie设置domain:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 68
    :cond_86
    :goto_86
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cookie url:"

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Landroid/webkit/CookieManager;->getCookie(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 70
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "获取添加token后的cookie:"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 71
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 52
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_b9
    .catchall {:try_start_37 .. :try_end_b9} :catchall_ba

    goto :goto_c4

    :catchall_ba
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {p1}, Lkotlin/ResultKt;->createFailure(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_c4
    return-void
.end method

.method private static final loadUrl$lambda$1(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 27

    const-string v0, "this$0"

    move-object/from16 v2, p0

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 106
    invoke-virtual/range {p0 .. p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getLifecycleCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    if-eqz v0, :cond_48

    .line 107
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v14

    const/4 v15, 0x0

    new-instance v16, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;

    const/4 v13, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    move-object v12, v0

    invoke-direct/range {v1 .. v13}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$loadUrl$1$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    move-object/from16 p0, v0

    move-object/from16 p1, v14

    move-object/from16 p2, v15

    move-object/from16 p3, v16

    move/from16 p4, v1

    move-object/from16 p5, v2

    invoke-static/range {p0 .. p5}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :cond_48
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 6

    .line 241
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->destroy()V

    .line 242
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    .line 245
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    .line 246
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getLastLoadUrl()Ljava/lang/String;

    move-result-object v2

    const-string v3, "destroy"

    const-string v4, "toolsManager"

    .line 242
    invoke-virtual {v0, v3, v4, v1, v2}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->lifecycle(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public isRunningOfflineMode()Z
    .registers 2

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->isEnableOffline()Z

    move-result v0

    return v0
.end method

.method public isWorkAIKids()Z
    .registers 3

    .line 40
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkAIKids(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWorkTypeCpp()Z
    .registers 3

    .line 28
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkCpp(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWorkTypeKn()Z
    .registers 3

    .line 24
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkKn(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWorkTypePython()Z
    .registers 3

    .line 32
    sget-object v0, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->isWorkPyt(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isWorkTypeSupportOffline()Z
    .registers 3

    .line 44
    sget-object v0, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;->INSTANCE:Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackageUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/module/offlinepackage/CTOfflinePackagePath;->isWorkEnableOffline$toolssdk_release(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public final loadCodeLabProject(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 213
    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadUrl;->getCodeLabUrl(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 214
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p2

    const/4 v0, 0x0

    if-eqz p2, :cond_1a

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v1

    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v1

    goto :goto_17

    :cond_16
    move-object v1, v0

    :goto_17
    invoke-interface {p2, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->setToolType(Ljava/lang/String;)V

    .line 215
    :cond_1a
    sget-object p2, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v1

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getWorkType()Ljava/lang/String;

    move-result-object v1

    goto :goto_28

    :cond_27
    move-object v1, v0

    :goto_28
    invoke-virtual {p2, v1}, Lcom/codemao/toolssdk/utils/CTEnvUrlUtils;->enableCookieToken(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_47

    .line 218
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object p2

    if-eqz p2, :cond_39

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;->getToken()Ljava/lang/String;

    move-result-object p2

    goto :goto_3a

    :cond_39
    move-object p2, v0

    .line 219
    :goto_3a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object v1

    if-eqz v1, :cond_44

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 216
    :cond_44
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->addTokenToCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    :cond_47
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setLastLoadUrl(Ljava/lang/String;)V

    .line 223
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p2

    if-eqz p2, :cond_53

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFinalUrl(Ljava/lang/String;)V

    .line 224
    :cond_53
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method

.method public final loadFullTestUrl(Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    const-string v0, "fullUrl"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 229
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->setToolType(Ljava/lang/String;)V

    :cond_12
    const/4 v0, 0x0

    if-nez p2, :cond_21

    .line 232
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object p2

    if-eqz p2, :cond_20

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;->getToken()Ljava/lang/String;

    move-result-object p2

    goto :goto_21

    :cond_20
    move-object p2, v0

    .line 233
    :cond_21
    :goto_21
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object v1

    if-eqz v1, :cond_2b

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;->getDomain()Ljava/lang/String;

    move-result-object v0

    .line 230
    :cond_2b
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->addTokenToCookie(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setLastLoadUrl(Ljava/lang/String;)V

    .line 236
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object p2

    if-eqz p2, :cond_3a

    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFinalUrl(Ljava/lang/String;)V

    .line 237
    :cond_3a
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "final_url:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 16

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0x1f0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    .line 79
    invoke-static/range {v0 .. v11}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork$DefaultImpls;->loadUrl$default(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V
    .registers 23

    .line 102
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_f

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->logEventTimeEnd(Ljava/lang/String;)V

    .line 103
    :cond_f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getURL_INIT_DURATION()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->logEventTimeStart(Ljava/lang/String;)V

    .line 104
    :cond_1e
    sget-object v0, Lcom/codemao/toolssdk/manager/WebViewExtManager;->INSTANCE:Lcom/codemao/toolssdk/manager/WebViewExtManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/WebViewExtManager;->destroy()V

    .line 105
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_49

    new-instance v12, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$$ExternalSyntheticLambda0;

    move-object v1, v12

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p7

    move-object/from16 v10, p8

    move-object/from16 v11, p9

    invoke-direct/range {v1 .. v11}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/codemao/toolssdk/manager/StageType;Lcom/codemao/toolssdk/manager/PlayerType;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_49
    return-void
.end method
