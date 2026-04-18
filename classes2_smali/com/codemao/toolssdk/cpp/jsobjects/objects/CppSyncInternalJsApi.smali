.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "CppSyncInternalJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$Companion;
    }
.end annotation


# instance fields
.field private configSdkResult:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;

.field private heartBeatDeadCallback:Ljava/lang/Runnable;

.field private final heartBeatRunnable:Ljava/lang/Runnable;

.field private toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method public static synthetic $r8$lambda$AE6QcNQF9OF5SZTPgCmFDtHn5IU(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatDeadCallback$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nqIF0zz-7iWAXZTNS-hRV9C936Y(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatRunnable$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 15
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 23
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    .line 25
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    .line 34
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final dispatchHandshake()V
    .registers 5

    .line 49
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_11

    const/4 v1, 0x0

    new-array v1, v1, [Lorg/json/JSONObject;

    new-instance v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$dispatchHandshake$1;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi$dispatchHandshake$1;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V

    const-string v3, "syncInternal.dispatchHandshake"

    invoke-interface {v0, v3, v1, v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;->callDSHandler(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    :cond_11
    return-void
.end method

.method private static final heartBeatDeadCallback$lambda$0(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p0, :cond_22

    invoke-interface {p0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p0

    if-eqz p0, :cond_22

    .line 27
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x1b8c

    .line 29
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const-string v3, "dsBridge断开链接"

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 26
    invoke-static {p0, v0, v2, v1, v2}, Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;->toolLoadDidFail$default(Lcom/codemao/toolssdk/view/CMToolSessionListener;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;ILjava/lang/Object;)V

    :cond_22
    return-void
.end method

.method private static final heartBeatRunnable$lambda$1(Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->dispatchHandshake()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 88
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_2a

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_2a
    return-void
.end method

.method public final getCreateStartTime(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 6
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/CompletionHandler<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "handler"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 73
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 75
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/GetCreateStartTimeData;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->getCrateStartTime()Ljava/lang/Long;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/GetCreateStartTimeData;-><init>(Ljava/lang/Long;)V

    const/16 v1, 0x7d0

    .line 73
    invoke-direct {p1, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 78
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web通知原生获取可见时间:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    .line 79
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz p1, :cond_53

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-interface {p1, v2}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->setCreateStartTime(Ljava/lang/Long;)V

    :cond_53
    return-void
.end method

.method public final on(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 5
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 64
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;

    .line 65
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "syncInternal,on事件:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 66
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->configSdkResult:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_37

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    :cond_37
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 68
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final sendOnceHandshake(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
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

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v1, :cond_1a

    const/4 v0, 0x0

    new-array v3, v0, [Lorg/json/JSONObject;

    const-wide/16 v4, 0xbb8

    const-string v2, "syncInternal.dispatchHandshake"

    move-object v6, p1

    move-object v7, p2

    invoke-interface/range {v1 .. v7}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_1a
    return-void
.end method

.method public final setConfigSdkListener(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 83
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->configSdkResult:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final startHeartBeat()V
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_15

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_15

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 44
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_2c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 45
    :cond_2c
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_43

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getMainHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_43

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->heartBeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_43
    return-void
.end method
