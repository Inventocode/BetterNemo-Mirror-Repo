.class final Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;
.super Lkotlin/jvm/internal/Lambda;
.source "ToolsWebView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
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

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    iput-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;->$defaultUserAgent:Ljava/lang/String;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 108
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .registers 7

    const-string p1, "加载过程"

    const-string p2, "握手也失败了"

    .line 122
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_37

    .line 125
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v0, 0x1b8f

    .line 127
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "jsConfigSDK超时, 并且dsBridge心跳接口通讯失败, WebView userAgent为:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$1$2;->$defaultUserAgent:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-direct {p2, v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 v0, 0x0

    .line 124
    invoke-virtual {p1, p2, v0}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;)V

    :cond_37
    return-void
.end method
