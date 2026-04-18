.class public Lcom/codemao/toolssdk/dsbridge/DWebView;
.super Landroid/webkit/WebView;
.source "DWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;,
        Lcom/codemao/toolssdk/dsbridge/DWebView$FileChooser;,
        Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;,
        Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;
    }
.end annotation


# static fields
.field private static isDebug:Z = false


# instance fields
.field private APP_CACHE_DIRNAME:Ljava/lang/String;

.field private volatile alertBoxBlock:Z

.field private callID:I

.field private callInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;",
            ">;"
        }
    .end annotation
.end field

.field handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/codemao/toolssdk/dsbridge/OnReturnValue;",
            ">;"
        }
    .end annotation
.end field

.field private innerJavascriptInterface:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

.field private javaScriptNamespaceInterfaces:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private javascriptCloseWindowListener:Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;

.field private mWebChromeClient:Landroid/webkit/WebChromeClient;

.field private mainHandler:Landroid/os/Handler;

.field private webChromeClient:Landroid/webkit/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 238
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callID:I

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->alertBoxBlock:Z

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javascriptCloseWindowListener:Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;

    .line 69
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/dsbridge/DWebView$1;)V

    iput-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->innerJavascriptInterface:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->mainHandler:Landroid/os/Handler;

    .line 212
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->handlerMap:Ljava/util/Map;

    .line 595
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView$6;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/dsbridge/DWebView$6;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 239
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 233
    invoke-direct {p0, p1, p2}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    const/4 p1, 0x0

    .line 63
    iput p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callID:I

    const/4 p1, 0x1

    .line 66
    iput-boolean p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->alertBoxBlock:Z

    const/4 p1, 0x0

    .line 67
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javascriptCloseWindowListener:Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;

    .line 69
    new-instance p2, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    invoke-direct {p2, p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Lcom/codemao/toolssdk/dsbridge/DWebView$1;)V

    iput-object p2, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->innerJavascriptInterface:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    .line 70
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->mainHandler:Landroid/os/Handler;

    .line 212
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->handlerMap:Ljava/util/Map;

    .line 595
    new-instance p1, Lcom/codemao/toolssdk/dsbridge/DWebView$6;

    invoke-direct {p1, p0}, Lcom/codemao/toolssdk/dsbridge/DWebView$6;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    .line 234
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->init()V

    return-void
.end method

