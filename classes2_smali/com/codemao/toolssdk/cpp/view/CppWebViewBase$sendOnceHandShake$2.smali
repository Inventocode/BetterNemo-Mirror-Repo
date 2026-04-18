.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CppWebViewBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


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
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/Integer;",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 117
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;->invoke(ILjava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(ILjava/lang/String;)V
    .registers 6

    .line 129
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "internalJsApi收到握手失败,回调didFail"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 130
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    .line 131
    new-instance p2, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 133
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "jsConfigSDK超时, 并且dsBridge心跳接口通讯失败, WebView userAgent为:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$sendOnceHandShake$2;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getDefaultUA()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x1b8f

    .line 131
    invoke-direct {p2, v1, v0}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 130
    invoke-interface {p1, p2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    return-void
.end method
