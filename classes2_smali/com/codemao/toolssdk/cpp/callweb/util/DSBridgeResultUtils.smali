.class public final Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;
.super Ljava/lang/Object;
.source "DSBridgeResultUtils.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;

.field private static final gson$delegate:Lkotlin/Lazy;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;

    .line 15
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils$gson$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils$gson$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    sput-object v0, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->gson$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final getErrorData(Lorg/json/JSONObject;)Lcom/codemao/toolssdk/model/dsbridge/IResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            ")",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils$getErrorData$type$1;

    invoke-direct {v0}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils$getErrorData$type$1;-><init>()V

    invoke-virtual {v0}, Lcom/google/gson/reflect/TypeToken;->getType()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 23
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/reflect/Type;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "gson.fromJson(returnValue.toString(), type)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    return-object p1
.end method

.method private final getExceptionResult(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;
    .registers 5

    .line 49
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;-><init>()V

    const/16 v1, 0x1b8e

    .line 50
    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setCode$toolssdk_release(I)V

    .line 51
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "js method: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", OnReturnValue error "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setErrorMessage$toolssdk_release(Ljava/lang/String;)V

    return-object v0
.end method

.method private final getFailData(Lcom/codemao/toolssdk/model/dsbridge/IResult;)Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;)",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;"
        }
    .end annotation

    .line 35
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;-><init>()V

    .line 36
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getStatus()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setCode$toolssdk_release(I)V

    .line 37
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;->getBody()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    if-eqz p1, :cond_19

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;->getMessage()Ljava/lang/String;

    move-result-object p1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setErrorMessage$toolssdk_release(Ljava/lang/String;)V

    return-object v0
.end method

.method private final getGson()Lcom/google/gson/Gson;
    .registers 2

    .line 15
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->gson$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/gson/Gson;

    return-object v0
.end method

.method private final getSuccessBody(Lorg/json/JSONObject;)Lorg/json/JSONObject;
    .registers 4

    const-string v0, "body"

    .line 27
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 28
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.json.JSONObject"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lorg/json/JSONObject;

    return-object p1

    :cond_14
    const/4 p1, 0x0

    return-object p1
.end method

.method private final getSuccessData(Lorg/json/JSONObject;)Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;
    .registers 4

    .line 42
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-direct {v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;-><init>()V

    .line 43
    sget-object v1, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->Companion:Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;->getSuccess$toolssdk_release()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setCode$toolssdk_release(I)V

    .line 44
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->setSuccessOriginData$toolssdk_release(Lorg/json/JSONObject;)V

    return-object v0
.end method

.method private final isFail(Lorg/json/JSONObject;)Z
    .registers 4

    const-string v0, "status"

    .line 18
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_22

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    sget-object v0, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->Companion:Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase$Companion;->getSuccess$toolssdk_release()I

    move-result v0

    if-le p1, v0, :cond_20

    goto :goto_22

    :cond_20
    const/4 p1, 0x0

    goto :goto_23

    :cond_22
    :goto_22
    const/4 p1, 0x1

    :goto_23
    return p1
.end method


# virtual methods
.method public final handleCallWebHandlerResult(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V
    .registers 6
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

    const-string v0, "methodName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "returnValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    :try_start_a
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->isFail(Lorg/json/JSONObject;)Z

    move-result v0

    if-eqz v0, :cond_2b

    .line 86
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getErrorData(Lorg/json/JSONObject;)Lcom/codemao/toolssdk/model/dsbridge/IResult;

    move-result-object v0

    if-eqz p3, :cond_1d

    .line 87
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getFailData(Lcom/codemao/toolssdk/model/dsbridge/IResult;)Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    :cond_1d
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getGson()Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2, p1}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->error(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f

    :cond_2b
    if-eqz p3, :cond_4f

    .line 90
    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getSuccessBody(Lorg/json/JSONObject;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getSuccessData(Lorg/json/JSONObject;)Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    move-result-object p2

    invoke-interface {p3, p2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_38
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_38} :catch_39

    goto :goto_4f

    :catch_39
    move-exception p2

    .line 93
    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    if-eqz p3, :cond_46

    .line 94
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/callweb/util/DSBridgeResultUtils;->getExceptionResult(Ljava/lang/String;)Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    move-result-object v0

    invoke-interface {p3, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    :cond_46
    sget-object p3, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2, p1}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->exception(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4f
    :goto_4f
    return-void
.end method