.method private _evaluateJavascript(Ljava/lang/String;)V
    .registers 4

    .line 399
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_b

    const/4 v0, 0x0

    .line 400
    invoke-static {p0, p1, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->access$801(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    goto :goto_1f

    .line 402
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "javascript:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_1f
    return-void
.end method

.method static synthetic access$100()Z
    .registers 1

    .line 57
    sget-boolean v0, Lcom/codemao/toolssdk/dsbridge/DWebView;->isDebug:Z

    return v0
.end method

.method static synthetic access$1001(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1102(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 57
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$1201(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-super {p0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1301(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1401(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1501(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 1

    .line 57
    invoke-super {p0}, Landroid/webkit/WebView;->reload()V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/toolssdk/dsbridge/DWebView;)Landroid/webkit/WebChromeClient;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/codemao/toolssdk/dsbridge/DWebView;)Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->innerJavascriptInterface:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->parseNamespace(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/toolssdk/dsbridge/DWebView;)Ljava/util/Map;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/toolssdk/dsbridge/DWebView;)Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;
    .registers 1

    .line 57
    iget-object p0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javascriptCloseWindowListener:Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/Runnable;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$600(Lcom/codemao/toolssdk/dsbridge/DWebView;)Z
    .registers 1

    .line 57
    iget-boolean p0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->alertBoxBlock:Z

    return p0
.end method

.method static synthetic access$602(Lcom/codemao/toolssdk/dsbridge/DWebView;Z)Z
    .registers 2

    .line 57
    iput-boolean p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->alertBoxBlock:Z

    return p1
.end method

.method static synthetic access$700(Lcom/codemao/toolssdk/dsbridge/DWebView;)V
    .registers 1

    .line 57
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->dispatchStartupQueue()V

    return-void
.end method

.method static synthetic access$801(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Landroid/webkit/ValueCallback;)V
    .registers 3

    .line 57
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)V
    .registers 2

    .line 57
    invoke-direct {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->_evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private addInternalJavascriptObject()V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 295
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$1;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/dsbridge/DWebView$1;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    const-string v1, "_dsb"

    invoke-virtual {p0, v0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchJavascriptCall(Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 519
    invoke-virtual {p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "window._handleMessageFromNative(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized dispatchStartupQueue()V
    .registers 3

    monitor-enter p0

    .line 510
    :try_start_1
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;

    .line 512
    invoke-direct {p0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->dispatchJavascriptCall(Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;)V

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    .line 514
    iput-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callInfoList:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 516
    :cond_1c
    monitor-exit p0

    return-void

    :catchall_1e
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private init()V
    .registers 6
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled",
            "AddJavascriptInterface"
        }
    .end annotation

    .line 257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "/webcache"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    .line 258
    invoke-virtual {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 259
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 260
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_38

    .line 261
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Landroid/webkit/CookieManager;->setAcceptThirdPartyCookies(Landroid/webkit/WebView;Z)V

    .line 262
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 264
    :cond_38
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    const/4 v3, 0x2

    .line 266
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 267
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 268
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 270
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    const/16 v1, 0x64

    .line 271
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 272
    iget-object v1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->mWebChromeClient:Landroid/webkit/WebChromeClient;

    invoke-super {p0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 273
    invoke-direct {p0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->addInternalJavascriptObject()V

    const/16 v1, 0x10

    if-le v2, v1, :cond_61

    .line 275
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->innerJavascriptInterface:Lcom/codemao/toolssdk/dsbridge/DWebView$InnerJavascriptInterface;

    const-string v1, "_dsbridge"

    invoke-super {p0, v0, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_79

    .line 278
    :cond_61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " _dsbridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :goto_79
    return-void
.end method

.method private parseNamespace(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    .line 284
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_15

    .line 287
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 288
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_17

    :cond_15
    const-string v3, ""

    :goto_17
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    aput-object v3, v0, v2

    aput-object p1, v0, v1

    return-object v0
.end method

.method private runOnMainThread(Ljava/lang/Runnable;)V
    .registers 4

    .line 996
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 997
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1000
    :cond_e
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .registers 3

    .line 249
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 250
    invoke-static {p0}, Landroid/webkit/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 252
    :cond_9
    sput-boolean p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->isDebug:Z

    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    if-eqz p1, :cond_b

    .line 568
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public callHandler(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 4

    const/4 v0, 0x0

    .line 538
    invoke-virtual {p0, p1, p2, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V

    return-void
.end method

.method public declared-synchronized callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/toolssdk/dsbridge/OnReturnValue;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/codemao/toolssdk/dsbridge/OnReturnValue<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 524
    :try_start_1
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;

    iget v1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callID:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callID:I

    invoke-direct {v0, p1, v1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;-><init>(Ljava/lang/String;I[Ljava/lang/Object;)V

    if-eqz p3, :cond_1b

    .line 526
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->handlerMap:Ljava/util/Map;

    invoke-static {v0}, Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;->access$1600(Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 529
    :cond_1b
    iget-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->callInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_23

    .line 530
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_26

    .line 532
    :cond_23
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->dispatchJavascriptCall(Lcom/codemao/toolssdk/dsbridge/DWebView$CallInfo;)V
    :try_end_26
    .catchall {:try_start_1 .. :try_end_26} :catchall_28

    .line 535
    :goto_26
    monitor-exit p0

    return-void

    :catchall_28
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearCache(Z)V
    .registers 5

    .line 956
    invoke-super {p0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    .line 957
    invoke-static {}, Landroid/webkit/CookieManager;->getInstance()Landroid/webkit/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/CookieManager;->removeAllCookie()V

    .line 958
    invoke-virtual {p0}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;

    move-result-object p1

    :try_start_e
    const-string v0, "webview.db"

    .line 960
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "webviewCache.db"

    .line 961
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 963
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 966
    :goto_1d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 967
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 968
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/webviewCache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 970
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 971
    invoke-virtual {p0, v1}, Lcom/codemao/toolssdk/dsbridge/DWebView;->deleteFile(Ljava/io/File;)V

    .line 974
    :cond_4b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 975
    invoke-virtual {p0, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->deleteFile(Ljava/io/File;)V

    :cond_54
    return-void
.end method

.method public deleteFile(Ljava/io/File;)V
    .registers 5

    .line 980
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 981
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 982
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_26

    .line 983
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 984
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 985
    :goto_1b
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 986
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 989
    :cond_26
    :goto_26
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_44

    .line 991
    :cond_2a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delete file no exists "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "Webview"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_44
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;)V
    .registers 3

    .line 413
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$2;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 429
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/toolssdk/dsbridge/DWebView$3;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 451
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView$4;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reload()V
    .registers 2

    .line 466
    new-instance v0, Lcom/codemao/toolssdk/dsbridge/DWebView$5;

    invoke-direct {v0, p0}, Lcom/codemao/toolssdk/dsbridge/DWebView$5;-><init>(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public removeJavascriptObject(Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_4

    const-string p1, ""

    .line 581
    :cond_4
    iget-object v0, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public setJavascriptCloseWindowListener(Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;)V
    .registers 2

    .line 479
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->javascriptCloseWindowListener:Lcom/codemao/toolssdk/dsbridge/DWebView$JavascriptCloseWindowListener;

    return-void
.end method

.method public setWebChromeClient(Landroid/webkit/WebChromeClient;)V
    .registers 2

    .line 592
    iput-object p1, p0, Lcom/codemao/toolssdk/dsbridge/DWebView;->webChromeClient:Landroid/webkit/WebChromeClient;

    return-void
.end method
