.class public abstract Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;
.super Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandlerPython;
.source "CppWebViewCallHandler.kt"


# instance fields
.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public static synthetic $r8$lambda$12PDdFQVQosxxtbARGVxPquZZm0(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandler$lambda$0(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7JDOtZjSAZ3i4sXvSUO4M92JulE(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOutNew$lambda$6(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$KUZmtCrbOutqAWEC86DUvpnNLw8(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOut$lambda$5(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YZjSowGrn8RV3ZtdDk-2QScx7pg(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 5

    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOutNew$lambda$7(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V

    return-void
.end method

.method public static synthetic $r8$lambda$aUE4lUgP6PGCmNGZyFzY-Fstyi4(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 7

    invoke-static/range {p0 .. p6}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->callDSHandlerWithTimeOut$lambda$4(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandlerPython;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandlerPython;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandlerPython;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private static final callDSHandler$lambda$0(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 7

    const-string v0, "$method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandler返回结果,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 37
    sget-object p1, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;

    const-string v0, "retValue"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p3, p2}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->handleCallWebHandlerResult(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final callDSHandlerWithTimeOut$lambda$4(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 13

    const-string v0, "body"

    const-string v1, "status"

    const-string v2, "$method"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$timeoutRunnable"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$fail"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$success"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$args"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callHandlerWithTimeOut返回结果,方法:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",参数:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, p6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 94
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 96
    :cond_4f
    :try_start_4f
    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_85

    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x7d0

    if-le p2, v1, :cond_6a

    goto :goto_85

    .line 102
    :cond_6a
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 103
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/json/JSONObject;

    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_118

    .line 105
    :cond_80
    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_118

    .line 97
    :cond_85
    :goto_85
    new-instance p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$callDSHandlerWithTimeOut$1$type$1;

    invoke-direct {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$callDSHandlerWithTimeOut$1$type$1;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 98
    iget-object p4, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "gson.fromJson(retValue.toString(), type)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 99
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    if-eqz p2, :cond_b3

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_b3
    invoke-interface {p3, p4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object p2, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    iget-object p4, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p4, p6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p0}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_c1} :catch_c2

    goto :goto_118

    :catch_c2
    move-exception p2

    .line 109
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 110
    sget-object p4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    .line 111
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callHandlerWithTimeOut返回结果后异常,方法:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 110
    invoke-virtual {p4, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    const/16 p1, 0x1b8e

    .line 118
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "js method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", OnReturnValue error "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 117
    invoke-interface {p3, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->exception(Ljava/lang/String;Ljava/lang/String;)V

    :goto_118
    return-void
.end method

.method private static final callDSHandlerWithTimeOut$lambda$5(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;Lorg/json/JSONObject;)V
    .registers 13

    const-string v0, "body"

    const-string v1, "status"

    const-string v2, "$method"

    invoke-static {p0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "this$0"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$timeoutRunnable"

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$fail"

    invoke-static {p3, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$success"

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "$args"

    invoke-static {p5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 136
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callHandlerWithTimeOut返回结果,方法:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ",参数:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v5, p6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 137
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v2

    if-eqz v2, :cond_4f

    invoke-virtual {v2, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 139
    :cond_4f
    :try_start_4f
    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    const/4 v2, 0x0

    if-eqz p2, :cond_85

    invoke-virtual {p6, v1}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string v1, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    const/16 v1, 0x7d0

    if-le p2, v1, :cond_6a

    goto :goto_85

    .line 145
    :cond_6a
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_80

    .line 146
    invoke-virtual {p6, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    const-string p6, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p2, p6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lorg/json/JSONObject;

    invoke-interface {p4, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_118

    .line 148
    :cond_80
    invoke-interface {p4, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_118

    .line 140
    :cond_85
    :goto_85
    new-instance p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$callDSHandlerWithTimeOut$2$type$1;

    invoke-direct {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$callDSHandlerWithTimeOut$2$type$1;-><init>()V

    invoke-virtual {p2}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object p2

    .line 141
    iget-object p4, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, p2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p2

    const-string p4, "gson.fromJson(retValue.toString(), type)"

    invoke-static {p2, p4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 142
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result p4

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    if-eqz p2, :cond_b3

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object v2

    :cond_b3
    invoke-interface {p3, p4, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object p2, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    iget-object p4, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p4, p6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p2, p4, p0}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->error(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_c1
    .catch Ljava/lang/Exception; {:try_start_4f .. :try_end_c1} :catch_c2

    goto :goto_118

    :catch_c2
    move-exception p2

    .line 152
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    .line 153
    sget-object p4, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    .line 154
    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "callHandlerWithTimeOut返回结果后异常,方法:"

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    iget-object p1, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {p1, p5}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 154
    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x2c

    invoke-virtual {p6, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 153
    invoke-virtual {p4, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    const/16 p1, 0x1b8e

    .line 161
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "js method: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, ", OnReturnValue error "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    .line 160
    invoke-interface {p3, p1, p4}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, p0}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->exception(Ljava/lang/String;Ljava/lang/String;)V

    :goto_118
    return-void
.end method

.method private static final callDSHandlerWithTimeOutNew$lambda$6(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "$method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timeoutRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 177
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandlerWithTimeOut返回结果,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 178
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 179
    :cond_3c
    sget-object p1, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;

    const-string p2, "retValue"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p4, p3}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->handleCallWebHandlerResult(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method private static final callDSHandlerWithTimeOutNew$lambda$7(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;Lorg/json/JSONObject;)V
    .registers 8

    const-string v0, "$method"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "$timeoutRunnable"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 192
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandlerWithTimeOut返回结果,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 193
    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_3c

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 194
    :cond_3c
    sget-object p1, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;

    const-string p2, "retValue"

    invoke-static {p4, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p0, p4, p3}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->handleCallWebHandlerResult(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public callDSHandler(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/json/JSONObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "回调DWebVie的callHandler,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 35
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;

    invoke-direct {v1, p1, p0, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda4;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;JLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 16
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

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 132
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandlerWithTimeOut2,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 133
    invoke-virtual {p0, p1, p6}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getCallJsTimeout(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Runnable;

    move-result-object v5

    .line 134
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_45

    invoke-virtual {v0, v5, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 135
    :cond_45
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p3

    new-instance p4, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda2;

    move-object v2, p4

    move-object v3, p1

    move-object v4, p0

    move-object v6, p6

    move-object v7, p5

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;)V

    invoke-virtual {p3, p1, p2, p4}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 14
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

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 89
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandlerWithTimeOut,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 90
    invoke-virtual {p0, p1, p4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getCallJsTimeout(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Ljava/lang/Runnable;

    move-result-object v5

    .line 91
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_49

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getJsCallTimeoutMills()J

    move-result-wide v1

    invoke-virtual {v0, v5, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 92
    :cond_49
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;

    move-object v2, v1

    move-object v3, p1

    move-object v4, p0

    move-object v6, p4

    move-object v7, p3

    move-object v8, p2

    invoke-direct/range {v2 .. v8}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;[Lorg/json/JSONObject;)V

    invoke-virtual {v0, p1, p2, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public callDSHandlerWithTimeOutNew(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 188
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandlerWithTimeOut精简2,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0, p1, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getCallJsTimeoutNew(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getJsCallTimeoutMills()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 191
    :cond_3f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/json/JSONObject;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    new-instance p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda1;

    invoke-direct {p2, p1, p0, v0, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1, v2, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public callDSHandlerWithTimeOutNew(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Lorg/json/JSONObject;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "method"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "args"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 173
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "callHandlerWithTimeOut精简,方法:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ",参数:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsCall(Ljava/lang/String;)V

    .line 174
    invoke-virtual {p0, p1, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getCallJsTimeoutNew(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Ljava/lang/Runnable;

    move-result-object v0

    .line 175
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->getManagerHandler()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_3f

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getJsCallTimeoutMills()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 176
    :cond_3f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v1

    new-instance v2, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda0;

    invoke-direct {v2, p1, p0, v0, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;Ljava/lang/Runnable;Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v1, p1, p2, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public abstract synthetic getAgentCacheDir()Ljava/lang/String;
.end method

.method public abstract synthetic getEnterFrom()Ljava/lang/String;
.end method

.method public getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 27
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewCallHandler;->gson:Lcom/google/gson/Gson;

    return-object v0
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
