.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppWebViewBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->sendOnceHandShake()V
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
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 117
    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;->invoke(Lorg/json/JSONObject;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lorg/json/JSONObject;)V
    .registers 6

    .line 118
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "internalJsApi收到握手成功,回调didFinish"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 120
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFinish()V

    .line 121
    sget-object p1, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager;->Companion:Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;

    .line 122
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 124
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsConfigSDK超时, 但是dsBridge心跳接口通讯成功, WebView userAgent为:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getDefaultUA()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x1b8f

    .line 122
    invoke-direct {v0, v2, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x0

    .line 121
    invoke-virtual {p1, v0, v1}, Lcom/codemao/toolssdk/cpp/manager/WoodToolsManager$Companion;->sendErrorReport(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    return-void
.end method
