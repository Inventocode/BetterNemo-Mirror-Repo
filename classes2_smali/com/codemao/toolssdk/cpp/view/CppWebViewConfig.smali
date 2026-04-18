.class public abstract Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;
.super Landroid/widget/FrameLayout;
.source "CppWebViewConfig.kt"

# interfaces
.implements Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

.field private static final LOCAL_ASSETS_AIKIDS:Ljava/lang/String;

.field private static final LOCAL_ASSETS_KN:Ljava/lang/String;

.field private static final LOCAL_CACHE_KN_MEDIA:Ljava/lang/String;

.field private static final LOCAL_CACHE_ZIP:Ljava/lang/String;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private chromeClient:Landroid/webkit/WebChromeClient;

.field private isRenderGone:Z

.field private final jsCallTimeoutMills:J

.field private lastUrl:Ljava/lang/String;

.field private lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field private renderGoneListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private scope:Lkotlinx/coroutines/CoroutineScope;

.field private final scopeJob$delegate:Lkotlin/Lazy;

.field private shouldInterceptRequestCallback:Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

.field private webView:Lcom/codemao/toolssdk/dsbridge/DWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    const-string v0, "KN"

    .line 86
    sput-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_ASSETS_KN:Ljava/lang/String;

    const-string v0, "AIKids"

    .line 87
    sput-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_ASSETS_AIKIDS:Ljava/lang/String;

    const-string v0, "cacheZip"

    .line 88
    sput-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_CACHE_ZIP:Ljava/lang/String;

    const-string v0, "cacheKNMedia"

    .line 89
    sput-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_CACHE_KN_MEDIA:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "webViewLog"

    .line 62
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->TAG:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->createWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-wide/32 v0, 0xea60

    .line 66
    iput-wide v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->jsCallTimeoutMills:J

    .line 72
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scopeJob$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 78
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "webViewLog"

    .line 62
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->TAG:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->createWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-wide/32 p1, 0xea60

    .line 66
    iput-wide p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->jsCallTimeoutMills:J

    .line 72
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scopeJob$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "webViewLog"

    .line 62
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->TAG:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->createWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-wide/32 p1, 0xea60

    .line 66
    iput-wide p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->jsCallTimeoutMills:J

    .line 72
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$scopeJob$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scopeJob$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$destroyWebView(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)V
    .registers 1

    .line 60
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->destroyWebView()V

    return-void
.end method

.method public static final synthetic access$getLOCAL_ASSETS_AIKIDS$cp()Ljava/lang/String;
    .registers 1

    .line 60
    sget-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_ASSETS_AIKIDS:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLOCAL_ASSETS_KN$cp()Ljava/lang/String;
    .registers 1

    .line 60
    sget-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_ASSETS_KN:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLOCAL_CACHE_KN_MEDIA$cp()Ljava/lang/String;
    .registers 1

    .line 60
    sget-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_CACHE_KN_MEDIA:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getLOCAL_CACHE_ZIP$cp()Ljava/lang/String;
    .registers 1

    .line 60
    sget-object v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->LOCAL_CACHE_ZIP:Ljava/lang/String;

    return-object v0
.end method

.method public static final synthetic access$getRenderGoneListener$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->renderGoneListener:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getShouldInterceptRequestCallback$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;
    .registers 1

    .line 60
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->shouldInterceptRequestCallback:Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    return-object p0
.end method

