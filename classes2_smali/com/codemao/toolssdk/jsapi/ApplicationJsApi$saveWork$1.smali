.class final Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ApplicationJsApi.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->saveWork(Ljava/lang/String;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lorg/json/JSONObject;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $startTime:J

.field final synthetic $success:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;JLkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;",
            "J",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/SaveResult;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->this$0:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    iput-wide p2, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->$startTime:J

    iput-object p4, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->$success:Lkotlin/jvm/functions/Function1;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 94
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .registers 12

    .line 98
    sget-object v0, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    .line 100
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->this$0:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object v1

    move-object v3, v1

    goto :goto_16

    :cond_15
    move-object v3, v2

    .line 101
    :goto_16
    iget-object v1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->this$0:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->getToolsWebView()Lcom/codemao/toolssdk/view/ToolsWebView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_28

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    goto :goto_29

    :cond_28
    move-object v4, v2

    :goto_29
    const/4 v5, 0x0

    .line 102
    iget-wide v1, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->$startTime:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const/4 v7, 0x0

    const/16 v8, 0x28

    const/4 v9, 0x0

    const/4 v1, 0x1

    move-object v2, v3

    move-object v3, v4

    move-object v4, v5

    move-object v5, v6

    move-object v6, v7

    move v7, v8

    move-object v8, v9

    .line 98
    invoke-static/range {v0 .. v8}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->save$default(Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;ILjava/lang/Object;)V

    .line 104
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->this$0:Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;

    invoke-static {v0}, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;->access$getGson$p(Lcom/codemao/toolssdk/jsapi/ApplicationJsApi;)Lcom/google/gson/Gson;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-class v1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    invoke-virtual {v0, p1, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    .line 105
    iget-object v0, p0, Lcom/codemao/toolssdk/jsapi/ApplicationJsApi$saveWork$1;->$success:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
