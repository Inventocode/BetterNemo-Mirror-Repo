.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CppWebViewBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->addJavaScriptObjectsListener(Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$2;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 91
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$2;->invoke(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$2;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    invoke-interface {v0, p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V

    return-void
.end method
