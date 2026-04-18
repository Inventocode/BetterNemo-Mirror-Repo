.class public Lcom/codemao/toolssdk/view/ToolsWebView;
.super Lcom/codemao/toolssdk/view/ToolsWebViewBiz;
.source "ToolsWebView.kt"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "SetJavaScriptEnabled"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/view/ToolsWebView$Companion;
    }
.end annotation


# instance fields
.field private accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

.field public applicationJsApi:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

.field private bluetoothJsApi:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

.field private cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

.field private currentToolType:Ljava/lang/String;

.field private dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

.field private deviceJsApi:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

.field private isLoadSucceed:Z

.field private final jsCallTimeoutMills:J

.field private jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

.field private lastUrl:Ljava/lang/String;

.field private final loadTimeoutMills:J

.field private networkJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

.field private recordJsApi:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

.field private renderGoneListener:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private reportRenderGone:Z

.field private scope:Lkotlinx/coroutines/CoroutineScope;

.field private shouldInterceptRequestCallback:Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

.field private syncInternalJsApi:Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;

.field private viewSizeNotified:Z


# direct methods
.method public static synthetic $r8$lambda$4ZZ7-VEftFekflwul8EAsg_A7SY(Lkotlin/jvm/functions/Function2;Ljava/lang/String;[Lorg/json/JSONObject;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/String;[Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$NijotTGvZ3jsZvm_3b9upZKiykE(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->initView$lambda$1(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$P6pN_a6KgwOqJCrxwrfYKdx7zME(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut$lambda$4(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aaeRW-ziWzKKLAAZajIMkacAqfg(Lcom/codemao/toolssdk/view/ToolsWebView;I)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->initKeyboardListener$lambda$7$lambda$6(Lcom/codemao/toolssdk/view/ToolsWebView;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$auCtfhqPigpqIHzTQMbGPyDfGR8(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut$lambda$3(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$hJ2gvupugKqAlJ6gdZhI6NI4CME(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->_init_$lambda$0(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nuDNIiuj47xIT-E88jrnVAD2Nsk(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 6

    invoke-static/range {p0 .. p5}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut$lambda$5(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/view/ToolsWebView$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/view/ToolsWebView$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-wide/32 p1, 0xea60

    .line 68
    iput-wide p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsCallTimeoutMills:J

    const/16 v0, 0xbb8

    int-to-long v0, v0

    add-long/2addr p1, v0

    .line 69
    iput-wide p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->loadTimeoutMills:J

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-static {p2, v0, p2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 90
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->initView()V

    .line 91
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string p1, ""

    .line 543
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->lastUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-wide/32 p1, 0xea60

    .line 68
    iput-wide p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsCallTimeoutMills:J

    const/16 p3, 0xbb8

    int-to-long v0, p3

    add-long/2addr p1, v0

    .line 69
    iput-wide p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->loadTimeoutMills:J

    .line 79
    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getIO()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object p1

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-static {p2, p3, p2}, Lkotlinx/coroutines/JobKt;->Job$default(Lkotlinx/coroutines/Job;ILjava/lang/Object;)Lkotlinx/coroutines/CompletableJob;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/coroutines/AbstractCoroutineContextElement;->plus(Lkotlin/coroutines/CoroutineContext;)Lkotlin/coroutines/CoroutineContext;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/CoroutineScopeKt;->CoroutineScope(Lkotlin/coroutines/CoroutineContext;)Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 90
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->initView()V

    .line 91
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    const-string p1, ""

    .line 543
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->lastUrl:Ljava/lang/String;

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    iget-boolean v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->viewSizeNotified:Z

    if-nez v0, :cond_4d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_4d

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_4d

    .line 94
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "kn view宽高变化："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 95
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    new-instance v3, Lcom/codemao/toolssdk/view/ToolsWebView$1$1;

    invoke-direct {v3, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$1$1;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {v0, p0, v1, v2, v3}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postWebViewSizeChangedEvent(Lcom/codemao/toolssdk/view/ToolsWebView;IILkotlin/jvm/functions/Function1;)V

    :cond_4d
    return-void
.end method

.method public static final synthetic access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->currentToolType:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getJsConfigSDKTimeoutRunnable$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/Runnable;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method public static final synthetic access$getLastUrl$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->lastUrl:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$getLoadTimeoutMills$p(Lcom/codemao/toolssdk/view/ToolsWebView;)J
    .registers 3

    .line 53
    iget-wide v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->loadTimeoutMills:J

    return-wide v0
.end method

.method public static final synthetic access$getRenderGoneListener$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lkotlin/jvm/functions/Function0;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->renderGoneListener:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public static final synthetic access$getReportRenderGone$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->reportRenderGone:Z

    return p0
.end method

.method public static final synthetic access$getScope$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lkotlinx/coroutines/CoroutineScope;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->scope:Lkotlinx/coroutines/CoroutineScope;

    return-object p0
.end method

.method public static final synthetic access$getShouldInterceptRequestCallback$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;
    .registers 1

    .line 53
    iget-object p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->shouldInterceptRequestCallback:Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    return-object p0
.end method

.method public static final synthetic access$initView(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 1

    .line 53
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->initView()V

    return-void
.end method

.method public static final synthetic access$isLoadSucceed$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Z
    .registers 1

    .line 53
    iget-boolean p0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->isLoadSucceed:Z

    return p0
.end method

.method public static final synthetic access$setLoadSucceed$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->isLoadSucceed:Z

    return-void
.end method

.method public static final synthetic access$setReportRenderGone$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->reportRenderGone:Z

    return-void
.end method

.method public static final synthetic access$setViewSizeNotified$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V
    .registers 2

    .line 53
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->viewSizeNotified:Z

    return-void
.end method

.method private static final callHandlerWithTimeOut$lambda$2(Lkotlin/jvm/functions/Function2;Ljava/lang/String;[Lorg/json/JSONObject;)V
    .registers 5

    const-string v0, "$fail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1b8c

    .line 461
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "call js method time out!!"

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "application.onMessage"

    .line 462
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    .line 463
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    const-string v0, "原生调用js超时"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->timeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 465
    :cond_24
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "callHandler结果超时:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "toString(this)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    return-void
.end method

.method private static final callHandlerWithTimeOut$lambda$3(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "body"

    const-string v1, "status"

    const-string v2, "this$0"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$timeoutRunnable"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$fail"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$success"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 471
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v2, :cond_25

    invoke-virtual {v2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_25

    invoke-virtual {v2, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 473
    :cond_25
    :try_start_25
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "callHandler返回结果,方法:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ",参数:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 474
    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_7f

    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x7d0

    if-le p1, v1, :cond_66

    goto :goto_7f

    .line 480
    :cond_66
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7b

    .line 481
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lorg/json/JSONObject;

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ec

    .line 483
    :cond_7b
    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_ec

    .line 475
    :cond_7f
    :goto_7f
    new-instance p1, Lcom/codemao/toolssdk/view/ToolsWebView$callHandlerWithTimeOut$1$type$1;

    invoke-direct {p1}, Lcom/codemao/toolssdk/view/ToolsWebView$callHandlerWithTimeOut$1$type$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 476
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object p4

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "gson.fromJson(retValue.toString(), type)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 477
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    if-eqz p1, :cond_af

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_af
    invoke-interface {p3, p4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 478
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_bf
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_bf} :catch_c0

    goto :goto_ec

    :catch_c0
    move-exception p0

    .line 487
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x1b8e

    .line 489
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "js method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", OnReturnValue error "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 488
    invoke-interface {p3, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 491
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->exception(Ljava/lang/String;Ljava/lang/String;)V

    :goto_ec
    return-void
.end method

.method private static final callHandlerWithTimeOut$lambda$4(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .registers 4

    const-string v0, "$fail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1b8c

    .line 507
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "call js method time out!!"

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "application.onMessage"

    .line 508
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1f

    .line 509
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    const-string v0, "原生调用js超时"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->timeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    :cond_1f
    sget-object p0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p1, "callHandler结果超时"

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    return-void
.end method

.method private static final callHandlerWithTimeOut$lambda$5(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 10

    const-string v0, "body"

    const-string v1, "status"

    const-string v2, "web返回的结果:"

    const-string v3, "this$0"

    invoke-static {p0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$timeoutRunnable"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$fail"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "$success"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 517
    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v3, :cond_27

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v3

    if-eqz v3, :cond_27

    invoke-virtual {v3, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_27
    :try_start_27
    const-string p1, "加载过程"

    .line 519
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 521
    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    const/4 v2, 0x0

    if-eqz p1, :cond_83

    invoke-virtual {p5, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v1, 0x7d0

    if-le p1, v1, :cond_6a

    goto :goto_83

    .line 527
    :cond_6a
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_7f

    .line 528
    invoke-virtual {p5, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Lorg/json/JSONObject;

    invoke-interface {p4, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f0

    .line 530
    :cond_7f
    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_f0

    .line 522
    :cond_83
    :goto_83
    new-instance p1, Lcom/codemao/toolssdk/view/ToolsWebView$callHandlerWithTimeOut$2$type$1;

    invoke-direct {p1}, Lcom/codemao/toolssdk/view/ToolsWebView$callHandlerWithTimeOut$2$type$1;-><init>()V

    invoke-virtual {p1}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p1

    .line 523
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object p4

    invoke-virtual {p5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string p4, "gson.fromJson(retValue.toString(), type)"

    invoke-static {p1, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 524
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    if-eqz p1, :cond_b3

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_b3
    invoke-interface {p2, p4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object p0

    invoke-virtual {p0, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c3
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_c3} :catch_c4

    goto :goto_f0

    :catch_c4
    move-exception p0

    .line 534
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/16 p1, 0x1b8e

    .line 536
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "js method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", OnReturnValue error "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 535
    invoke-interface {p2, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, p3}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->exception(Ljava/lang/String;Ljava/lang/String;)V

    :goto_f0
    return-void
.end method

.method private final initKeyboardListener()V
    .registers 3

    .line 619
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 621
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 620
    new-instance v1, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda3;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-static {v0, p0, v1}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->registerSoftInputChangedListener(Landroid/app/Activity;Landroid/view/View;Lcom/nemo/commonui/xpopup/util/KeyboardUtils$OnSoftInputChangedListener;)V

    :cond_19
    return-void
.end method

.method private static final initKeyboardListener$lambda$7$lambda$6(Lcom/codemao/toolssdk/view/ToolsWebView;I)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 623
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {v0, p0, p1}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postSoftKeyboardChangedEvent(Lcom/codemao/toolssdk/view/ToolsWebView;I)V

    if-nez p1, :cond_1b

    .line 625
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    instance-of v0, p0, Landroid/app/Activity;

    if-eqz v0, :cond_17

    check-cast p0, Landroid/app/Activity;

    goto :goto_18

    :cond_17
    const/4 p0, 0x0

    :goto_18
    invoke-static {p0}, Lcom/codemao/toolssdk/utils/CMToolsAppUtils;->hideSystemUI(Landroid/app/Activity;)V

    .line 627
    :cond_1b
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initKeyboardListener: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ToolsWebView"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private final initView()V
    .registers 11

    .line 104
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 105
    new-instance v1, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, v0}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda4;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    .line 132
    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    const-string v2, "dWebView.settings"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 135
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " CodemaoTools/"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "3.11.1-SNAPSHOT"

    const-string v5, "-SNAPSHOT"

    const-string v6, ""

    const/4 v7, 0x0

    const/4 v8, 0x4

    const/4 v9, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-virtual {v1, v0}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 136
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowContentAccess(Z)V

    .line 137
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 138
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 139
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 140
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 141
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccessFromFileURLs(Z)V

    .line 142
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowUniversalAccessFromFileURLs(Z)V

    .line 143
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 146
    new-instance v0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->setApplicationJsApi(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;)V

    .line 147
    new-instance v0, Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->recordJsApi:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    .line 149
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getApplicationJsApi()Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    move-result-object v2

    const-string v3, "application"

    invoke-virtual {v0, v2, v3}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/FileJsApi;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/jsapi/FileJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    const-string v3, "files"

    invoke-virtual {v0, v2, v3}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 151
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->recordJsApi:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    const/4 v3, 0x0

    if-nez v2, :cond_c6

    const-string v2, "recordJsApi"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v3

    :cond_c6
    const-string v4, "recorder"

    invoke-virtual {v0, v2, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    new-instance v0, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->bluetoothJsApi:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    .line 153
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    sget-object v4, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$Companion;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi$Companion;->getNamespace()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v0, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/EventJsApi;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "context"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v5, Lcom/codemao/toolssdk/view/ToolsWebView$initView$2;

    invoke-direct {v5, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$2;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-direct {v2, v4, v5}, Lcom/codemao/toolssdk/jsapi/EventJsApi;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V

    const-string v4, "events"

    invoke-virtual {v0, v2, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 157
    new-instance v0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;

    new-instance v2, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-direct {v0, p0, v2}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function2;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->syncInternalJsApi:Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;

    .line 185
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-string v4, "syncInternal"

    invoke-virtual {v2, v0, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 186
    new-instance v0, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->deviceJsApi:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    .line 187
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-string v4, "device"

    invoke-virtual {v2, v0, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/AudioJsApi;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/jsapi/AudioJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    const-string v4, "audio"

    invoke-virtual {v0, v2, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 189
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/DialogJsApi;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/jsapi/DialogJsApi;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    const-string v4, "dialog"

    invoke-virtual {v0, v2, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 190
    new-instance v0, Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    invoke-direct {v0}, Lcom/codemao/toolssdk/jsapi/AccountJsApi;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    .line 191
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    new-instance v2, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$4;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-direct {v0, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->networkJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    .line 209
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const-string v4, "network"

    invoke-virtual {v2, v0, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 210
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    const-string v4, "account"

    invoke-virtual {v0, v2, v4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 211
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

    if-eqz v0, :cond_172

    .line 212
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/webkit/WebView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 215
    :cond_172
    sget-object v0, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->isDebug()Z

    move-result v0

    if-eqz v0, :cond_17d

    .line 216
    invoke-static {v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->setWebContentsDebuggingEnabled(Z)V

    .line 218
    :cond_17d
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/toolssdk/view/ToolsWebView$initView$5;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$5;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 229
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v1, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 440
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->webViewSettingOver()V

    return-void
.end method

.method private static final initView$lambda$1(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "加载过程"

    const-string v1, "超时时间到了,发起握手检测"

    .line 106
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 108
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->syncInternalJsApi:Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;

    if-eqz v0, :cond_22

    new-instance v1, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;

    invoke-direct {v1, p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;

    invoke-direct {v2, p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->sendOnceHandshake(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_22
    return-void
.end method

.method private final removeKeyboardListener()V
    .registers 3

    .line 633
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.Activity"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/app/Activity;

    .line 634
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const-string v1, "activity.window.decorView"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 635
    invoke-static {v0, p0}, Lcom/nemo/commonui/xpopup/util/KeyboardUtils;->removeLayoutChangeListener(Landroid/view/View;Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/json/JSONObject;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 506
    new-instance v3, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda5;

    invoke-direct {v3, p6, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda5;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    .line 514
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {v0, v3, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 515
    :cond_21
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "callHandlerWithTimeOut: method: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p4, " , arguments: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "ToolsWebView"

    invoke-static {p4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    iget-object p3, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance p4, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;

    move-object v1, p4

    move-object v2, p0

    move-object v4, p6

    move-object v5, p1

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p3, p1, p2, p4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/json/JSONObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 460
    new-instance v3, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;

    invoke-direct {v3, p4, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda6;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;[Lorg/json/JSONObject;)V

    .line 468
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_23

    iget-wide v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsCallTimeoutMills:J

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 469
    :cond_23
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "回调DWebVie的callHandler,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBase;->getGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    new-instance v7, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v4, p1

    move-object v5, p4

    move-object v6, p3

    invoke-direct/range {v1 .. v6}, Lcom/codemao/toolssdk/view/ToolsWebView$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/Runnable;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, p2, v7}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public destroy()V
    .registers 4

    .line 570
    :try_start_0
    invoke-super {p0}, Lcom/codemao/toolssdk/view/ToolsWebViewBiz;->destroy()V

    .line 571
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->scope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Lkotlinx/coroutines/CoroutineScopeKt;->cancel$default(Lkotlinx/coroutines/CoroutineScope;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 572
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_21

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_1e

    const-string v1, "jsConfigSDKTimeoutRunnable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v2

    :cond_1e
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 573
    :cond_21
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->bluetoothJsApi:Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;

    if-nez v0, :cond_2b

    const-string v0, "bluetoothJsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2b
    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/BluetoothJsApi;->destroy()V

    .line 574
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->deviceJsApi:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    if-nez v0, :cond_38

    const-string v0, "deviceJsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_38
    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->destroy()V

    .line 575
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->syncInternalJsApi:Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;

    if-eqz v0, :cond_42

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->destroy()V

    .line 576
    :cond_42
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->recordJsApi:Lcom/codemao/toolssdk/jsapi/RecordJsApi;

    if-nez v0, :cond_4c

    const-string v0, "recordJsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_4d

    :cond_4c
    move-object v2, v0

    :goto_4d
    invoke-virtual {v2}, Lcom/codemao/toolssdk/jsapi/RecordJsApi;->destroy()V

    .line 577
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    if-eqz v0, :cond_57

    invoke-virtual {v0}, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->destroy()V

    .line 578
    :cond_57
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6a

    .line 579
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_6a

    .line 580
    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 582
    :cond_6a
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    .line 584
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 585
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    .line 586
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearView()V

    .line 587
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->removeAllViews()V

    .line 588
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->destroy()V
    :try_end_8d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_8d} :catch_8e

    goto :goto_92

    :catch_8e
    move-exception v0

    .line 590
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_92
    return-void
.end method

.method public final destroyWebView()V
    .registers 1

    .line 565
    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->destroy()V

    return-void
.end method

.method public final getApplicationJsApi()Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;
    .registers 2

    .line 61
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->applicationJsApi:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "applicationJsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 2

    .line 70
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-object v0
.end method

.method public getCurrentDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 2

    .line 444
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-object v0
.end method

.method public final getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-object v0
.end method

.method public final getToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;
    .registers 2

    .line 663
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-object v0
.end method

.method public final isToolTypePlayer()Z
    .registers 3

    .line 557
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->currentToolType:Ljava/lang/String;

    const-string v1, "KN_PLAYER"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public final loadUrl(Ljava/lang/String;)V
    .registers 5

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 545
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->lastUrl:Ljava/lang/String;

    .line 546
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 547
    iput-boolean p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->isLoadSucceed:Z

    .line 548
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    const/4 v0, 0x0

    const-string v1, "jsConfigSDKTimeoutRunnable"

    if-eqz p1, :cond_27

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_27

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_24

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v0

    :cond_24
    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 549
    :cond_27
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    if-eqz p1, :cond_3f

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3f

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_39

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_3a

    :cond_39
    move-object v0, v2

    :goto_3a
    iget-wide v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->loadTimeoutMills:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3f
    return-void
.end method

.method protected onAttachedToWindow()V
    .registers 1

    .line 607
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 608
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->initKeyboardListener()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 4

    .line 612
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 613
    invoke-direct {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->removeKeyboardListener()V

    .line 614
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1e

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v2, :cond_1b

    const-string v2, "jsConfigSDKTimeoutRunnable"

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v2, v1

    :cond_1b
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 615
    :cond_1e
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->addStopAction(Ljava/lang/String;)V

    return-void
.end method

.method public final onResume()V
    .registers 3

    const-string v0, "加载"

    const-string v1, "执行ToolsWebView的onResume"

    .line 602
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 603
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postPageResumeEvent(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    return-void
.end method

.method public final onStop()V
    .registers 3

    const-string v0, "加载"

    const-string v1, "执行ToolsWebView的stop"

    .line 595
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 596
    sget-object v0, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;

    invoke-virtual {v0, p0}, Lcom/codemao/toolssdk/jsapi/OnMessageJsApi$Companion;->postPageStopEvent(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    .line 597
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->resetAllAudioBeanState()V

    .line 598
    invoke-static {}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->getPlayer()Lcom/codemao/toolssdk/manager/AudioPlayerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/manager/AudioPlayerManager;->addStopAction(Ljava/lang/String;)V

    return-void
.end method

.method public final setAccountListener(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V
    .registers 3

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 643
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    if-eqz v0, :cond_c

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->setAccountCallback(Lcom/codemao/toolssdk/jsapi/AccountJsApi$AccountListener;)V

    :cond_c
    return-void
.end method

.method public final setApplicationJsApi(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->applicationJsApi:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    return-void
.end method

.method public final setBindPhoneResult(Z)V
    .registers 3

    .line 647
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->setBindPhoneResult(Z)V

    :cond_7
    return-void
.end method

.method public final setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
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

    .line 639
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->deviceJsApi:Lcom/codemao/toolssdk/jsapi/DeviceJsApi;

    if-nez v0, :cond_a

    const-string v0, "deviceJsApi"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_a
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setCmToolsManager(Lcom/codemao/toolssdk/manager/CMToolsManager;)V
    .registers 2

    .line 70
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->cmToolsManager:Lcom/codemao/toolssdk/manager/CMToolsManager;

    return-void
.end method

.method public final setDWebView(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 3

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->dWebView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    return-void
.end method

.method public final setLoginResult(Z)V
    .registers 3

    .line 651
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->accountJsApi:Lcom/codemao/toolssdk/jsapi/AccountJsApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/jsapi/AccountJsApi;->setLoginResult(Z)V

    :cond_7
    return-void
.end method

.method public final setRenderGoneListener(Lkotlin/jvm/functions/Function0;)V
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

    .line 655
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->renderGoneListener:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setToolType(Ljava/lang/String;)V
    .registers 2

    .line 553
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->currentToolType:Ljava/lang/String;

    return-void
.end method

.method public final setWebViewInterceptCallback(Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;)V
    .registers 3

    const-string v0, "callback"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 561
    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView;->shouldInterceptRequestCallback:Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    return-void
.end method

.method public webViewSettingOver()V
    .registers 1

    return-void
.end method
