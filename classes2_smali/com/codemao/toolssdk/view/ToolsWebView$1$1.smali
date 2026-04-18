.class final Lcom/codemao/toolssdk/view/ToolsWebView$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "ToolsWebView.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/String;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$1$1;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 95
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$1$1;->invoke(Ljava/lang/String;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;)V
    .registers 3

    .line 96
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$1$1;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$setViewSizeNotified$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V

    .line 97
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "通知web宽高变化成功"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    return-void
.end method
