.class public abstract Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;
.super Lcom/codemao/toolssdk/cpp/view/PythonOJWebView;
.source "CppWebViewOnMessage.kt"


# instance fields
.field private final socketIONameSpace:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/PythonOJWebView;-><init>(Landroid/content/Context;)V

    const-string p1, "socketIO"

    .line 19
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->socketIONameSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/PythonOJWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "socketIO"

    .line 19
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->socketIONameSpace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/PythonOJWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "socketIO"

    .line 19
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->socketIONameSpace:Ljava/lang/String;

    return-void
.end method

.method private final postAsyncEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 159
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    invoke-direct {v0, p2, p3}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 160
    new-instance p2, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->getGson()Lcom/google/gson/Gson;

    move-result-object p3

    invoke-virtual {p3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 162
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".closeDialog"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    new-array p3, p3, [Lorg/json/JSONObject;

    const/4 v0, 0x0

    aput-object p2, p3, v0

    .line 161
    invoke-virtual {p0, p1, p3, p4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOutNew(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public applicationPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 47
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->getGson()Lcom/google/gson/Gson;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/json/JSONObject;

    const/4 v0, 0x0

    aput-object p1, p2, v0

    const-string p1, "application.onMessage"

    .line 48
    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOutNew(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public abstract synthetic getAgentCacheDir()Ljava/lang/String;
.end method

.method public abstract synthetic getEnterFrom()Ljava/lang/String;
.end method

.method public abstract synthetic getHeaderToken()Ljava/lang/String;
.end method

.method public abstract synthetic getToolType()Ljava/lang/String;
.end method

.method public abstract synthetic getUploadCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
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

.method public postCameraEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "result"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "camera"

    .line 150
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->postAsyncEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)V

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

.method public socketPostAsyncEvent(Ljava/lang/String;Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
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

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "name"

    .line 100
    invoke-virtual {v0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p1, "payload"

    .line 101
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 103
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->socketIONameSpace:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ".onMessage"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object v0, p2, v1

    .line 102
    new-instance v0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage$socketPostAsyncEvent$2;

    invoke-direct {v0, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage$socketPostAsyncEvent$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public socketPostAsyncEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
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

    const-string v0, "eventName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 137
    new-instance p1, Lorg/json/JSONObject;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 139
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->socketIONameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 138
    new-instance p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage$socketPostAsyncEvent$4;

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage$socketPostAsyncEvent$4;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public socketPostAsyncEvent(Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
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

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 87
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage;->socketIONameSpace:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".onMessage"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 86
    new-instance p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage$socketPostAsyncEvent$1;

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewOnMessage$socketPostAsyncEvent$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, v0, v1, p1, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
