.class public final Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;
.super Ljava/lang/Object;
.source "PostMessageManagerImpl.kt"


# static fields
.field public static final INSTANCE:Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;

    invoke-direct {v0}, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;-><init>()V

    sput-object v0, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;->INSTANCE:Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getBcmChangeState(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/cpp/view/WoodWebView;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/GetBcmChangeStateResult;",
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

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;

    const-string v1, "getBcmChangeState"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 86
    new-instance v1, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl$getBcmChangeState$1;

    invoke-direct {v1, p2}, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl$getBcmChangeState$1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {p0, p1, v0, v1, p3}, Lcom/codemao/toolssdk/evolving/android/callweb/PostMessageManagerImpl;->postNekoAsyncMessageEvent(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public postNekoAsyncMessageEvent(Lcom/codemao/toolssdk/cpp/view/WoodWebView;Lcom/codemao/toolssdk/model/dsbridge/MessageOptions;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/codemao/toolssdk/cpp/view/WoodWebView;",
            "Lcom/codemao/toolssdk/model/dsbridge/MessageOptions<",
            "TT;>;",
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

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolsEvent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    sget-object v0, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb;->Companion:Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;

    .line 122
    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    invoke-virtual {v2, p2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 121
    invoke-virtual {v0, p1, v1, p3, p4}, Lcom/codemao/toolssdk/cpp/callweb/CppOnMessageCallWeb$Companion;->postAsyncEvent(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewCallHandler;Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
