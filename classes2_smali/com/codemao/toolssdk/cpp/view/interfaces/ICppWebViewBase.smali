.class public interface abstract Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;
.super Ljava/lang/Object;
.source "ICppWebViewBase.kt"


# virtual methods
.method public abstract addJavaScriptObjects()V
.end method

.method public abstract clearEventTime(Ljava/lang/String;)V
.end method

.method public abstract destroyAllHandler()V
.end method

.method public abstract destroyAllJavaScriptObject()V
.end method

.method public abstract getCurrentView()Landroid/view/View;
.end method

.method public abstract getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;
.end method

.method public abstract getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;
.end method

.method public abstract getLifecycleCoroutineScope()Lkotlinx/coroutines/CoroutineScope;
.end method

.method public abstract getLogEventDuration(Ljava/lang/String;)Ljava/lang/Long;
.end method

.method public abstract getManagerHandler()Landroid/os/Handler;
.end method

.method public abstract getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;
.end method

.method public abstract getViewActivity()Landroid/app/Activity;
.end method

.method public abstract getViewContext()Landroid/content/Context;
.end method

.method public abstract getViewHandler()Landroid/os/Handler;
.end method

.method public abstract launchConfigSdkTimeOutRunnable()V
.end method

.method public abstract loadFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/toolssdk/model/dsbridge/IResult<",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsError;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract loadFinalUrl(Ljava/lang/String;)V
.end method

.method public abstract loadFinish()V
.end method

.method public abstract loadStart()V
.end method

.method public abstract logEventTimeEnd(Ljava/lang/String;)V
.end method

.method public abstract logEventTimeStart(Ljava/lang/String;)V
.end method

.method public abstract onDestroy()V
.end method

.method public abstract onResume()V
.end method

.method public abstract onStop()V
.end method

.method public abstract removeConfigSdkTimeOutRunnable()V
.end method

.method public abstract setToolsManager(Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
.end method

.method public abstract startHeartBeat()V
.end method

.method public abstract toolSessionEvent(Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;)V
.end method
