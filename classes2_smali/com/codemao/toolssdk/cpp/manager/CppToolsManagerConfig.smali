.class public abstract Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;
.super Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;
.source "CppToolsManagerConfig.kt"


# direct methods
.method public static synthetic $r8$lambda$X4O2i6c9P8JLJu2nXOfUnS5MzXo(Landroid/content/Context;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->clearImageCacheDirs$lambda$2(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;-><init>()V

    return-void
.end method

.method private final clearImageCacheDirs(Landroid/content/Context;)V
    .registers 3

    .line 93
    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$$ExternalSyntheticLambda0;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$$ExternalSyntheticLambda0;-><init>(Landroid/content/Context;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsThreadPoolUtil;->post(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static final clearImageCacheDirs$lambda$2(Landroid/content/Context;)V
    .registers 2

    const-string v0, "$context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 95
    :try_start_5
    invoke-static {p0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->getImageCacheDir(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 96
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/codemao/toolssdk/image_selector/utils/FileUtils;->deleteFile(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_11} :catch_12

    goto :goto_16

    :catch_12
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_16
    return-void
.end method


# virtual methods
.method public destroy()V
    .registers 3

    .line 78
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发cppManagerDestroy"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    .line 79
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->onDestroy(Landroid/content/Context;)V

    .line 80
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_1b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->onDestroy()V

    .line 81
    :cond_1b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroyWRContext()V

    .line 82
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroyActivityResultCallback()V

    .line 83
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroyMainHandler()V

    .line 84
    sget-object v0, Lcom/codemao/toolssdk/manager/PermissionManager;->INSTANCE:Lcom/codemao/toolssdk/manager/PermissionManager;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/PermissionManager;->destroy()V

    .line 85
    invoke-static {}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->destroy()V

    .line 86
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroyCppView()V

    .line 87
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroySessionListener()V

    .line 88
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->destroyOrientationChangeListener()V

    const/4 v0, 0x0

    .line 89
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setLastLoadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;
    .registers 2

    .line 108
    new-instance v0, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$getLifecycleObserver$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;)V

    return-object v0
.end method

.method public initConfig(Landroid/content/Context;)Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->setWRContext(Landroid/content/Context;)V

    .line 35
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->initFields()V

    .line 36
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig;->clearImageCacheDirs(Landroid/content/Context;)V

    .line 37
    sget-object v0, Lcom/codemao/toolssdk/evolving/CMToolsManager2;->Companion:Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/CMToolsManager2$Companion;->setAppVersionCode(Ljava/lang/String;)V

    .line 38
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->getVersionCode(Landroid/content/Context;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->setAppVersionCode(Ljava/lang/String;)V

    .line 39
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->initAndroidId(Landroid/content/Context;)V

    .line 40
    sget-object v0, Lcom/codemao/toolssdk/manager/FileCachePathManager;->INSTANCE:Lcom/codemao/toolssdk/manager/FileCachePathManager;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/manager/FileCachePathManager;->initFilePath(Landroid/content/Context;)V

    .line 41
    invoke-static {p1}, Lcom/codemao/toolssdk/utils/HttpProxyCacheUtil;->init(Landroid/content/Context;)V

    return-object p0
.end method

.method public onPause()V
    .registers 1

    return-void
.end method

.method public onResume()V
    .registers 5

    .line 59
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v1

    if-eqz v1, :cond_d

    .line 62
    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->onResume()V

    .line 64
    :cond_d
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_16

    .line 65
    check-cast v0, Landroid/app/Activity;

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 67
    :cond_16
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "执行ToolsWebView的onResume"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dSDK(Ljava/lang/String;)V

    .line 68
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/LifecycleEvent;

    const/4 v1, 0x2

    const-string v2, "resume"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1, v3}, Lcom/codemao/toolssdk/model/dsbridge/LifecycleEvent;-><init>(Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sget-object v1, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerConfig$onResume$2;

    const-string v2, "appLifecycle"

    invoke-interface {p0, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->applicationPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 51
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_10

    .line 53
    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentView()Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->hideSoftInput(Landroid/view/View;)V

    .line 54
    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->onStop()V

    :cond_10
    return-void
.end method
