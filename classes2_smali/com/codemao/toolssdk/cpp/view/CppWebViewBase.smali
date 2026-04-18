.class public abstract Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;
.super Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;
.source "CppWebViewBase.kt"


# instance fields
.field private currentToolType:Ljava/lang/String;

.field private jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

.field private jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

.field private final loadTimeoutMills:J

.field private final logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lkotlin/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

.field private viewSizeNotified:Z


# direct methods
.method public static synthetic $r8$lambda$2UwGn1JL6qamFvtpsexF6e4rqss(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getCallJsTimeoutNew$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$H8CQsAuEYSTtap4Dewc3KnWeLas(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->startHeartBeat$lambda$4(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KyERXxyvVNWMA3KWYHVHXY1PIds(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->initConfig$lambda$1(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qKAx2CN5dp_ZvFx7SEP5xFmKI24(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getCallJsTimeout$lambda$3(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$zERxGOOABcDZtOOKcIeiIp8PIvw(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->_init_$lambda$0(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;-><init>(Landroid/content/Context;)V

    .line 30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getJsCallTimeoutMills()J

    move-result-wide v0

    const/16 p1, 0xbb8

    int-to-long v2, p1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->loadTimeoutMills:J

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventTimeStart(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->initConfig()V

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getJsCallTimeoutMills()J

    move-result-wide p1

    const/16 v0, 0xbb8

    int-to-long v0, v0

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->loadTimeoutMills:J

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventTimeStart(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->initConfig()V

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 6

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getJsCallTimeoutMills()J

    move-result-wide p1

    const/16 p3, 0xbb8

    int-to-long v0, p3

    add-long/2addr p1, v0

    iput-wide p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->loadTimeoutMills:J

    .line 37
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/ConstLogField;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/func/logevent/ConstLogField;->getVIEW_INIT_DURATION()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventTimeStart(Ljava/lang/String;)V

    .line 47
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->initConfig()V

    .line 48
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    new-instance p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda0;

    invoke-direct {p2, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {p1, p2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private static final _init_$lambda$0(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 51
    iget-boolean v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->viewSizeNotified:Z

    if-nez v0, :cond_6e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v0

    if-lez v0, :cond_6e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v0

    if-lez v0, :cond_6e

    .line 52
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

    const/4 v0, 0x2

    new-array v0, v0, [Lkotlin/Pair;

    const/4 v1, 0x0

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "width"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "height"

    invoke-static {v3, v2}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lkotlin/collections/MapsKt;->mapOf([Lkotlin/Pair;)Ljava/util/Map;

    move-result-object v0

    .line 54
    new-instance v1, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$1$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$1$1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    const-string v2, "webviewSizeChanged"

    invoke-interface {p0, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/IPosMessageToWebView;->applicationPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

    :cond_6e
    return-void
.end method

.method public static final synthetic access$configSdkResult(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;ZLcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->configSdkResult(ZLcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V

    return-void
.end method

.method public static final synthetic access$setViewSizeNotified$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;Z)V
    .registers 2

    .line 25
    iput-boolean p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->viewSizeNotified:Z

    return-void
.end method

.method private final configSdkResult(ZLcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V
    .registers 6

    .line 97
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->removeConfigSdkTimeOutRunnable()V

    if-eqz p1, :cond_9

    .line 99
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFinish()V

    goto :goto_41

    .line 106
    :cond_9
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x1b5a

    if-eqz p2, :cond_20

    .line 107
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->getStatus()Ljava/lang/Integer;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_22

    :cond_20
    const/16 v1, 0x1b5a

    :goto_22
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    if-eqz p2, :cond_32

    .line 108
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object p2

    if-eqz p2, :cond_32

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_38

    .line 109
    :cond_32
    sget-object p2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    invoke-virtual {p2, v0}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object p2

    .line 107
    :cond_38
    invoke-direct {v2, p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-direct {p1, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 105
    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    :goto_41
    return-void
.end method

.method private static final getCallJsTimeout$lambda$3(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V
    .registers 4

    const-string v0, "$fail"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x1b8c

    .line 210
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "call js method time out!!"

    invoke-interface {p0, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, "application.onMessage"

    .line 211
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_24

    .line 212
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    const-string v0, "原生调用js超时"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->timeout(Ljava/lang/String;Ljava/lang/String;)V

    :cond_24
    return-void
.end method

.method private static final getCallJsTimeoutNew$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V
    .registers 4

    const-string v0, "$method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;-><init>()V

    const/16 v1, 0x1b8c

    .line 196
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setCode$toolssdk_release(I)V

    const-string v1, "call js method time out!!"

    .line 197
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setErrorMessage$toolssdk_release(Ljava/lang/String;)V

    if-eqz p0, :cond_19

    .line 198
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    const-string p0, "application.onMessage"

    .line 199
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_28

    .line 200
    sget-object p0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    const-string v0, "原生调用js超时"

    invoke-virtual {p0, v0, p1}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->timeout(Ljava/lang/String;Ljava/lang/String;)V

    :cond_28
    return-void
.end method

.method private static final initConfig$lambda$1(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->sendOnceHandShake()V

    return-void
.end method

.method private static final startHeartBeat$lambda$4(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 8

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 227
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getLifecycleCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object v1

    invoke-static {}, Lkotlinx/coroutines/Dispatchers;->getDefault()Lkotlinx/coroutines/CoroutineDispatcher;

    move-result-object v2

    new-instance v4, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$startHeartBeat$1$1;

    const/4 v0, 0x0

    invoke-direct {v4, p0, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$startHeartBeat$1$1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;Lkotlin/coroutines/Continuation;)V

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    return-void
.end method


# virtual methods
.method public addJavaScriptObjects()V
    .registers 4

    .line 73
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    invoke-direct {v0, v1, p0, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    .line 74
    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->initJsObjects()V

    .line 75
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->addJavaScriptObjectsListener(Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;)V

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->addJsObjects()V

    :cond_1c
    return-void
.end method

.method public addJavaScriptObjectsListener(Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;)V
    .registers 3

    .line 80
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    if-eqz p1, :cond_c

    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->setInternalConfigSdkResultListener(Lkotlin/jvm/functions/Function1;)V

    .line 91
    :cond_c
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    if-eqz p1, :cond_18

    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$2;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->setEventListener(Lkotlin/jvm/functions/Function1;)V

    :cond_18
    return-void
.end method

.method public clearEventTime(Ljava/lang/String;)V
    .registers 3

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 253
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public destroyAllHandler()V
    .registers 3

    .line 148
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getViewHandler()Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 149
    :cond_a
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method public destroyAllJavaScriptObject()V
    .registers 2

    .line 187
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->onDestroy()V

    :cond_7
    return-void
.end method

.method public abstract synthetic getAgentCacheDir()Ljava/lang/String;
.end method

.method public final getCallJsTimeout(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 209
    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda4;

    invoke-direct {v0, p2, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda4;-><init>(Lkotlin/jvm/functions/Function2;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getCallJsTimeoutNew(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)",
            "Ljava/lang/Runnable;"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 194
    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda3;

    invoke-direct {v0, p2, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda3;-><init>(Lkotlin/jvm/functions/Function1;Ljava/lang/String;)V

    return-object v0
.end method

.method public abstract synthetic getEnterFrom()Ljava/lang/String;
.end method

.method public abstract synthetic getGson()Lcom/google/gson/Gson;
.end method

.method public abstract synthetic getHeaderToken()Ljava/lang/String;
.end method

.method protected final getJsObjectManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;
    .registers 2

    .line 28
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    return-object v0
.end method

.method public getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;
    .registers 2

    .line 170
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    return-object v0
.end method

.method public getLogEventDuration(Ljava/lang/String;)Ljava/lang/Long;
    .registers 9

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 257
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/Pair;

    if-nez p1, :cond_16

    const-wide/16 v0, -0x1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 258
    :cond_16
    invoke-virtual {p1}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_25

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    goto :goto_26

    :cond_25
    move-wide v3, v1

    :goto_26
    invoke-virtual {p1}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    if-eqz p1, :cond_33

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    goto :goto_34

    :cond_33
    move-wide v5, v1

    :goto_34
    sub-long/2addr v3, v5

    cmp-long p1, v3, v1

    if-gtz p1, :cond_3b

    const/4 p1, 0x0

    return-object p1

    .line 262
    :cond_3b
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public getLogEventMap()Ljava/util/Map;
    .registers 2
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

    .line 267
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-object v0
.end method

.method public getManagerHandler()Landroid/os/Handler;
    .registers 2

    .line 158
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public abstract synthetic getToolType()Ljava/lang/String;
.end method

.method public getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
    .registers 2

    .line 162
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    return-object v0
.end method

.method public abstract synthetic getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public getViewHandler()Landroid/os/Handler;
    .registers 2

    .line 154
    invoke-super {p0}, Landroid/widget/FrameLayout;->getHandler()Landroid/os/Handler;

    move-result-object v0

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
    .registers 2

    .line 65
    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    .line 69
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->initConfig()V

    return-void
.end method

.method public isToolTypePlayer()Z
    .registers 3

    .line 222
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->currentToolType:Ljava/lang/String;

    const-string v1, "CPP_PLAYER"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isToolsWebViewShown()Z
    .registers 2

    .line 271
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public launchConfigSdkTimeOutRunnable()V
    .registers 5

    .line 174
    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewWork;->isLoadSucceed()Z

    move-result v0

    if-eqz v0, :cond_7

    return-void

    .line 177
    :cond_7
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_17

    const-string v1, "jsConfigSDKTimeoutRunnable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_17
    iget-wide v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->loadTimeoutMills:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 178
    :cond_1c
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "开始configSdk超时倒计时"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method

.method public logEventTimeEnd(Ljava/lang/String;)V
    .registers 7

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 247
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lkotlin/Pair;

    if-eqz v0, :cond_25

    .line 248
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v2, Lkotlin/Pair;

    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v0, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_25
    return-void
.end method

.method public logEventTimeStart(Ljava/lang/String;)V
    .registers 6

    const-string v0, "fieldName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v1, Lkotlin/Pair;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 275
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->onDestroy()V

    .line 276
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->logEventDurationMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public removeConfigSdkTimeOutRunnable()V
    .registers 3

    .line 182
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsConfigSDKTimeoutRunnable:Ljava/lang/Runnable;

    if-nez v1, :cond_10

    const-string v1, "jsConfigSDKTimeoutRunnable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v1, 0x0

    :cond_10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 183
    :cond_13
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "移除configSDK倒计时"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method

.method public sendOnceHandShake()V
    .registers 4

    .line 117
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    if-eqz v0, :cond_11

    new-instance v1, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    new-instance v2, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->sendOnceHandShake(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_11
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

.method protected final setJsObjectManager(Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;)V
    .registers 2

    .line 28
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

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

.method public abstract synthetic setStateButtonsListener(Lcom/codemao/toolssdk/view/pop/LoadingFullScreenPop$ButtonOnClickListener;)V
.end method

.method public setToolType(Ljava/lang/String;)V
    .registers 2

    .line 218
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->currentToolType:Ljava/lang/String;

    return-void
.end method

.method public setToolsManager(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
    .registers 3

    const-string v0, "toolsManager"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 166
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    return-void
.end method

.method public setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/UserData;",
            "Lkotlin/jvm/functions/Function0<",
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

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->jsObjectManager:Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getApplication()Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    move-result-object v0

    if-eqz v0, :cond_17

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V

    :cond_17
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

.method public startHeartBeat()V
    .registers 2

    .line 226
    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
