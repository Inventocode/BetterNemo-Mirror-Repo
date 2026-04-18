.class public final Lcom/codemao/toolssdk/jsapi/EventJsApi;
.super Ljava/lang/Object;
.source "EventJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/EventJsApi$Companion;
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final eventCallback:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private final gson:Lcom/google/gson/Gson;


# direct methods
.method public static synthetic $r8$lambda$rG4Twmx1AtpqM-vRa5SmE5yDb_U(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/EventJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/toolssdk/jsapi/EventJsApi;->getSafeAreaTopBarHeight$lambda$0(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/EventJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/EventJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/EventJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lkotlin/jvm/functions/Function1;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventCallback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->context:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->eventCallback:Lkotlin/jvm/functions/Function1;

    .line 25
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method private static final getSafeAreaTopBarHeight$lambda$0(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/EventJsApi;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;)V
    .registers 6

    const-string v0, "$handler"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_14

    .line 60
    iget-boolean v2, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->hasNotch:Z

    if-ne v2, v0, :cond_14

    const/4 v2, 0x1

    goto :goto_15

    :cond_14
    const/4 v2, 0x0

    :goto_15
    if-eqz v2, :cond_1c

    iget-object v2, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    if-eqz v2, :cond_1c

    goto :goto_1d

    :cond_1c
    const/4 v0, 0x0

    :goto_1d
    if-eqz v0, :cond_33

    .line 62
    iget-object v0, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_33

    .line 63
    iget-object p2, p2, Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenInfo;->notchRects:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Rect;

    iget p2, p2, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    goto :goto_34

    :cond_33
    const/4 p2, 0x0

    .line 66
    :goto_34
    iget-object p1, p1, Lcom/codemao/toolssdk/jsapi/EventJsApi;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->px2dp(Landroid/content/Context;F)I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getSafeAreaTopBarHeight(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 5
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

    .line 52
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->context:Landroid/content/Context;

    instance-of v0, p1, Landroid/app/Activity;

    if-eqz v0, :cond_13

    .line 53
    check-cast p1, Landroid/app/Activity;

    goto :goto_14

    :cond_13
    const/4 p1, 0x0

    :goto_14
    if-eqz p1, :cond_23

    .line 56
    invoke-static {}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getInstance()Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/jsapi/EventJsApi$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2, p0}, Lcom/codemao/toolssdk/jsapi/EventJsApi$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/dsbridge/CompletionHandler;Lcom/codemao/toolssdk/jsapi/EventJsApi;)V

    invoke-virtual {v0, p1, v1}, Lcom/codemao/toolssdk/utils/notchscreen/NotchScreenManager;->getNotchInfo(Landroid/app/Activity;Lcom/codemao/toolssdk/utils/notchscreen/INotchScreen$NotchScreenCallback;)V

    goto :goto_28

    :cond_23
    const-string p1, "0"

    .line 69
    invoke-interface {p2, p1}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete(Ljava/lang/Object;)V

    :goto_28
    return-void
.end method

.method public final on(Ljava/lang/Object;)Lorg/json/JSONObject;
    .registers 4
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->gson:Lcom/google/gson/Gson;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "on: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "TAG"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->eventCallback:Lkotlin/jvm/functions/Function1;

    const-string v1, "event"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    new-instance p1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x7d0

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 33
    new-instance v0, Lorg/json/JSONObject;

    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v1, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public final setReturnButtonVisible(Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/CompletionHandler;)V
    .registers 8
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

    .line 38
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 39
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/EventJsApi;->eventCallback:Lkotlin/jvm/functions/Function1;

    .line 40
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    .line 41
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/Target;

    sget-object v3, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->getToolsData()Lcom/codemao/toolssdk/model/dsbridge/ToolsData;

    move-result-object v3

    if-eqz v3, :cond_24

    invoke-virtual {v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsData;->getToolType()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_26

    :cond_24
    const-string v3, "KN"

    :cond_26
    sget-object v4, Lcom/codemao/toolssdk/model/dsbridge/Target;->Companion:Lcom/codemao/toolssdk/model/dsbridge/Target$Companion;

    invoke-virtual {v4}, Lcom/codemao/toolssdk/model/dsbridge/Target$Companion;->getTool()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/codemao/toolssdk/model/dsbridge/Target;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    new-instance v3, Lkotlin/Pair;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    const-string v4, "visible"

    invoke-direct {v3, v4, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-static {v3}, Lkotlin/collections/MapsKt;->mapOf(Lkotlin/Pair;)Ljava/util/Map;

    move-result-object p1

    const-string v3, "BackButton"

    .line 40
    invoke-direct {v1, v2, v3, p1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;-><init>(Lcom/codemao/toolssdk/model/dsbridge/Target;Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    invoke-interface {p2}, Lcom/codemao/toolssdk/dsbridge/CompletionHandler;->complete()V

    return-void
.end method
