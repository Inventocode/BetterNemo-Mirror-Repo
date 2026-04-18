.class public Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;
.super Ljava/lang/Object;
.source "CppJavaScriptObjectManagerBase.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCppJavaScriptObjectManagerBase.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CppJavaScriptObjectManagerBase.kt\ncom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,218:1\n1#2:219\n*E\n"
.end annotation


# instance fields
.field private accountJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

.field private aiKidsJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

.field private applicationJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

.field private bluetoothJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

.field private deviceJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

.field private eventJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

.field private fileJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

.field private networkJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

.field private pythonJsApi:Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

.field private recordJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

.field private syncInternalJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

.field private final toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

.field private final toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

.field private videoJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;

.field private final webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

.field private woodCameraJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;)V
    .registers 4

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    .line 29
    iput-object p2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    .line 30
    iput-object p3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    return-void
.end method

.method private final enableAIKidsJsApi()V
    .registers 4

    .line 188
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->aiKidsJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    const-string v2, "socketIO"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method private final enableNetworkJsApi()V
    .registers 4

    .line 196
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;-><init>(Lcom/codemao/toolssdk/cpp/jsobjects/network/INetworkProvider;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->networkJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    .line 197
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v1, :cond_12

    const-string v2, "network"

    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_12
    return-void
.end method

.method private final enablePythonJSI()V
    .registers 4

    .line 181
    sget-object v0, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;->INSTANCE:Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/consts/ConstWoodEnable;->getEnableOld()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 182
    new-instance v0, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->pythonJsApi:Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    .line 183
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v1, :cond_1a

    const-string v2, ""

    invoke-virtual {v1, v0, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1a
    return-void
.end method

.method private final enableWoodCameraJsApi()V
    .registers 4

    .line 192
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->woodCameraJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    const-string v2, "camera"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method


# virtual methods
.method public final account()V
    .registers 4

    .line 150
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->accountJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    const-string v2, "account"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final addJsObjects()V
    .registers 3

    .line 69
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->enableApplicationJs()V

    .line 70
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->file()V

    .line 71
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->audioRecord()V

    .line 72
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->bluetooth()V

    .line 73
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->event()V

    .line 74
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->internal()V

    .line 75
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->device()V

    .line 76
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->audioPlay()V

    .line 77
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->dialogInput()V

    .line 78
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->account()V

    .line 79
    invoke-virtual {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->enableVideoJsApi()V

    .line 80
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->enablePythonJSI()V

    .line 81
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->enableAIKidsJsApi()V

    .line 82
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->enableWoodCameraJsApi()V

    .line 83
    invoke-direct {p0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->enableNetworkJsApi()V

    .line 84
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "添加所有的jsObject对象"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method

.method public final audioPlay()V
    .registers 4

    .line 140
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_10

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/audio/CppAudioJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    const-string v2, "audio"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public final audioRecord()V
    .registers 4

    .line 103
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->recordJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    const-string v2, "recorder"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final bluetooth()V
    .registers 4

    .line 107
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_f

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->bluetoothJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    sget-object v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi$Companion;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_f
    return-void
.end method

.method protected createDeviceJsApi(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;
    .registers 3

    .line 65
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    invoke-direct {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    return-object v0
.end method

.method public final device()V
    .registers 4

    .line 136
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->deviceJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    const-string v2, "device"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final dialogInput()V
    .registers 4

    .line 144
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_14

    .line 145
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDialogJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    const-string v2, "dialog"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method protected final enableApplicationJs()V
    .registers 4

    .line 88
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->applicationJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    const-string v2, "application"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final enableVideoJsApi()V
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_1f

    .line 155
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "it.context"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->videoJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;

    .line 156
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    sget-object v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi$Companion;->getNamespace()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_1f
    return-void
.end method

.method public final event()V
    .registers 4

    .line 115
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->eventJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

    const-string v2, "events"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    :cond_b
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v1, "添加了jsEvent对象,监听events.on事件"

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/utils/ExtLog;->dJsEvent(Ljava/lang/String;)V

    return-void
.end method

.method public final file()V
    .registers 4

    .line 92
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_14

    .line 93
    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->fileJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    .line 94
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_14

    const-string v2, "files"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_14
    return-void
.end method

.method public final getAccountJsObject()Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;
    .registers 2

    .line 165
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->accountJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    return-object v0
.end method

.method public final getApplication()Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->applicationJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    return-object v0
.end method

.method public final getDeviceJsObject()Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;
    .registers 2

    .line 169
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->deviceJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    return-object v0
.end method

.method public final getFileJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;
    .registers 2

    .line 99
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->fileJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;

    return-object v0
.end method

.method public final getPythonJsObject()Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->pythonJsApi:Lcom/codemao/toolssdk/python/jsobjects/PythonJsApi;

    return-object v0
.end method

.method public final getVideoJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;
    .registers 2

    .line 173
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->videoJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/VideoJsApi;

    return-object v0
.end method

.method public final getWoodCameraJsApi()Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;
    .registers 2

    .line 177
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->woodCameraJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    return-object v0
.end method

.method public final initJsObjects()V
    .registers 5

    .line 53
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->applicationJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/application/CppApplicationJsApi;

    .line 54
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    invoke-direct {v1, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->recordJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    .line 55
    :cond_14
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->bluetoothJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    .line 56
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->syncInternalJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    .line 57
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->createDeviceJsApi(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->deviceJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    .line 58
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->accountJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    .line 59
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    const/4 v2, 0x0

    if-eqz v1, :cond_43

    invoke-interface {v1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->getViewContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_44

    :cond_43
    move-object v1, v2

    :goto_44
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsManager:Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    if-eqz v3, :cond_4c

    invoke-interface {v3}, Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManagerFields;->getToolType()Ljava/lang/String;

    move-result-object v2

    :cond_4c
    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->eventJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

    .line 60
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->aiKidsJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/socket/AIKidsConnectJsApi;

    .line 61
    new-instance v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->toolsWebView:Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;

    invoke-direct {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;-><init>(Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->woodCameraJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    return-void
.end method

.method public final internal()V
    .registers 4

    .line 132
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->webView:Lcom/codemao/toolssdk/dsbridge/DWebView;

    if-eqz v0, :cond_b

    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->syncInternalJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    const-string v2, "syncInternal"

    invoke-virtual {v0, v1, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_b
    return-void
.end method

.method public final onDestroy()V
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->bluetoothJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppBluetoothJsApi;->destroy()V

    .line 210
    :cond_7
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->deviceJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->destroy()V

    .line 211
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->syncInternalJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->destroy()V

    .line 212
    :cond_15
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->recordJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;

    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/record/CppRecordJsApi;->destroy()V

    .line 213
    :cond_1c
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->accountJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppAccountJsApi;->destroy()V

    .line 214
    :cond_23
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->woodCameraJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;

    if-eqz v0, :cond_2a

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/WoodCameraJsApi;->onDestroy()V

    .line 215
    :cond_2a
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->networkJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;

    if-eqz v0, :cond_31

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/jsobjects/network/NetworkJsApi;->onDestroy()V

    :cond_31
    return-void
.end method

.method public final sendOnceHandShake(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lorg/json/JSONObject;",
            "Lkotlin/Unit;",
            ">;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "success"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fail"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 128
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->syncInternalJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    if-eqz v0, :cond_11

    invoke-virtual {v0, p1, p2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->sendOnceHandshake(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;)V

    :cond_11
    return-void
.end method

.method public final setEventListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/ToolsEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->eventJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppEventsJsApi;->setEventListener(Lkotlin/jvm/functions/Function1;)V

    :cond_7
    return-void
.end method

.method public final setInternalConfigSdkResultListener(Lkotlin/jvm/functions/Function1;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Lcom/codemao/toolssdk/model/dsbridge/InternalEvent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/jsobjects/CppJavaScriptObjectManagerBase;->syncInternalJsApi:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppSyncInternalJsApi;->setConfigSdkListener(Lkotlin/jvm/functions/Function1;)V

    .line 121
    :cond_7
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "设置configSdk监听"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method