.method public static final synthetic access$reportError(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;ZLjava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 60
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->reportError(ZLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final synthetic access$setWebView$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 2

    .line 60
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-void
.end method

.method private final clearWebView()V
    .registers 4

    .line 650
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    .line 651
    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 652
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->destroyLifecycleCoroutineScope()V

    if-eqz v1, :cond_1d

    .line 653
    instance-of v2, v1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_1d

    .line 654
    check-cast v1, Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 655
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "从父布局移除当前DWebView"

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    .line 657
    :cond_1d
    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 659
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 660
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 661
    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 662
    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 663
    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V

    .line 664
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "销毁DWebView"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    return-void
.end method

.method private final destroyLifecycleCoroutineScope()V
    .registers 4

    .line 544
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_14

    .line 545
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "销毁自创建的scope"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 546
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_14

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    :cond_14
    return-void
.end method

.method private final destroyWebView()V
    .registers 2

    .line 641
    :try_start_0
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->removeConfigSdkTimeOutRunnable()V

    .line 642
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->destroyAllJavaScriptObject()V

    .line 643
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->clearWebView()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_a

    goto :goto_e

    :catch_a
    move-exception v0

    .line 645
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_e
    return-void
.end method

.method private final getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 4

    .line 617
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_8

    .line 615
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    return-object v0

    .line 617
    :cond_8
    monitor-enter p0

    .line 618
    :try_start_9
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-nez v0, :cond_37

    .line 619
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getScopeJob()Lkotlinx/coroutines/CompletableJob;

    move-result-object v1

    invoke-virtual {v0, v1}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 620
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "创建自己的scope："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 622
    :cond_37
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V
    :try_end_3c
    .catchall {:try_start_9 .. :try_end_3c} :catchall_3e

    monitor-exit p0

    return-object v0

    :catchall_3e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private final getScopeJob()Lkotlinx/coroutines/CompletableJob;
    .registers 2

    .line 72
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scopeJob$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlinx/coroutines/CompletableJob;

    return-object v0
.end method

.method private final removeViewLifecycleOwner()V
    .registers 5

    .line 526
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "移除lifecycleOwner："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_18

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerConfig;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v2

    goto :goto_19

    :cond_18
    move-object v2, v3

    :goto_19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 527
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_3e

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerConfig;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 528
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_3e

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->removeObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 530
    :cond_3e
    iput-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-void
.end method

.method private final reportError(ZLjava/lang/String;Ljava/lang/String;)V
    .registers 6

    const/4 v0, 0x3

    new-array v0, v0, [Lkotlin/Pair;

    .line 628
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v1, "is_main_frame"

    invoke-static {v1, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "error_url"

    .line 629
    invoke-static {p1, p2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x1

    aput-object p1, v0, p2

    .line 630
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewWork;->isLoadSucceed()Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string p2, "is_load_succeed"

    invoke-static {p2, p1}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object p1

    const/4 p2, 0x2

    aput-object p1, v0, p2

    .line 627
    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    .line 632
    sget-object p2, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    .line 633
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v0

    .line 634
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getEnterFrom()Ljava/lang/String;

    move-result-object v1

    .line 632
    invoke-virtual {p2, v0, v1, p3, p1}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->clientReceiveError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public createWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 3

    .line 199
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public abstract synthetic getAgentCacheDir()Ljava/lang/String;
.end method

.method public getChromeClient()Landroid/webkit/WebChromeClient;
    .registers 2

    .line 610
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->chromeClient:Landroid/webkit/WebChromeClient;

    return-object v0
.end method

.method public getCurrentView()Landroid/view/View;
    .registers 1

    return-object p0
.end method

.method public getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 2

    .line 555
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-object v0
.end method

.method public getDefaultUA()Ljava/lang/String;
    .registers 3

    .line 559
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getDefaultUserAgent(context)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract synthetic getEnterFrom()Ljava/lang/String;
.end method

.method public getFragmentActivity()Landroidx/fragment/app/FragmentActivity;
    .registers 3

    .line 506
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getViewActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v1, v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_b

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public abstract synthetic getGson()Lcom/google/gson/Gson;
.end method

.method public abstract synthetic getHeaderToken()Ljava/lang/String;
.end method

.method public final getJsCallTimeoutMills()J
    .registers 3

    .line 602
    iget-wide v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->jsCallTimeoutMills:J

    return-wide v0
.end method

.method public abstract synthetic getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;
.end method

.method public getLastUrl()Ljava/lang/String;
    .registers 2

    .line 486
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->lastUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getLifecycleCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
    .registers 5

    .line 534
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    if-eqz v0, :cond_25

    .line 536
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "使用view的scope："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 537
    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v0

    return-object v0

    .line 539
    :cond_25
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v0

    return-object v0
.end method

.method public abstract synthetic getLogEventMap()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end method

.method public abstract synthetic getManagerHandler()Landroid/os/Handler;
.end method

.method protected final getTAG()Ljava/lang/String;
    .registers 2

    .line 62
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public getToolSDKVersionName()Ljava/lang/String;
    .registers 9

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " CodemaoTools/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "3.11.1-SNAPSHOT"

    const-string v3, "-SNAPSHOT"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public abstract synthetic getToolType()Ljava/lang/String;
.end method

.method public abstract synthetic getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
.end method

.method public abstract synthetic getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public getViewActivity()Landroid/app/Activity;
    .registers 3

    .line 502
    sget-object v0, Lcom/codemao/toolssdk/utils/DialogUtils;->INSTANCE:Lcom/codemao/toolssdk/utils/DialogUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getViewContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/DialogUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    return-object v0
.end method

.method public getViewContext()Landroid/content/Context;
    .registers 3

    .line 498
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "context"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract synthetic getViewHandler()Landroid/os/Handler;
.end method

.method public getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .registers 2

    .line 515
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object v0
.end method

.method public abstract synthetic getWorkTypeAndEnterFrom()Lkotlin/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method protected initConfig()V
    .registers 3

    .line 203
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->initWebViewSize()V

    .line 204
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->initWebViewSettings()V

    .line 205
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->addJavaScriptObjects()V

    .line 206
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->setWebViewClient()V

    .line 207
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "cppViewInitConfig完成"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method

.method public initWebViewSettings()V
    .registers 4

    .line 216
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 217
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getDefaultUA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolSDKVersionName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    const/4 v1, 0x1

    .line 218
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    const/4 v2, 0x0

    .line 219
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 220
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 221
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 222
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 223
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 224
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    const/4 v2, -0x1

    .line 225
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 226
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "this as java.lang.String).toLowerCase(Locale.ROOT)"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "vivo x9"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5b

    const/4 v0, 0x2

    const/4 v2, 0x0

    .line 227
    invoke-virtual {p0, v0, v2}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    .line 229
    :cond_5b
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_66

    .line 230
    invoke-static {v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->setWebContentsDebuggingEnabled(Z)V

    :cond_66
    return-void
.end method

.method public initWebViewSize()V
    .registers 4

    .line 211
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    .line 212
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 211
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected final isRenderGone()Z
    .registers 2

    .line 75
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->isRenderGone:Z

    return v0
.end method

.method public loadFinalUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 490
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->setLastUrl(Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 491
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->setLoadSucceed(Z)V

    .line 492
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    .line 493
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->removeConfigSdkTimeOutRunnable()V

    .line 494
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->launchConfigSdkTimeOutRunnable()V

    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 3

    .line 575
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 576
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "toolsWebView,onAttachedToWindow"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 577
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->setupViewLifecycleOwner()V

    .line 578
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->registerLifecycleObserver()V

    .line 579
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewKeyboard;->initKeyboardListener()V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy()V
    .registers 5

    .line 670
    :try_start_0
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "触发ToolsWebView的onDestroy"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    .line 671
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->scope:Lkotlinx/coroutines/CoroutineScope;

    if-eqz v0, :cond_10

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 672
    :cond_10
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->destroyAllHandler()V

    .line 673
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->destroyAllJavaScriptObject()V

    .line 674
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->clearWebView()V

    .line 675
    sget-object v0, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->Companion:Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CTKNImageDownload$Companion;->getInstance()Lcom/codemao/toolssdk/utils/CTKNImageDownload;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/utils/CTKNImageDownload;->onDestroy()V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_23

    goto :goto_3d

    :catch_23
    move-exception v0

    .line 677
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 678
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToolsWebView的onDestroy异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    :goto_3d
    return-void
.end method

.method public synthetic onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    .line 583
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 584
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "toolsWebView,onDetachedFromWindow"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 585
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->removeViewLifecycleOwner()V

    .line 586
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewKeyboard;->removeKeyboardListener()V

    .line 587
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->removeConfigSdkTimeOutRunnable()V

    .line 588
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_23

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addStopAction(Ljava/lang/String;)V

    :cond_23
    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 592
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postPageResumeEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 596
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postPageStopEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;)V

    .line 597
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->resetAllAudioBeanState()V

    .line 598
    :cond_14
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerBase;->getAudioPlayer()Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;

    move-result-object v0

    if-eqz v0, :cond_24

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/evolving/android/audioplay/CTAudioPlayer;->addStopAction(Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method public synthetic onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public registerLifecycleObserver()V
    .registers 5

    .line 519
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerConfig;->getLifecycleObserver()Landroidx/lifecycle/LifecycleObserver;

    move-result-object v0

    if-eqz v0, :cond_31

    .line 520
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "注册lifecycleObserver："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-interface {v1}, Landroidx/lifecycle/LifecycleOwner;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v1

    if-eqz v1, :cond_31

    invoke-virtual {v1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_31
    return-void
.end method

.method public abstract synthetic setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
.end method

.method public abstract synthetic setBindPhoneResult(Z)V
.end method

.method public abstract synthetic setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract synthetic setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public setLastUrl(Ljava/lang/String;)V
    .registers 3

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 482
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->lastUrl:Ljava/lang/String;

    return-void
.end method

.method public abstract synthetic setLoadSucceed(Z)V
.end method

.method public abstract synthetic setLoginResult(Z)V
.end method

.method public abstract synthetic setPythonCapture(Lkotlin/jvm/functions/Function1;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final setRenderGone(Z)V
    .registers 2

    .line 75
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->isRenderGone:Z

    return-void
.end method

.method public setRenderGoneListener(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "renderGoneListener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 606
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->renderGoneListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public abstract synthetic setStateButtonsListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
.end method

.method public abstract synthetic setToolType(Ljava/lang/String;)V
.end method

.method public abstract synthetic setToolsManager(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
.end method

.method public setUserAgent(Ljava/lang/String;)V
    .registers 3

    const-string v0, "userAgent"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 563
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    return-void
.end method

.method public abstract synthetic setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation
.end method

.method public setWebViewClient()V
    .registers 4

    .line 236
    sget-object v0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClient;->Companion:Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClient$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "context"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClient$Companion;->getChromeClient(Landroid/content/Context;Ljava/lang/String;)Landroid/webkit/WebChromeClient;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->chromeClient:Landroid/webkit/WebChromeClient;

    .line 237
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->chromeClient:Landroid/webkit/WebChromeClient;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 238
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 474
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->webViewSettingOver()V

    return-void
.end method

.method public setWebViewInterceptCallback(Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 571
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->shouldInterceptRequestCallback:Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    return-void
.end method

.method public setupViewLifecycleOwner()V
    .registers 4

    .line 510
    invoke-static {p0}, Landroidx/lifecycle/ViewKt;->findViewTreeLifecycleOwner(Landroid/view/View;)Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    .line 511
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "获取lifecycleOwner："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLifecycle(Ljava/lang/String;)V

    return-void
.end method

.method public webViewSettingOver()V
    .registers 1

    return-void
.end method
