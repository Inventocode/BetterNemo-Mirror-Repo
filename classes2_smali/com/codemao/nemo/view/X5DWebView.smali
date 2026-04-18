.class public Lcom/codemao/nemo/view/X5DWebView;
.super Lcom/tencent/smtt/sdk/WebView;
.source "X5DWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/X5DWebView$CallInfo;,
        Lcom/codemao/nemo/view/X5DWebView$FileChooser;,
        Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;,
        Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;
    }
.end annotation


# static fields
.field private static isDebug:Z = false


# instance fields
.field private APP_CACHE_DIRNAME:Ljava/lang/String;

.field private volatile alertBoxBlock:Z

.field callID:I

.field private callInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/view/X5DWebView$CallInfo;",
            ">;"
        }
    .end annotation
.end field

.field handlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/codemao/creativestore/dsbridge/OnReturnValue;",
            ">;"
        }
    .end annotation
.end field

.field private innerJavascriptInterface:Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

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

.field private javascriptCloseWindowListener:Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

.field private mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

.field private mainHandler:Landroid/os/Handler;

.field private webChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 235
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/codemao/nemo/view/X5DWebView;->callID:I

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/codemao/nemo/view/X5DWebView;->alertBoxBlock:Z

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->javascriptCloseWindowListener:Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

    .line 70
    new-instance p1, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;-><init>(Lcom/codemao/nemo/view/X5DWebView;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->innerJavascriptInterface:Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->mainHandler:Landroid/os/Handler;

    .line 210
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->handlerMap:Ljava/util/Map;

    .line 585
    new-instance p1, Lcom/codemao/nemo/view/X5DWebView$6;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/X5DWebView$6;-><init>(Lcom/codemao/nemo/view/X5DWebView;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    .line 236
    invoke-direct {p0}, Lcom/codemao/nemo/view/X5DWebView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 230
    invoke-direct {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    const/4 p1, 0x0

    .line 65
    iput p1, p0, Lcom/codemao/nemo/view/X5DWebView;->callID:I

    const/4 p1, 0x1

    .line 67
    iput-boolean p1, p0, Lcom/codemao/nemo/view/X5DWebView;->alertBoxBlock:Z

    const/4 p1, 0x0

    .line 68
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->javascriptCloseWindowListener:Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

    .line 70
    new-instance p1, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;-><init>(Lcom/codemao/nemo/view/X5DWebView;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->innerJavascriptInterface:Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    .line 71
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->mainHandler:Landroid/os/Handler;

    .line 210
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->handlerMap:Ljava/util/Map;

    .line 585
    new-instance p1, Lcom/codemao/nemo/view/X5DWebView$6;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/view/X5DWebView$6;-><init>(Lcom/codemao/nemo/view/X5DWebView;)V

    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    .line 231
    invoke-direct {p0}, Lcom/codemao/nemo/view/X5DWebView;->init()V

    return-void
.end method

.method private _evaluateJavascript(Ljava/lang/String;)V
    .registers 5

    .line 393
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const-string v1, "javascript:"

    const/16 v2, 0x13

    if-lt v0, v2, :cond_20

    const/4 v0, 0x0

    .line 395
    :try_start_9
    invoke-static {p0, p1, v0}, Lcom/codemao/nemo/view/X5DWebView;->access$701(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    :try_end_c
    .catch Ljava/lang/IllegalStateException; {:try_start_9 .. :try_end_c} :catch_d

    goto :goto_32

    .line 397
    :catch_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_32

    .line 400
    :cond_20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :goto_32
    return-void
.end method

.method static synthetic access$000()Z
    .registers 1

    .line 59
    sget-boolean v0, Lcom/codemao/nemo/view/X5DWebView;->isDebug:Z

    return v0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)[Ljava/lang/String;
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView;->parseNamespace(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1001(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1101(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;Ljava/util/Map;)V
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method static synthetic access$1201(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 1

    .line 59
    invoke-super {p0}, Lcom/tencent/smtt/sdk/WebView;->reload()V

    return-void
.end method

.method static synthetic access$1300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/tencent/smtt/sdk/WebChromeClient;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/nemo/view/X5DWebView;->webChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/codemao/nemo/view/X5DWebView;)Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/nemo/view/X5DWebView;->innerJavascriptInterface:Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/X5DWebView;)Ljava/util/Map;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/nemo/view/X5DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/codemao/nemo/view/X5DWebView;)Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;
    .registers 1

    .line 59
    iget-object p0, p0, Lcom/codemao/nemo/view/X5DWebView;->javascriptCloseWindowListener:Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/Runnable;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lcom/codemao/nemo/view/X5DWebView;)Z
    .registers 1

    .line 59
    iget-boolean p0, p0, Lcom/codemao/nemo/view/X5DWebView;->alertBoxBlock:Z

    return p0
.end method

.method static synthetic access$502(Lcom/codemao/nemo/view/X5DWebView;Z)Z
    .registers 2

    .line 59
    iput-boolean p1, p0, Lcom/codemao/nemo/view/X5DWebView;->alertBoxBlock:Z

    return p1
.end method

.method static synthetic access$600(Lcom/codemao/nemo/view/X5DWebView;)V
    .registers 1

    .line 59
    invoke-direct {p0}, Lcom/codemao/nemo/view/X5DWebView;->dispatchStartupQueue()V

    return-void
.end method

.method static synthetic access$701(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 3

    .line 59
    invoke-super {p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView;->evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V

    return-void
.end method

.method static synthetic access$800(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/X5DWebView;->_evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$902(Lcom/codemao/nemo/view/X5DWebView;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->callInfoList:Ljava/util/ArrayList;

    return-object p1
.end method

.method private addInternalJavascriptObject()V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 291
    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/X5DWebView$1;-><init>(Lcom/codemao/nemo/view/X5DWebView;)V

    const-string v1, "_dsb"

    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/view/X5DWebView;->addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method private dispatchJavascriptCall(Lcom/codemao/nemo/view/X5DWebView$CallInfo;)V
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    .line 509
    invoke-virtual {p1}, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const-string p1, "window._handleMessageFromNative(%s)"

    invoke-static {p1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/view/X5DWebView;->evaluateJavascript(Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized dispatchStartupQueue()V
    .registers 3

    monitor-enter p0

    .line 500
    :try_start_1
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView;->callInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_1c

    .line 501
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/view/X5DWebView$CallInfo;

    .line 502
    invoke-direct {p0, v1}, Lcom/codemao/nemo/view/X5DWebView;->dispatchJavascriptCall(Lcom/codemao/nemo/view/X5DWebView$CallInfo;)V

    goto :goto_9

    :cond_19
    const/4 v0, 0x0

    .line 504
    iput-object v0, p0, Lcom/codemao/nemo/view/X5DWebView;->callInfoList:Ljava/util/ArrayList;
    :try_end_1c
    .catchall {:try_start_1 .. :try_end_1c} :catchall_1e

    .line 506
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
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

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

    iput-object v0, p0, Lcom/codemao/nemo/view/X5DWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    .line 255
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getSettings()Lcom/tencent/smtt/sdk/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 256
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setDomStorageEnabled(Z)V

    .line 257
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v3, 0x0

    const/16 v4, 0x15

    if-lt v2, v4, :cond_38

    .line 258
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object v4

    invoke-virtual {v4, p0, v1}, Lcom/tencent/smtt/sdk/CookieManager;->setAcceptThirdPartyCookies(Lcom/tencent/smtt/sdk/WebView;Z)V

    .line 259
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setMixedContentMode(I)V

    .line 261
    :cond_38
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAllowFileAccess(Z)V

    .line 262
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCacheEnabled(Z)V

    const/4 v3, 0x2

    .line 263
    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setCacheMode(I)V

    .line 264
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setJavaScriptEnabled(Z)V

    .line 265
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 266
    iget-object v3, p0, Lcom/codemao/nemo/view/X5DWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/tencent/smtt/sdk/WebSettings;->setAppCachePath(Ljava/lang/String;)V

    .line 267
    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUseWideViewPort(Z)V

    .line 268
    iget-object v1, p0, Lcom/codemao/nemo/view/X5DWebView;->mWebChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    invoke-super {p0, v1}, Lcom/tencent/smtt/sdk/WebView;->setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V

    .line 269
    invoke-direct {p0}, Lcom/codemao/nemo/view/X5DWebView;->addInternalJavascriptObject()V

    const/16 v1, 0x10

    if-le v2, v1, :cond_64

    .line 271
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView;->innerJavascriptInterface:Lcom/codemao/nemo/view/X5DWebView$InnerJavascriptInterface;

    const-string v1, "_dsbridge"

    invoke-super {p0, v0, v1}, Lcom/tencent/smtt/sdk/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7c

    .line 274
    :cond_64
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " _dsbridge"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    :goto_7c
    return-void
.end method

.method private parseNamespace(Ljava/lang/String;)[Ljava/lang/String;
    .registers 6

    const/16 v0, 0x2e

    .line 280
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_15

    .line 283
    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/2addr v0, v1

    .line 284
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

    .line 1011
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_e

    .line 1012
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    return-void

    .line 1015
    :cond_e
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView;->mainHandler:Landroid/os/Handler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .registers 3

    .line 246
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_9

    .line 247
    invoke-static {p0}, Lcom/tencent/smtt/sdk/WebView;->setWebContentsDebuggingEnabled(Z)V

    .line 249
    :cond_9
    sput-boolean p0, Lcom/codemao/nemo/view/X5DWebView;->isDebug:Z

    return-void
.end method


# virtual methods
.method public addJavascriptObject(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    if-nez p2, :cond_4

    const-string p2, ""

    :cond_4
    if-eqz p1, :cond_b

    .line 558
    iget-object v0, p0, Lcom/codemao/nemo/view/X5DWebView;->javaScriptNamespaceInterfaces:Ljava/util/Map;

    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_b
    return-void
.end method

.method public declared-synchronized callHandler(Ljava/lang/String;[Ljava/lang/Object;Lcom/codemao/creativestore/dsbridge/OnReturnValue;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            "Lcom/codemao/creativestore/dsbridge/OnReturnValue<",
            "TT;>;)V"
        }
    .end annotation

    monitor-enter p0

    .line 514
    :try_start_1
    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;

    iget v1, p0, Lcom/codemao/nemo/view/X5DWebView;->callID:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/codemao/nemo/view/X5DWebView;->callID:I

    invoke-direct {v0, p0, p1, v1, p2}, Lcom/codemao/nemo/view/X5DWebView$CallInfo;-><init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;I[Ljava/lang/Object;)V

    if-eqz p3, :cond_19

    .line 516
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->handlerMap:Ljava/util/Map;

    iget p2, v0, Lcom/codemao/nemo/view/X5DWebView$CallInfo;->callbackId:I

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 519
    :cond_19
    iget-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->callInfoList:Ljava/util/ArrayList;

    if-eqz p1, :cond_21

    .line 520
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_24

    .line 522
    :cond_21
    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/X5DWebView;->dispatchJavascriptCall(Lcom/codemao/nemo/view/X5DWebView$CallInfo;)V
    :try_end_24
    .catchall {:try_start_1 .. :try_end_24} :catchall_26

    .line 525
    :goto_24
    monitor-exit p0

    return-void

    :catchall_26
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public clearCache(Z)V
    .registers 5

    .line 922
    invoke-super {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->clearCache(Z)V

    .line 923
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/CookieManager;->removeAllCookie()V

    .line 924
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    :try_start_e
    const-string v0, "webview.db"

    .line 926
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z

    const-string v0, "webviewCache.db"

    .line 927
    invoke-virtual {p1, v0}, Landroid/content/Context;->deleteDatabase(Ljava/lang/String;)Z
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_18} :catch_19

    goto :goto_1d

    :catch_19
    move-exception v0

    .line 929
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 932
    :goto_1d
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/codemao/nemo/view/X5DWebView;->APP_CACHE_DIRNAME:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 933
    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    .line 934
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/webviewCache"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 936
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_4b

    .line 937
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/view/X5DWebView;->deleteFile(Ljava/io/File;)V

    .line 940
    :cond_4b
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_54

    .line 941
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/X5DWebView;->deleteFile(Ljava/io/File;)V

    :cond_54
    return-void
.end method

.method public deleteFile(Ljava/io/File;)V
    .registers 5

    .line 946
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 947
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 948
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_26

    .line 949
    :cond_10
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 950
    invoke-virtual {p1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x0

    .line 951
    :goto_1b
    array-length v2, v0

    if-ge v1, v2, :cond_26

    .line 952
    aget-object v2, v0, v1

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/view/X5DWebView;->deleteFile(Ljava/io/File;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1b

    .line 955
    :cond_26
    :goto_26
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    goto :goto_44

    .line 957
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

    .line 411
    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/view/X5DWebView$2;-><init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/X5DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    .line 427
    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/nemo/view/X5DWebView$3;-><init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/X5DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

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

    .line 445
    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$4;

    invoke-direct {v0, p0, p1, p2}, Lcom/codemao/nemo/view/X5DWebView$4;-><init>(Lcom/codemao/nemo/view/X5DWebView;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/X5DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public reload()V
    .registers 2

    .line 456
    new-instance v0, Lcom/codemao/nemo/view/X5DWebView$5;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/view/X5DWebView$5;-><init>(Lcom/codemao/nemo/view/X5DWebView;)V

    invoke-direct {p0, v0}, Lcom/codemao/nemo/view/X5DWebView;->runOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public setJavascriptCloseWindowListener(Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;)V
    .registers 2

    .line 469
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->javascriptCloseWindowListener:Lcom/codemao/nemo/view/X5DWebView$JavascriptCloseWindowListener;

    return-void
.end method

.method public setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V
    .registers 2

    .line 582
    iput-object p1, p0, Lcom/codemao/nemo/view/X5DWebView;->webChromeClient:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-void
.end method
