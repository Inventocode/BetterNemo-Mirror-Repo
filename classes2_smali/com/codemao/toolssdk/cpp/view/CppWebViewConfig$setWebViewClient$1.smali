.class public final Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;
.super Landroid/webkit/WebViewClient;
.source "CppWebViewConfig.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->setWebViewClient()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    .line 238
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private final checkReceivedUrlError(Ljava/lang/String;)V
    .registers 6

    .line 456
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v0, "webViewClient收到checkReceiveUrlError错误"

    invoke-virtual {p1, v0}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 457
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2e

    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewWork;->isLoadSucceed()Z

    move-result p1

    if-nez p1, :cond_2e

    .line 458
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    .line 459
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7b7b

    .line 461
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const-string v3, "网络异常"

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 459
    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    .line 458
    invoke-interface {p1, v0}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadFail(Lcom/codemao/toolssdk/model/dsbridge/IResult;)V

    :cond_2e
    return-void
.end method

.method private final webViewClientReceiveErr(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;)V
    .registers 6

    .line 470
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p1, 0x3a

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "-:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;
    .registers 11

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_18

    .line 293
    :try_start_6
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_18

    const-string v5, ".js"

    invoke-static {v4, v5, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-ne v4, v2, :cond_18

    const/4 v4, 0x1

    goto :goto_19

    :catch_16
    move-exception p1

    goto :goto_76

    :cond_18
    const/4 v4, 0x0

    :goto_19
    if-eqz v4, :cond_1e

    const-string v0, "text/javascript"

    goto :goto_3d

    :cond_1e
    if-eqz p1, :cond_2f

    .line 295
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2f

    const-string v5, ".wasm"

    invoke-static {v4, v5, v3, v0, v1}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v0

    if-ne v0, v2, :cond_2f

    goto :goto_30

    :cond_2f
    const/4 v2, 0x0

    :goto_30
    if-eqz v2, :cond_35

    const-string v0, "application/wasm"

    goto :goto_3d

    .line 298
    :cond_35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    if-eqz p1, :cond_45

    .line 300
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_47

    :cond_45
    const-string p1, ""

    .line 301
    :cond_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v0, "application/octet-stream"

    :cond_4f
    move-object v3, v0

    .line 304
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Access-Control-Allow-Origin"

    const-string v2, "*"

    .line 305
    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Access-Control-Allow-Headers"

    const-string v2, "Content-Type"

    .line 306
    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v4, ""

    const/16 v5, 0xc8

    const-string v6, "ok"

    .line 308
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 307
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_74} :catch_16

    move-object v1, v0

    goto :goto_79

    .line 311
    :goto_76
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_79
    return-object v1
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 5

    .line 277
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    .line 278
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "webViewClient回调onPageFinished"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 279
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    .line 281
    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object p2

    .line 282
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getEnterFrom()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview回调onPageFinished"

    .line 279
    invoke-virtual {p1, v1, p2, v0}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 284
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->removeConfigSdkTimeOutRunnable()V

    .line 285
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->launchConfigSdkTimeOutRunnable()V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 374
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    .line 375
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "webViewClient收到onPageStarted消息,同时调用loadStart"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dLoadResult(Ljava/lang/String;)V

    .line 376
    iget-object p1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-interface {p1}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebViewBase;->loadStart()V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 449
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 450
    invoke-direct {p0, p4}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->checkReceivedUrlError(Ljava/lang/String;)V

    .line 451
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string p2, "onReceivedError2"

    invoke-direct {p0, p2, p1, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->webViewClientReceiveErr(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 9

    .line 382
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_11

    .line 383
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->checkReceivedUrlError(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_20

    .line 384
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v2

    if-ne v2, v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    const-string v1, ""

    if-eqz p2, :cond_31

    .line 385
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_31

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_32

    :cond_31
    move-object p2, v1

    .line 387
    :cond_32
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_44

    if-eqz p3, :cond_3f

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_40

    :cond_3f
    move-object v1, p1

    :goto_40
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 388
    :cond_44
    iget-object v4, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v4, v0, p2, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$reportError(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;ZLjava/lang/String;Ljava/lang/String;)V

    const-string p2, "onReceivedError1"

    if-lt v2, v3, :cond_63

    if-eqz p3, :cond_58

    .line 392
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getErrorCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_59

    :cond_58
    move-object v0, p1

    :goto_59
    if-eqz p3, :cond_5f

    .line 393
    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object p1

    .line 390
    :cond_5f
    invoke-direct {p0, p2, v0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->webViewClientReceiveErr(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    goto :goto_66

    .line 396
    :cond_63
    invoke-direct {p0, p2, p1, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->webViewClientReceiveErr(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    :goto_66
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 7

    .line 433
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_11

    .line 434
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_12

    :cond_11
    move-object v0, p1

    :goto_12
    invoke-direct {p0, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->checkReceivedUrlError(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_20

    .line 435
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->isForMainFrame()Z

    move-result v2

    if-ne v2, v0, :cond_20

    goto :goto_21

    :cond_20
    const/4 v0, 0x0

    :goto_21
    if-eqz p2, :cond_2f

    .line 436
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_2f

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    if-nez p2, :cond_31

    :cond_2f
    const-string p2, ""

    .line 437
    :cond_31
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "httpError:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_42

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result v2

    goto :goto_43

    :cond_42
    const/4 v2, -0x1

    :goto_43
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 438
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v2, v0, p2, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$reportError(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;ZLjava/lang/String;Ljava/lang/String;)V

    if-eqz p3, :cond_5a

    .line 441
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getStatusCode()I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    goto :goto_5b

    :cond_5a
    move-object p2, p1

    :goto_5b
    if-eqz p3, :cond_61

    .line 442
    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    :cond_61
    const-string p3, "onReceivedHttpError"

    .line 439
    invoke-direct {p0, p3, p2, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->webViewClientReceiveErr(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 6

    if-eqz p2, :cond_5

    .line 403
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_5
    const/4 p1, 0x0

    if-eqz p3, :cond_d

    .line 404
    invoke-virtual {p3}, Landroid/net/http/SslError;->getUrl()Ljava/lang/String;

    move-result-object p2

    goto :goto_e

    :cond_d
    move-object p2, p1

    :goto_e
    if-nez p2, :cond_12

    const-string p2, ""

    .line 405
    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SSL发生错误:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p3, :cond_23

    invoke-virtual {p3}, Landroid/net/http/SslError;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_24

    :cond_23
    move-object p3, p1

    :goto_24
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 406
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1, p2, p3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$reportError(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;ZLjava/lang/String;Ljava/lang/String;)V

    const-string p2, "onReceivedSslError"

    .line 427
    invoke-direct {p0, p2, p1, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->webViewClientReceiveErr(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onRenderProcessGone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->setRenderGone(Z)V

    .line 248
    sget-object v0, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;

    invoke-virtual {v0, v1}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/CppDeviceJsApi$Companion;->setWebViewRenderGone(Z)V

    .line 249
    sget-object v0, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string v2, "发生了崩溃,改为true"

    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/utils/ExtLogFeature;->dCamera(Ljava/lang/String;)V

    .line 251
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    if-ne p1, v0, :cond_8d

    .line 253
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v2, "getCurrentWebView().layoutParams"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 255
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$destroyWebView(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)V

    .line 257
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->createWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v2

    .line 258
    invoke-virtual {v2, v0}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 260
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v0, v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$setWebView$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    .line 262
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->initConfig()V

    .line 263
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getCurrentWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 264
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getRenderGoneListener$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_6e

    .line 265
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getRenderGoneListener$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)Lkotlin/jvm/functions/Function0;

    move-result-object v0

    if-eqz v0, :cond_87

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_87

    .line 267
    :cond_6e
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolsManager()Lcom/codemao/toolssdk/cpp/manager/interfaces/ICppToolsManager;

    move-result-object v0

    if-eqz v0, :cond_7a

    const/4 v2, 0x0

    invoke-interface {v0, v2}, Lcom/codemao/toolssdk/cpp/manager/business/interfaces/ICppToolsManagerBiz;->setCreateStartTime(Ljava/lang/Long;)V

    .line 268
    :cond_7a
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getLastUrl()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_84

    const-string v2, ""

    :cond_84
    invoke-virtual {v0, v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->loadFinalUrl(Ljava/lang/String;)V

    .line 270
    :cond_87
    :goto_87
    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-interface {v0, p1, p2}, Lcom/codemao/toolssdk/cpp/view/interfaces/ICppWebView;->webViewClientOnRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)V

    return v1

    .line 273
    :cond_8d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 319
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    :goto_9
    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_1e

    .line 320
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1e

    const-string v6, "https://codemaotools"

    invoke-static {v5, v6, v4, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_1e

    const/4 v5, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v5, 0x0

    :goto_1f
    if-eqz v5, :cond_4c

    .line 321
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_32

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "https://codemaotools"

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_33

    :cond_32
    const/4 p1, -0x1

    .line 322
    :goto_33
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_43

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_43
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 323
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_4c
    if-eqz v1, :cond_5d

    .line 324
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5d

    const-string v6, "file"

    invoke-static {v5, v6, v4, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v3, 0x0

    :goto_5e
    if-eqz v3, :cond_6d

    .line 325
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 326
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 327
    :cond_6d
    sget-object v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_7c

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_7d

    :cond_7c
    move-object v4, v0

    :goto_7d
    invoke-virtual {v2, v3, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnAssetsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "context"

    if-eqz v3, :cond_a3

    if-eqz v1, :cond_8b

    .line 328
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_8b
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 329
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_KN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_a3
    if-eqz v1, :cond_aa

    .line 330
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_ab

    :cond_aa
    move-object v3, v0

    :goto_ab
    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isAIKidsMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_cf

    if-eqz v1, :cond_b7

    .line 331
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_b7
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 332
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 333
    :cond_cf
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_dc

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_dd

    :cond_dc
    move-object v5, v0

    :goto_dd
    invoke-virtual {v2, v3, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_101

    if-eqz v1, :cond_e9

    .line 334
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_e9
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 335
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_ZIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 336
    :cond_101
    iget-object v3, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v3}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_10e

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_10f

    :cond_10e
    move-object v5, v0

    :goto_10f
    invoke-virtual {v2, v3, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_129

    .line 337
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_KN_MEDIA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 338
    :cond_129
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getShouldInterceptRequestCallback$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 339
    iget-object v1, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-static {v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->access$getShouldInterceptRequestCallback$p(Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;)Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    move-result-object v1

    if-eqz v1, :cond_13d

    invoke-interface {v1, p1, p2}, Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;->getResponse(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_13d
    if-eqz v0, :cond_140

    return-object v0

    .line 344
    :cond_140
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 15

    .line 350
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_14

    const-string v5, "https://codemaotools"

    .line 351
    invoke-static {p2, v5, v3, v1, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_14

    const/4 v5, 0x1

    goto :goto_15

    :cond_14
    const/4 v5, 0x0

    :goto_15
    if-eqz v5, :cond_42

    .line 352
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_28

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "https://codemaotools"

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_29

    :cond_28
    const/4 p1, -0x1

    .line 353
    :goto_29
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_39

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_39
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 354
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_42
    if-eqz v0, :cond_53

    .line 355
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_53

    const-string v6, "file"

    invoke-static {v5, v6, v3, v1, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_53

    goto :goto_54

    :cond_53
    const/4 v2, 0x0

    :goto_54
    if-eqz v2, :cond_63

    .line 356
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 357
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 358
    :cond_63
    sget-object v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_72

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_73

    :cond_72
    move-object v3, v4

    :goto_73
    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnAssetsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "context"

    if-eqz v2, :cond_99

    if-eqz v0, :cond_81

    .line 359
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    :cond_81
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 360
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_KN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_99
    if-eqz v0, :cond_a0

    .line 361
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_a1

    :cond_a0
    move-object v2, v4

    :goto_a1
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isAIKidsMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c5

    if-eqz v0, :cond_ad

    .line 362
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    :cond_ad
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 363
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 364
    :cond_c5
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_d2

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_d3

    :cond_d2
    move-object v5, v4

    :goto_d3
    invoke-virtual {v1, v2, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_f7

    if-eqz v0, :cond_df

    .line 365
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    :cond_df
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 366
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_ZIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 367
    :cond_f7
    iget-object v2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {v2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->getToolType()Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_103

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_103
    invoke-virtual {v1, v2, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_11d

    .line 368
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object p2, p0, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$setWebViewClient$1;->this$0:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_KN_MEDIA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 370
    :cond_11d
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
