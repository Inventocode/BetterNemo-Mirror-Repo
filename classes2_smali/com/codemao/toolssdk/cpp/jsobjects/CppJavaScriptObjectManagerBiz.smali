.class public Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBiz;
.super Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;
.source "CppJavaScriptObjectManagerBiz.kt"


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
    .registers 4

    .line 15
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V

    return-void
.end method


# virtual methods
.method public final setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 29
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "设置摄像头关闭的回调："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 30
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getWoodCameraJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V

    .line 31
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getFileJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->setCameraCloseCallback(Lkotlin/jvm/functions/Function0;)V

    :cond_28
    return-void
.end method

.method public final setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 22
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "设置摄像头开启的回调："

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 23
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getDeviceJsObject()Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    .line 24
    :cond_1f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getFileJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    .line 25
    :cond_28
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getWoodCameraJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    move-result-object v0

    if-eqz v0, :cond_31

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->setCameraPrepareListener(Lkotlin/jvm/functions/Function1;)V

    :cond_31
    return-void
.end method

.method public final setPythonCapture(Lkotlin/jvm/functions/Function1;)V
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

    .line 56
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getFileJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->setCaptureImageListener(Lkotlin/jvm/functions/Function1;)V

    :cond_9
    return-void
.end method

.method public final setVideoPlayCompleteListener(Lkotlin/jvm/functions/Function2;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/codelab/CodeLabVideoData;",
            "-",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Boolean;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getVideoJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;

    move-result-object v0

    if-eqz v0, :cond_9

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->setVideoListener(Lkotlin/jvm/functions/Function2;)V

    :cond_9
    return-void
.end method
