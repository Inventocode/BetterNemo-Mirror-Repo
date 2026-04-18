.class final Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;
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
        "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 80
    check-cast p1, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;->invoke(Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V
    .registers 5

    const-string v0, "event"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "判断configSDK是否成功:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CONFIG_SDK"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 83
    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {v0}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->isSuccess()Z

    move-result v0

    if-ne v0, v1, :cond_37

    const/4 v0, 0x1

    goto :goto_38

    :cond_37
    const/4 v0, 0x0

    :goto_38
    if-eqz v0, :cond_41

    .line 85
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    const/4 v0, 0x0

    invoke-static {p1, v1, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->access$configSdkResult(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;ZLcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V

    goto :goto_46

    .line 87
    :cond_41
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase$addJavaScriptObjectsListener$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;

    invoke-static {v0, v2, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;->access$configSdkResult(Lcom/codemao/toolssdk/cpp/view/CppWebViewBase;ZLcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V

    :cond_46
    :goto_46
    return-void
.end method
