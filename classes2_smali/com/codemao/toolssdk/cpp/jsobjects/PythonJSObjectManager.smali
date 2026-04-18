.class public Lcom/codemao/toolssdk/cpp/jsobjects/PythonJSObjectManager;
.super Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;
.source "PythonJSObjectManager.kt"


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
    .registers 4

    .line 12
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V

    return-void
.end method


# virtual methods
.method public final setCancelAudioRecordListener(Lkotlin/jvm/functions/Function0;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 31
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getPythonJsObject()Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->setCancelAudioRecordListener(Lkotlin/jvm/functions/Function0;)V

    :cond_9
    return-void
.end method

.method public final setStartAudioRecordListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 23
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getPythonJsObject()Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->setStartAudioRecordListener(Lkotlin/jvm/functions/Function1;)V

    :cond_9
    return-void
.end method

.method public final setStopAudioRecordListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getPythonJsObject()Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiRecord;->setStopAudioRecordListener(Lkotlin/jvm/functions/Function1;)V

    :cond_e
    return-void
.end method
