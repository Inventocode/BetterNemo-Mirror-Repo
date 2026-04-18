.class public final Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;
.super Ljava/lang/Object;
.source "SyncInternalJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$Companion;
    }
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private heartBeatDeadCallback:Ljava/lang/Runnable;

.field private final heartBeatRunnable:Ljava/lang/Runnable;

.field private final internalEventCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;",
            "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method public static synthetic $r8$lambda$DbXlTK4UOSeV18usjjaYHu7Uuww(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatRunnable$lambda$1(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Fi7Kzne8k4dK90NRnGYBmDeBqMc(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->dispatchHandshake$lambda$2(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$OOXlxFIPTXzvueRxIDL5lqagy9A(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V
    .registers 1

    invoke-static {p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatDeadCallback$lambda$0(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/view/ToolsWebView;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "internalEventCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 19
    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->internalEventCallback:Lkotlin/jvm/functions/Function2;

    .line 26
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    .line 28
    new-instance p1, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    .line 37
    new-instance p1, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private final dispatchHandshake()V
    .registers 5

    .line 48
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V

    const-string v3, "syncInternal.dispatchHandshake"

    invoke-virtual {v0, v3, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method private static final dispatchHandshake$lambda$2(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;Ljava/lang/Object;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-virtual {p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->startHeartBeat()V

    return-void
.end method

.method private static final heartBeatDeadCallback$lambda$0(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V
    .registers 5

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p0

    if-eqz p0, :cond_20

    .line 30
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x1b8c

    .line 32
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const-string v3, "dsBridge断开链接"

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 29
    invoke-static {p0, v0, v2, v1, v2}, Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;->toolLoadDidFail$default(Lcom/codemao/toolssdk/view/CMToolSessionListener;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;ILjava/lang/Object;)V

    :cond_20
    return-void
.end method

.method private static final heartBeatRunnable$lambda$1(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 38
    invoke-direct {p0}, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->dispatchHandshake()V

    return-void
.end method


# virtual methods
.method public final destroy()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 83
    :cond_13
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_26

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_26

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_26
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

    .line 72
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 74
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/GetCreateStartTimeData;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_1e

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getCrateStartTime()Ljava/lang/Long;

    move-result-object v1

    goto :goto_1f

    :cond_1e
    move-object v1, v2

    :goto_1f
    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/GetCreateStartTimeData;-><init>(Ljava/lang/Long;)V

    const/16 v1, 0x7d0

    .line 72
    invoke-direct {p1, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 76
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v0, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    .line 77
    sget-object p2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "web通知原生获取可见时间:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dCppRun(Ljava/lang/String;)V

    .line 78
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz p1, :cond_53

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_53

    invoke-virtual {p1, v2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->setCreateStartTime(Ljava/lang/Long;)V

    :cond_53
    return-void
.end method

.method public final on(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;

    .line 64
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "接收到on事件:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "加载过程"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->internalEventCallback:Lkotlin/jvm/functions/Function2;

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p0, p1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 67
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->gson:Lcom/google/gson/Gson;

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

    .line 56
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v0, 0x0

    new-array v3, v0, [Lorg/json/JSONObject;

    const-string v2, "syncInternal.dispatchHandshake"

    const-wide/16 v4, 0x7d0

    move-object v6, p1

    move-object v7, p2

    invoke-virtual/range {v1 .. v7}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final startHeartBeat()V
    .registers 5

    .line 42
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_13

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 43
    :cond_13
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_28

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatDeadCallback:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 44
    :cond_28
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v0

    if-eqz v0, :cond_3d

    invoke-virtual {v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_3d

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;->heartBeatRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3d
    return-void
.end method
