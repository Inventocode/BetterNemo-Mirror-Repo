.class public final Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;
.super Landroid/webkit/WebViewClient;
.source "ToolsWebView.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/view/ToolsWebView;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/view/ToolsWebView;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/view/ToolsWebView;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    .line 229
    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method

.method private final checkReceivedUrlError(Ljava/lang/String;Ljava/lang/CharSequence;)V
    .registers 7

    .line 426
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/codemao/toolssdk/utils/NetWorkHelper;->isConnect(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2f

    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$isLoadSucceed$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Z

    move-result p1

    if-nez p1, :cond_2f

    .line 427
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_2f

    .line 428
    new-instance v0, Lcom/codemao/toolssdk/model/dsbridge/IResult;

    const/16 v1, 0x7b7b

    .line 430
    new-instance v2, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;

    const-string v3, "网络异常"

    invoke-direct {v2, v3}, Lcom/codemao/toolssdk/model/dsbridge/ToolsError;-><init>(Ljava/lang/String;)V

    .line 428
    invoke-direct {v0, v1, v2}, Lcom/codemao/toolssdk/model/dsbridge/IResult;-><init>(ILjava/lang/Object;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 427
    invoke-static {p1, v0, v2, v1, v2}, Lcom/codemao/toolssdk/view/CMToolSessionListener$DefaultImpls;->toolLoadDidFail$default(Lcom/codemao/toolssdk/view/CMToolSessionListener;Lcom/codemao/toolssdk/model/dsbridge/IResult;Ljava/lang/Exception;ILjava/lang/Object;)V

    .line 434
    :cond_2f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "receivedError:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "加载过程"

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

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

    .line 283
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

    .line 285
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

    .line 288
    :cond_35
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/toolssdk/utils/MimeTypeMapUtils;->getMimeTypeFromUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3d
    if-eqz p1, :cond_45

    .line 290
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_47

    :cond_45
    const-string p1, ""

    .line 291
    :cond_47
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4f

    const-string v0, "application/octet-stream"

    :cond_4f
    move-object v3, v0

    .line 294
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    const-string v0, "Access-Control-Allow-Origin"

    const-string v2, "*"

    .line 295
    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Access-Control-Allow-Headers"

    const-string v2, "Content-Type"

    .line 296
    invoke-interface {v7, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    new-instance v0, Landroid/webkit/WebResourceResponse;

    const-string v4, ""

    const/16 v5, 0xc8

    const-string v6, "ok"

    .line 298
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v2, v0

    .line 297
    invoke-direct/range {v2 .. v8}, Landroid/webkit/WebResourceResponse;-><init>(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;Ljava/io/InputStream;)V
    :try_end_74
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_74} :catch_16

    move-object v1, v0

    goto :goto_79

    .line 301
    :goto_76
    invoke-virtual {p1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :goto_79
    return-object v1
.end method

.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 7

    .line 270
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    const-string p1, "加载过程"

    const-string p2, "pageFinished"

    .line 271
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "onPageFinished"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 273
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    const-string p2, "jsConfigSDKTimeoutRunnable"

    const/4 v0, 0x0

    if-eqz p1, :cond_31

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_31

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getJsConfigSDKTimeoutRunnable$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_2e

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_2e
    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 274
    :cond_31
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_54

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getHandler()Landroid/os/Handler;

    move-result-object p1

    if-eqz p1, :cond_54

    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getJsConfigSDKTimeoutRunnable$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/Runnable;

    move-result-object v1

    if-nez v1, :cond_4b

    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v0

    :cond_4b
    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getLoadTimeoutMills$p(Lcom/codemao/toolssdk/view/ToolsWebView;)J

    move-result-wide v2

    invoke-virtual {p1, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 275
    :cond_54
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p2

    if-eqz p2, :cond_63

    invoke-virtual {p2}, Lcom/codemao/toolssdk/manager/CMToolsManager;->getToolType()Ljava/lang/String;

    move-result-object p2

    goto :goto_64

    :cond_63
    move-object p2, v0

    :goto_64
    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object v1

    if-eqz v1, :cond_70

    invoke-virtual {v1}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->getEnterFrom()Ljava/lang/String;

    move-result-object v0

    :cond_70
    const-string v1, "webview回调onPageFinished"

    invoke-virtual {p1, v1, p2, v0}, Lcom/codemao/toolssdk/func/logevent/WorkLogEventUtils;->loadProcess(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .registers 4

    .line 368
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    const-string p1, "加载过程"

    const-string p2, "webViewClient onPageStarted"

    .line 369
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    sget-object p1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    const-string p2, "onPageStarted"

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/utils/ExtLog;->dKnLoad(Ljava/lang/String;)V

    .line 371
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_1c

    invoke-virtual {p1}, Lcom/codemao/toolssdk/manager/CMToolsManager;->toolLoadDidStart()V

    :cond_1c
    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5

    .line 420
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V

    .line 421
    invoke-direct {p0, p4, p3}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->checkReceivedUrlError(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V
    .registers 6

    .line 377
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceError;)V

    .line 378
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v0, 0x0

    const/16 v1, 0x17

    if-lt p1, v1, :cond_22

    if-eqz p2, :cond_17

    .line 379
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_17

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_18

    :cond_17
    move-object p1, v0

    :goto_18
    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/webkit/WebResourceError;->getDescription()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1e
    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->checkReceivedUrlError(Ljava/lang/String;Ljava/lang/CharSequence;)V

    goto :goto_33

    :cond_22
    if-eqz p2, :cond_2f

    .line 381
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p1

    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_30

    :cond_2f
    move-object p1, v0

    :goto_30
    invoke-direct {p0, p1, v0}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->checkReceivedUrlError(Ljava/lang/String;Ljava/lang/CharSequence;)V

    :goto_33
    return-void
.end method

.method public onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V
    .registers 4

    .line 413
    invoke-super {p0, p1, p2, p3}, Landroid/webkit/WebViewClient;->onReceivedHttpError(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;Landroid/webkit/WebResourceResponse;)V

    const/4 p1, 0x0

    if-eqz p2, :cond_11

    .line 414
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object p2

    if-eqz p2, :cond_11

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_12

    :cond_11
    move-object p2, p1

    :goto_12
    if-eqz p3, :cond_18

    invoke-virtual {p3}, Landroid/webkit/WebResourceResponse;->getReasonPhrase()Ljava/lang/String;

    move-result-object p1

    :cond_18
    invoke-direct {p0, p2, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->checkReceivedUrlError(Ljava/lang/String;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onReceivedSslError(Landroid/webkit/WebView;Landroid/webkit/SslErrorHandler;Landroid/net/http/SslError;)V
    .registers 4

    if-eqz p2, :cond_5

    .line 388
    invoke-virtual {p2}, Landroid/webkit/SslErrorHandler;->cancel()V

    :cond_5
    return-void
.end method

.method public onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z
    .registers 6

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "摄像头"

    const-string v1, "onRenderProcessGone"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sget-object v1, Lcom/codemao/toolssdk/jsapi/DeviceJsApi;->Companion:Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/jsapi/DeviceJsApi$Companion;->setWebViewRenderGone(Z)V

    const-string v1, "发生了崩溃,改为true"

    .line 239
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Lcom/codemao/toolssdk/view/ToolsWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object v0

    if-ne p1, v0, :cond_9c

    .line 243
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/webkit/WebView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    const-string p2, "dWebView.layoutParams"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 245
    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->destroyWebView()V

    .line 247
    new-instance p2, Lcom/codemao/toolssdk/dsbridge/DWebView;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/dsbridge/DWebView;-><init>(Landroid/content/Context;)V

    .line 248
    invoke-virtual {p2, p1}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->setDWebView(Lcom/codemao/toolssdk/dsbridge/DWebView;)V

    .line 252
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$initView(Lcom/codemao/toolssdk/view/ToolsWebView;)V

    .line 253
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 254
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getRenderGoneListener$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_68

    .line 255
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getRenderGoneListener$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lkotlin/jvm/functions/Function0;

    move-result-object p1

    if-eqz p1, :cond_83

    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    goto :goto_83

    .line 257
    :cond_68
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getCmToolsManager()Lcom/codemao/toolssdk/manager/CMToolsManager;

    move-result-object p1

    if-eqz p1, :cond_74

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/manager/opt/CMToolsManagerBiz;->setCreateStartTime(Ljava/lang/Long;)V

    .line 258
    :cond_74
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->getDWebView()Lcom/codemao/toolssdk/dsbridge/DWebView;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getLastUrl$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/dsbridge/DWebView;->loadUrl(Ljava/lang/String;)V

    .line 260
    :cond_83
    :goto_83
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getReportRenderGone$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Z

    move-result p1

    if-nez p1, :cond_9b

    .line 261
    sget-object p1, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->INSTANCE:Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getLastUrl$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/codemao/toolssdk/func/logevent/WebLogEventUtils;->renderGone(Ljava/lang/String;)V

    .line 262
    iget-object p1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {p1, v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$setReportRenderGone$p(Lcom/codemao/toolssdk/view/ToolsWebView;Z)V

    :cond_9b
    return v2

    .line 266
    :cond_9c
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onRenderProcessGone(Landroid/webkit/WebView;Landroid/webkit/RenderProcessGoneDetail;)Z

    move-result p1

    return p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;
    .registers 15

    const/4 v0, 0x0

    if-eqz p2, :cond_8

    .line 310
    invoke-interface {p2}, Landroid/webkit/WebResourceRequest;->getUrl()Landroid/net/Uri;

    move-result-object v1

    goto :goto_9

    :cond_8
    move-object v1, v0

    .line 311
    :goto_9
    sget-object v2, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "原始1："

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dShouldInterceptRequest(Ljava/lang/String;)V

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_34

    .line 312
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_34

    const-string v6, "https://codemaotools"

    invoke-static {v5, v6, v4, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v3, :cond_34

    const/4 v5, 0x1

    goto :goto_35

    :cond_34
    const/4 v5, 0x0

    :goto_35
    if-eqz v5, :cond_62

    .line 313
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_48

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "https://codemaotools"

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_49

    :cond_48
    const/4 p1, -0x1

    .line 314
    :goto_49
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_59

    add-int/2addr p1, v3

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_59
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 315
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_62
    if-eqz v1, :cond_73

    .line 316
    invoke-virtual {v1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_73

    const-string v6, "file"

    invoke-static {v5, v6, v4, v2, v0}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v2

    if-ne v2, v3, :cond_73

    goto :goto_74

    :cond_73
    const/4 v3, 0x0

    :goto_74
    if-eqz v3, :cond_83

    .line 317
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 318
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 319
    :cond_83
    sget-object v2, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_92

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_93

    :cond_92
    move-object v4, v0

    :goto_93
    invoke-virtual {v2, v3, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnAssetsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    const-string v4, "context"

    if-eqz v3, :cond_b9

    if-eqz v1, :cond_a1

    .line 320
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_a1
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 321
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_KN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_b9
    if-eqz v1, :cond_c0

    .line 322
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_c1

    :cond_c0
    move-object v3, v0

    :goto_c1
    invoke-virtual {v2, v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isAIKidsMatch(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_e5

    if-eqz v1, :cond_cd

    .line 323
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_cd
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 324
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 325
    :cond_e5
    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_f2

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_f3

    :cond_f2
    move-object v5, v0

    :goto_f3
    invoke-virtual {v2, v3, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_117

    if-eqz v1, :cond_ff

    .line 326
    invoke-virtual {v1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    :cond_ff
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 327
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_ZIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 328
    :cond_117
    iget-object v3, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v3}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v3

    if-eqz v1, :cond_124

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_125

    :cond_124
    move-object v5, v0

    :goto_125
    invoke-virtual {v2, v3, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_13f

    .line 329
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_KN_MEDIA()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v1, v0}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 330
    :cond_13f
    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getShouldInterceptRequestCallback$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    move-result-object v1

    if-eqz v1, :cond_156

    .line 331
    iget-object v1, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v1}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getShouldInterceptRequestCallback$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;

    move-result-object v1

    if-eqz v1, :cond_153

    invoke-interface {v1, p1, p2}, Lcom/codemao/toolssdk/view/WebViewShouldInterceptRequestCallback;->getResponse(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object v0

    :cond_153
    if-eqz v0, :cond_156

    return-object v0

    .line 336
    :cond_156
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Landroid/webkit/WebResourceRequest;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method

.method public shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;
    .registers 15

    .line 343
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 344
    sget-object v1, Lcom/codemao/toolssdk/utils/ExtLog;->INSTANCE:Lcom/codemao/toolssdk/utils/ExtLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "原始2："

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/utils/ExtLogOther;->dShouldInterceptRequest(Ljava/lang/String;)V

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz p2, :cond_2a

    const-string v5, "https://codemaotools"

    .line 345
    invoke-static {p2, v5, v3, v1, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v5

    if-ne v5, v2, :cond_2a

    const/4 v5, 0x1

    goto :goto_2b

    :cond_2a
    const/4 v5, 0x0

    :goto_2b
    if-eqz v5, :cond_58

    .line 346
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3e

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x6

    const/4 v11, 0x0

    const-string v7, "https://codemaotools"

    invoke-static/range {v6 .. v11}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    move-result p1

    goto :goto_3f

    :cond_3e
    const/4 p1, -0x1

    .line 347
    :goto_3f
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_4f

    add-int/2addr p1, v2

    invoke-virtual {p2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    const-string p1, "this as java.lang.String).substring(startIndex)"

    invoke-static {v4, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_4f
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 348
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_58
    if-eqz v0, :cond_69

    .line 349
    invoke-virtual {v0}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_69

    const-string v6, "file"

    invoke-static {v5, v6, v3, v1, v4}, Lkotlin/text/StringsKt;->startsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v1

    if-ne v1, v2, :cond_69

    goto :goto_6a

    :cond_69
    const/4 v2, 0x0

    :goto_6a
    if-eqz v2, :cond_79

    .line 350
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 351
    invoke-virtual {p0, p1}, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->interceptRequest(Landroid/net/Uri;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 352
    :cond_79
    sget-object v1, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi;->Companion:Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;

    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_88

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_89

    :cond_88
    move-object v3, v4

    :goto_89
    invoke-virtual {v1, v2, v3}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnAssetsMatch(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    const-string v3, "context"

    if-eqz v2, :cond_af

    if-eqz v0, :cond_97

    .line 353
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    :cond_97
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 354
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_KN()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 355
    :cond_af
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_bc

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_bd

    :cond_bc
    move-object v5, v4

    :goto_bd
    invoke-virtual {v1, v2, v5}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnZip(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e1

    if-eqz v0, :cond_c9

    .line 356
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    :cond_c9
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 357
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_ZIP()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    :cond_e1
    if-eqz v0, :cond_e8

    .line 358
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_e9

    :cond_e8
    move-object v2, v4

    :goto_e9
    invoke-virtual {v1, v2}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isAIKidsMatch(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10d

    if-eqz v0, :cond_f5

    .line 359
    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    :cond_f5
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 360
    sget-object p2, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object v0, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_ASSETS_AIKIDS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, p1, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 361
    :cond_10d
    iget-object v2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-static {v2}, Lcom/codemao/toolssdk/view/ToolsWebView;->access$getCurrentToolType$p(Lcom/codemao/toolssdk/view/ToolsWebView;)Ljava/lang/String;

    move-result-object v2

    if-eqz v0, :cond_119

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v4

    :cond_119
    invoke-virtual {v1, v2, v4}, Lcom/codemao/toolssdk/cpp/jsobjects/objects/file/CppFileJsApi$Companion;->isKnImage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_133

    .line 362
    sget-object p1, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig;->Companion:Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;

    iget-object p2, p0, Lcom/codemao/toolssdk/view/ToolsWebView$initView$6;->this$0:Lcom/codemao/toolssdk/view/ToolsWebView;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->getLOCAL_CACHE_KN_MEDIA()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p2, v0, v1}, Lcom/codemao/toolssdk/cpp/view/CppWebViewConfig$Companion;->loadLocalAssets(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1

    .line 364
    :cond_133
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->shouldInterceptRequest(Landroid/webkit/WebView;Ljava/lang/String;)Landroid/webkit/WebResourceResponse;

    move-result-object p1

    return-object p1
.end method
