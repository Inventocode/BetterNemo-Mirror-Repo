.class public final Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;
.super Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;
.source "VideoJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVideoJsApi.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VideoJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi\n+ 2 CppBaseJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi\n*L\n1#1,42:1\n17#2,5:43\n*S KotlinDebug\n*F\n+ 1 VideoJsApi.kt\ncom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi\n*L\n28#1:43,5\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;

.field private static final namespace:Ljava/lang/String;


# instance fields
.field private playCallback:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private videoListener:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
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
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;

    const-string v0, "video"

    .line 16
    sput-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->namespace:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNamespace$cp()Ljava/lang/String;
    .registers 1

    .line 11
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->namespace:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public final play(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 7
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

    const-string v0, "handler"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 18
    :try_start_b
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBaseJsApi;->gson()Lcom/google/gson/Gson;

    move-result-object v1

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v2, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    invoke-virtual {v1, p1, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_1b} :catch_1c

    goto :goto_34

    :catch_1c
    move-exception p1

    .line 20
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "数据解析异常:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJSI(Ljava/lang/String;)V

    move-object p1, v0

    .line 28
    :goto_34
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;

    .line 29
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "前端数据:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPlayer(Ljava/lang/String;)V

    .line 30
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->playCallback:Lkotlin/jvm/functions/Function2;

    .line 31
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$play$1;

    invoke-direct {v0, p2, p0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$play$1;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->playCallback:Lkotlin/jvm/functions/Function2;

    .line 35
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->videoListener:Lkotlin/jvm/functions/Function2;

    if-eqz p2, :cond_5c

    invoke-interface {p2, p1, v0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    return-void
.end method

.method public final setVideoListener(Lkotlin/jvm/functions/Function2;)V
    .registers 2
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

    .line 39
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->videoListener:Lkotlin/jvm/functions/Function2;

    return-void
.end method
