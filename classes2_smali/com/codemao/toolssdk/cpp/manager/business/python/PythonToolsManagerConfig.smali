.class public abstract Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;
.super Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerRegExp;
.source "PythonToolsManagerConfig.kt"


# instance fields
.field private mediaHelper:Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

.field private timerListener:Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;

.field private final uploadHelper$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerRegExp;-><init>()V

    .line 25
    sget-object v0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$uploadHelper$2;->INSTANCE:Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$uploadHelper$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->uploadHelper$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMediaHelper$p(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)Lcom/codemao/toolssdk/python/util/PythonMediaHelper;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->mediaHelper:Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    return-object p0
.end method

.method public static final synthetic access$getUploadHelper(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)Lcom/codemao/toolssdk/python/other/UploadHelper;
    .registers 1

    .line 19
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->getUploadHelper()Lcom/codemao/toolssdk/python/other/UploadHelper;

    move-result-object p0

    return-object p0
.end method

.method private final getUploadHelper()Lcom/codemao/toolssdk/python/other/UploadHelper;
    .registers 2

    .line 25
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->uploadHelper$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/toolssdk/python/other/UploadHelper;

    return-object v0
.end method

.method private final registerCaptureImage()V
    .registers 3

    .line 55
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_e

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$registerCaptureImage$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)V

    invoke-interface {v0, v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBiz;->setPythonCapture(Lkotlin/jvm/functions/Function1;)V

    :cond_e
    return-void
.end method

.method private final setAudioRecordListener()V
    .registers 3

    .line 37
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_14

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$1;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/PythonJSObjectManager;->setStartAudioRecordListener(Lkotlin/jvm/functions/Function1;)V

    .line 40
    :cond_14
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_28

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_28

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$2;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$2;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/PythonJSObjectManager;->setStopAudioRecordListener(Lkotlin/jvm/functions/Function1;)V

    .line 43
    :cond_28
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_3c

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_3c

    new-instance v1, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$3;

    invoke-direct {v1, p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig$setAudioRecordListener$3;-><init>(Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/PythonJSObjectManager;->setCancelAudioRecordListener(Lkotlin/jvm/functions/Function0;)V

    :cond_3c
    return-void
.end method


# virtual methods
.method public final bindUserAgentPython(Ljava/lang/String;)V
    .registers 5

    .line 83
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_49

    .line 85
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    if-eqz v0, :cond_1e

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1f

    :cond_1e
    move-object v0, v1

    .line 86
    :goto_1f
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-interface {v2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v2

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    :cond_2f
    if-nez v1, :cond_32

    goto :goto_49

    :cond_32
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " codemao-"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :cond_49
    :goto_49
    return-void
.end method

.method public destroy()V
    .registers 3

    .line 140
    invoke-super {p0}, Lcom/codemao/toolssdk/cpp/manager/business/AIKidsToolsManagerBiz;->destroy()V

    .line 141
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->timerListener:Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;

    if-eqz v0, :cond_12

    .line 142
    sget-object v1, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->INSTANCE:Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils;->removeListener$toolssdk_release(Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;)V

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->timerListener:Lcom/codemao/toolssdk/python/util/PythonMobileTimerUtils$TimerListener;

    .line 145
    :cond_12
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->mediaHelper:Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    if-eqz v0, :cond_19

    invoke-virtual {v0}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->onDestory()V

    :cond_19
    return-void
.end method

.method public final initPythonManager()V
    .registers 4

    .line 28
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "初始化python manager"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 29
    new-instance v0, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    invoke-direct {v0}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;-><init>()V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->mediaHelper:Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    .line 30
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->setAudioRecordListener()V

    .line 31
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->registerCaptureImage()V

    .line 32
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getJsObjectsManager()Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManager;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->getPythonJsObject()Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 33
    new-instance v1, Lcom/codemao/toolssdk/python/jsobjects/filehelper/ExportDialogHelper;

    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/python/jsobjects/filehelper/ExportDialogHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApiFile;->setExportHelper$toolssdk_release(Lcom/codemao/toolssdk/python/jsobjects/filehelper/IExportDialogHelper;)V

    :cond_32
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 7

    .line 130
    invoke-super {p0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->onActivityResult(IILandroid/content/Intent;)V

    .line 131
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pythonManager的onActivityResult，requestCode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dPytWork(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/manager/CppToolsManagerFields;->getWRCppView()Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-interface {v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewConfig;->getChromeClient()Landroid/webkit/WebChromeClient;

    move-result-object v0

    goto :goto_25

    :cond_24
    const/4 v0, 0x0

    .line 133
    :goto_25
    instance-of v1, v0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;

    if-eqz v1, :cond_2e

    .line 134
    check-cast v0, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;

    invoke-virtual {v0, p1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/client/ToolsWebChromeClientPython;->onActivityResult(IILandroid/content/Intent;)V

    .line 136
    :cond_2e
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->mediaHelper:Lcom/codemao/toolssdk/python/util/PythonMediaHelper;

    if-eqz v0, :cond_39

    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->getUploadHelper()Lcom/codemao/toolssdk/python/other/UploadHelper;

    move-result-object v1

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/codemao/toolssdk/python/util/PythonMediaHelper;->onActivityResult(IILandroid/content/Intent;Lcom/codemao/toolssdk/python/other/UploadHelper;)V

    :cond_39
    return-void
.end method

.method public final setUploadConfigPython(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lokhttp3/Interceptor;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "interceptors"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "projectName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "baseUrl"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "初始化上传类"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dPythonPhoto(Ljava/lang/String;)V

    .line 99
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/manager/business/python/PythonToolsManagerConfig;->getUploadHelper()Lcom/codemao/toolssdk/python/other/UploadHelper;

    move-result-object v0

    invoke-virtual {v0, p3, p2, p1}, Lcom/codemao/toolssdk/python/other/UploadHelper;->init(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method
