.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "CppWebViewBase.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$1$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 54
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$1$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResult;)V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_b

    .line 55
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/cpp/base/CppWebReturnResultBase;->isSuccess()Z

    move-result p1

    if-ne p1, v1, :cond_b

    const/4 v0, 0x1

    :cond_b
    if-eqz v0, :cond_19

    .line 56
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$1$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    invoke-static {p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->access$setViewSizeNotified$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;Z)V

    .line 57
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "通知web宽高变化成功"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    :cond_19
    return-void
.end method
