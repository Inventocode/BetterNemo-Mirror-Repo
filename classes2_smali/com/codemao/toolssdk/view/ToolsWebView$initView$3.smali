.class final Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;
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
        "Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;",
        "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 157
    check-cast p1, Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;

    check-cast p2, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->invoke(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/codemao/toolssdk/jsapi/SyncInternalJsApi;Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;)V
    .registers 8

    const-string v0, "jsApi"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "event"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 158
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "CONFIG_SDK"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_e2

    .line 159
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_36

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getJsConfigSDKTimeoutRunnable$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_33

    const-string v1, "jsConfigSDKTimeoutRunnable"

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_33
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 161
    :cond_36
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_45

    invoke-virtual {p1}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->isSuccess()Z

    move-result p1

    if-ne p1, v2, :cond_45

    const/4 v1, 0x1

    :cond_45
    const-string p1, "加载过程"

    if-eqz v1, :cond_6a

    const-string p2, "configSdk成功"

    .line 163
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 165
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_5e

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidFinish()V

    .line 166
    :cond_5e
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1, v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$setLoadSucceed$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V

    .line 168
    sget-object p1, Lcom/codemao/toolssdk/manager/CMToolsManager;->Companion:Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager$Companion;->isDebug()Z

    goto/16 :goto_e2

    :cond_6a
    const-string v1, "configSdk失败"

    .line 172
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "configSdk失败："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object v2

    if-eqz v2, :cond_86

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    goto :goto_87

    :cond_86
    move-object v2, v0

    :goto_87
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object v2

    if-eqz v2, :cond_9a

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->getMessage()Ljava/lang/String;

    move-result-object v2

    goto :goto_9b

    :cond_9a
    move-object v2, v0

    :goto_9b
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 174
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$3;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_e2

    .line 175
    new-instance v1, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    .line 176
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object v2

    const/16 v3, 0x1b5a

    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->getStatus()Ljava/lang/Integer;

    move-result-object v2

    if-eqz v2, :cond_c2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_c4

    :cond_c2
    const/16 v2, 0x1b5a

    :goto_c4
    new-instance v4, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    .line 177
    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;->getValue()Lcom/codemao/toolssdk/model/dsbridge/InternalValue;

    move-result-object p2

    if-eqz p2, :cond_d2

    invoke-virtual {p2}, Lcom/codemao/toolssdk/model/dsbridge/InternalValue;->getMessage()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_d8

    .line 178
    :cond_d2
    sget-object p2, Lcom/codemao/toolssdk/constant/CMTStatus;->Companion:Lcom/codemao/toolssdk/constant/CMTStatus$Companion;

    invoke-virtual {p2, v3}, Lcom/codemao/toolssdk/constant/CMTStatus$Companion;->getDescription(I)Ljava/lang/String;

    move-result-object p2

    .line 176
    :cond_d8
    invoke-direct {v4, p2}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 175
    invoke-direct {v1, v2, v4}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 p2, 0x2

    .line 174
    invoke-static {p1, v1, v0, p2, v0}, Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;->toolLoadDidFail$default(Lcom/codemao/toolssdk/view/CMToolSessionListener;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;ILjava/lang/Object;)V

    :cond_e2
    :goto_e2
    return-void
.end method
