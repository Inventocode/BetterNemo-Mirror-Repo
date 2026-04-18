.class public final Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;
.super Ljava/lang/Object;
.source "CppPlayerOnMessageCallWeb.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 2

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;-><init>()V

    return-void
.end method

.method private final postPlayerMessage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;",
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

    if-eqz p1, :cond_12

    const/4 v0, 0x1

    new-array v0, v0, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    .line 20
    new-instance p2, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$postPlayerMessage$1;

    invoke-direct {p2, p3}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$postPlayerMessage$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    const-string p3, "application.onPlayerMessage"

    invoke-interface {p1, p3, v0, p2, p4}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;->callDSHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_12
    return-void
.end method


# virtual methods
.method public final enableVirtualKeyBoardBtn(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 71
    :cond_3
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/EnableVirtualKeyBoardBtnOption;

    invoke-direct {v0, p2}, Lcom/codemao/toolssdk/model/dsbridge/EnableVirtualKeyBoardBtnOption;-><init>(Z)V

    .line 72
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "enableVirtualKeyBoardBtn"

    invoke-direct {p2, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 75
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {v0, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 74
    sget-object p2, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$enableVirtualKeyBoardBtn$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$enableVirtualKeyBoardBtn$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$enableVirtualKeyBoardBtn$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$enableVirtualKeyBoardBtn$2;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->postPlayerMessage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final resetPlayer(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 59
    :cond_3
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const/4 v1, 0x0

    const-string v2, "resetPlayer"

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 60
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 62
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 61
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$resetPlayer$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$resetPlayer$1;

    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$resetPlayer$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$resetPlayer$2;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->postPlayerMessage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setPlayerUI(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/model/dsbridge/SetPlayerUIOption;)V
    .registers 5

    const-string v0, "option"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 33
    :cond_8
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "setPlayerUI"

    invoke-direct {v0, v1, p2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    new-instance p2, Lcom/google/gson/Gson;

    invoke-direct {p2}, Lcom/google/gson/Gson;-><init>()V

    .line 36
    new-instance v1, Lorg/json/JSONObject;

    invoke-virtual {p2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 35
    sget-object p2, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$setPlayerUI$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$setPlayerUI$1;

    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$setPlayerUI$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$setPlayerUI$2;

    invoke-direct {p0, p1, v1, p2, v0}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->postPlayerMessage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final startWork(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 47
    :cond_3
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const/4 v1, 0x0

    const-string v2, "startWork"

    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 48
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 50
    new-instance v2, Lorg/json/JSONObject;

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 49
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$startWork$1;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$startWork$1;

    sget-object v1, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$startWork$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion$startWork$2;

    invoke-direct {p0, p1, v2, v0, v1}, Lcom/codemao/toolssdk/cpp/callweb/CppPlayerOnMessageCallWeb$Companion;->postPlayerMessage(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
