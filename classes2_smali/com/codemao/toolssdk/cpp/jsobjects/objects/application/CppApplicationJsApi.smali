.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/PythonOJApplicationJsApi;
.source "CppApplicationJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCppApplicationJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CppApplicationJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi\n+ 2 ArrayIntrinsics.kt\nkotlin/ArrayIntrinsicsKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,432:1\n26#2:433\n26#2:434\n1851#3,2:435\n1851#3,2:437\n*S KotlinDebug\n*F\n+ 1 CppApplicationJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi\n*L\n158#1:433\n164#1:434\n192#1:435,2\n203#1:437,2\n*E\n"
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 2

    .line 19
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/PythonOJApplicationJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 24
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->gson:Lcom/google/gson/Gson;

    return-void
.end method


# virtual methods
.method public final saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_19

    .line 113
    new-instance v1, Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v3, Lcom/codemao/toolssdk/model/dsbridge/SaveOption;

    invoke-direct {v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/SaveOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "application.saveWork"

    .line 111
    invoke-interface {v0, p1, v1, p2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;->callDSHandlerWithTimeOutNew(Ljava/lang/String;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;)V

    :cond_19
    return-void
.end method

.method public final setUserData(Lcom/codemao/toolssdk/model/dsbridge/UserData;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 9
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

    if-nez p1, :cond_d

    return-void

    .line 38
    :cond_d
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_2c

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 40
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 38
    new-instance p1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi$setUserData$1;

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi$setUserData$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string p2, "application.setUserData"

    invoke-interface {v0, p2, v1, p1, p3}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_2c
    return-void
.end method
