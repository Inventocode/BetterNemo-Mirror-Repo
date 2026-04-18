.class public Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;
.super Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilder;
.source "WoodToolsManager.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nWoodToolsManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 WoodToolsManager.kt\ncom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,362:1\n1#2:363\n*E\n"
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 284
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilder;-><init>()V

    return-void
.end method

.method private final pythonBuild(Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilder;Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 3

    .line 322
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getUserAgentPython()Ljava/lang/String;

    move-result-object p1

    .line 323
    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->bindUserAgentPython(Ljava/lang/String;)V

    .line 324
    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerLoadWork;->isWorkTypePython()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 325
    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->initPythonManager()V

    .line 335
    :cond_10
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;->setPythonUploadConfig(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    return-void
.end method

.method private final setPythonUploadConfig(Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V
    .registers 5

    .line 339
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getInterceptors()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getProjectName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getBaseUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 340
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "为manager设置上传参数"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 341
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getInterceptors()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getProjectName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getBaseUrl()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1, v0, v1, v2}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->setUploadConfigPython(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V

    :cond_31
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;
    .registers 2

    .line 284
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;->build()Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    move-result-object v0

    return-object v0
.end method

.method public build()Lcom/codemao/toolssdk/evolving/CMToolsManager2;
    .registers 5

    .line 292
    new-instance v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/CMToolsManager2;-><init>()V

    .line 293
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getToolsWebView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setWRCppView$toolssdk_release(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    .line 294
    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1, v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->setToolsManager(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V

    .line 295
    :cond_15
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getSessionListener()Lcom/codemao/toolssdk/view/CMToolSessionListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setSessionListener(Lcom/codemao/toolssdk/view/CMToolSessionListener;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    .line 296
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getOrientationListener()Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setOrientationListener(Lcom/codemao/toolssdk/view/CMToolsOrientationChangeListener;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    .line 297
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->isEnabledSafeAreaTopBarHeight()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->enableSafeAreaTopBarHeight(Z)V

    .line 298
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V

    .line 299
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 300
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setCookieData(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)V

    .line 301
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getCameraCloseCallback()Lkotlin/jvm/functions/Function0;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V

    .line 302
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getCameraPrepareListener()Lkotlin/jvm/functions/Function1;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    .line 303
    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getUserData()Lcom/codemao/toolssdk/model/dsbridge/UserData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;)V

    .line 304
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->setToolsData(Lcom/codemao/toolssdk/model/dsbridge/ToolsData;)V

    .line 305
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getCookieData()Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->setCookieData(Lcom/codemao/toolssdk/model/dsbridge/CppCookieData;)V

    .line 306
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_6d

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->initConfig(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    .line 307
    :cond_6d
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_83

    .line 310
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 311
    sget-object v2, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-static {v1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->isPad(Landroid/content/Context;)Z

    move-result v3

    invoke-virtual {v2, v1, v3}, Lcom/codemao/toolssdk/func/logevent/ToolSDKLogEventUtils;->setCommonProperties(Landroid/content/Context;Z)V

    .line 313
    :cond_83
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilderBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/manager/business/CppToolsManagerBusiness;->setEnterFrom(Ljava/lang/String;)V

    .line 314
    invoke-direct {p0, p0, v0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;->pythonBuild(Lcom/codemao/toolssdk/cpp/manager/builder/WoodToolsManagerBuilder;Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;)V

    return-object v0
.end method

.method public build2()Lcom/codemao/toolssdk/evolving/CMToolsManager2;
    .registers 3

    .line 287
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "tool sdk build2"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Builder;->build()Lcom/codemao/toolssdk/evolving/CMToolsManager2;

    move-result-object v0

    return-object v0
.end method
