.class public final Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;
.super Ljava/lang/Object;
.source "CppOnMessageCallWeb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$getMGson(Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;)Lcom/google/gson/Gson;
    .registers 1

    .line 30
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$transResult(Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;
    .registers 2

    .line 30
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->transResult(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    move-result-object p0

    return-object p0
.end method

.method private final getMGson()Lcom/google/gson/Gson;
    .registers 2

    .line 32
    invoke-static {}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->access$getMGson$delegate$cp()Lkotlin/Lazy;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final transResult(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;
    .registers 5

    if-eqz p1, :cond_b

    .line 448
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

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
    const/16 v1, 0x1388

    if-eqz v0, :cond_16

    .line 449
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V

    goto :goto_41

    .line 452
    :cond_16
    :try_start_16
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object v0

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResponse;

    invoke-virtual {v0, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResponse;

    .line 453
    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResponse;->getSuccess()Ljava/lang/Boolean;

    move-result-object v0

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_36

    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    const/16 v2, 0x7d0

    invoke-direct {v0, v2, p1}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V

    goto :goto_41

    .line 456
    :cond_36
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_3b} :catch_3c

    goto :goto_41

    .line 458
    :catch_3c
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;

    invoke-direct {v0, v1, p1}, Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;-><init>(ILjava/lang/String;)V

    :goto_41
    return-object v0
.end method


# virtual methods
.method public final checkWorkSaveEnable(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/CheckWorkSaveEnableResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 305
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "checkWorkSaveEnable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 308
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 306
    new-instance v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$1;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$2;

    invoke-direct {v2, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$checkWorkSaveEnable$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final openHistoryBackupDialog(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 246
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "openHistoryBackupDialog"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 247
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$1;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$2;

    invoke-direct {v2, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$openHistoryBackupDialog$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;",
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_21

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 40
    new-instance p2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postAsyncEvent$1;

    invoke-direct {p2, p3}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postAsyncEvent$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string p3, "application.onMessage"

    invoke-interface {p1, p3, v0, p2, p4}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_21
    return-void
.end method

.method public final postOpenAlbumSucceedEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 53
    :cond_3
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 54
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/NativeEvent;

    const-string v2, "openAlbumSucceed"

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/NativeEvent;-><init>(Ljava/lang/String;)V

    const-string v2, "nativeEvent"

    .line 53
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 56
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 58
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postOpenAlbumSucceedEvent$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postOpenAlbumSucceedEvent$1;

    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postOpenAlbumSucceedEvent$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postOpenAlbumSucceedEvent$2;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final postPageResumeEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 105
    :cond_3
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 106
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/LifecycleEvent;

    const/4 v2, 0x2

    const-string v3, "resume"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/codemao/toolssdk/model/dsbridge/LifecycleEvent;-><init>(Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "appLifecycle"

    .line 105
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 108
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 110
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 109
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageResumeEvent$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageResumeEvent$1;

    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageResumeEvent$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageResumeEvent$2;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final postPageStopEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;)V
    .registers 7

    if-nez p1, :cond_3

    return-void

    .line 67
    :cond_3
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 68
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/LifecycleEvent;

    const/4 v2, 0x2

    const-string v3, "stop"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2, v4}, Lcom/codemao/toolssdk/model/dsbridge/LifecycleEvent;-><init>(Ljava/lang/String;Ljava/lang/Long;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    const-string v2, "appLifecycle"

    .line 67
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 72
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 71
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageStopEvent$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageStopEvent$1;

    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageStopEvent$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postPageStopEvent$2;

    invoke-virtual {p0, p1, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final postSoftKeyboardChangedEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;I)V
    .registers 5

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    .line 117
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/SoftKeyboardChangedEvent;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/model/dsbridge/SoftKeyboardChangedEvent;-><init>(I)V

    const-string p2, "softKeyboardChanged"

    .line 116
    invoke-direct {v0, p2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 119
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 121
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 120
    sget-object p2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postSoftKeyboardChangedEvent$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postSoftKeyboardChangedEvent$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postSoftKeyboardChangedEvent$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$postSoftKeyboardChangedEvent$2;

    invoke-virtual {p0, p1, v1, p2, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final showBackPackPage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/NativeCallWebResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 222
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "showBackPackPage"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 223
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->getMGson()Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$showBackPackPage$1;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$showBackPackPage$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    new-instance v2, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$showBackPackPage$2;

    invoke-direct {v2, p2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion$showBackPackPage$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v1, v0, v2}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
