.class final Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ToolsWebView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/view/ToolsWebView;->initView()V
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
.field final synthetic $defaultUserAgent:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;->$defaultUserAgent:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 108
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .registers 7

    const-string p1, "加载过程"

    const-string v0, "握手成功了"

    .line 110
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 112
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidFinish()V

    .line 113
    :cond_17
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$setLoadSucceed$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V

    .line 114
    sget-object p1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    .line 115
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x1b8f

    .line 117
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "jsConfigSDK超时, 但是dsBridge心跳接口通讯成功, WebView userAgent为:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$1;->$defaultUserAgent:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 115
    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 114
    invoke-virtual {p1, v0, v1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void
.end method
