.class public final Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;
.super Ljava/lang/Object;
.source "ApplicationJsApi.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$Companion;
    }
.end annotation


# instance fields
.field private final gson:Lcom/google/gson/Gson;

.field private toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 3

    const-string v0, "toolsWebView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 16
    new-instance p1, Lcom/google/gson/Gson;

    invoke-direct {p1}, Lcom/google/gson/Gson;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->gson:Lcom/google/gson/Gson;

    return-void
.end method

.method public static final synthetic access$getGson$p(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;)Lcom/google/gson/Gson;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->gson:Lcom/google/gson/Gson;

    return-object p0
.end method


# virtual methods
.method public final addMaterials([Ljava/lang/String;[Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
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

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/RokiAddMaterialsData;

    invoke-direct {v0, p1, p2}, Lcom/codemao/toolssdk/model/dsbridge/compat/ai/RokiAddMaterialsData;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 141
    iget-object p1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    if-eqz p1, :cond_2e

    const/4 p2, 0x1

    new-array p2, p2, [Lorg/json/JSONObject;

    const/4 v1, 0x0

    .line 143
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v2, p2, v1

    .line 141
    new-instance v0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$addMaterials$1;

    invoke-direct {v0, p3}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$addMaterials$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string p3, "application.addMaterials"

    invoke-virtual {p1, p3, p2, v0, p4}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_2e
    return-void
.end method

.method public final getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;
    .registers 2

    .line 11
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    return-object v0
.end method

.method public final saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
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

    .line 93
    :cond_d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 94
    iget-object v2, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v3, 0x1

    new-array v3, v3, [Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 96
    new-instance v5, Lorg/json/JSONObject;

    iget-object v6, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->gson:Lcom/google/gson/Gson;

    new-instance v7, Lcom/codemao/toolssdk/model/dsbridge/SaveOption;

    invoke-direct {v7, p1}, Lcom/codemao/toolssdk/model/dsbridge/SaveOption;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v5, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v5, v3, v4

    .line 94
    new-instance p1, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;-><init>(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;JLkotlin/jvm/functions/Function1;)V

    new-instance p2, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$2;

    invoke-direct {p2, p0, v0, v1, p3}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$2;-><init>(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;JLkotlin/jvm/functions/Function2;)V

    const-string p3, "application.saveWork"

    invoke-virtual {v2, p3, v3, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public final setConfigurations(Ljava/util/Map;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function2;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;",
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

    const-string v0, "option"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "success"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    .line 128
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    const/4 p1, 0x0

    aput-object v2, v1, p1

    .line 126
    new-instance p1, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$setConfigurations$1;

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$setConfigurations$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string p2, "application.setConfigurations"

    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

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

    .line 26
    :cond_d
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->toolsWebView:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v1, 0x1

    new-array v1, v1, [Lorg/json/JSONObject;

    const/4 v2, 0x0

    .line 28
    new-instance v3, Lorg/json/JSONObject;

    iget-object v4, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->gson:Lcom/google/gson/Gson;

    invoke-virtual {v4, p1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v3, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    aput-object v3, v1, v2

    .line 26
    new-instance p1, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$setUserData$1;

    invoke-direct {p1, p2}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$setUserData$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    const-string p2, "application.setUserData"

    invoke-virtual {v0, p2, v1, p1, p3}, Lcom/codemao/toolssdk/view/ToolsWebView;->callHandlerWithTimeOut(Ljava/lang/String;[Lorg/json/JSONObject;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    return-void
.end method
