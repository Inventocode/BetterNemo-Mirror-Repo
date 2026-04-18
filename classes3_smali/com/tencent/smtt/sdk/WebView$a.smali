.class Lcom/tencent/smtt/sdk/WebView$a;
.super Landroid/webkit/WebView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/tencent/smtt/sdk/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/smtt/sdk/WebView;


# direct methods
.method public constructor <init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {p1, p2}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getIsSysWebViewForcedByOuter()Z

    move-result p3

    if-eqz p3, :cond_16

    invoke-static {p2}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_16

    goto :goto_4f

    :cond_16
    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V

    :try_start_21
    const-string p1, "android.webkit.WebViewWorker"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string p2, "getHandler"

    const/4 p3, 0x0

    new-array v0, p3, [Ljava/lang/Class;

    invoke-virtual {p1, p2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v0, 0x0

    new-array p3, p3, [Ljava/lang/Object;

    invoke-virtual {p1, v0, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p1

    new-instance p3, Lcom/tencent/smtt/sdk/g;

    invoke-direct {p3}, Lcom/tencent/smtt/sdk/g;-><init>()V

    invoke-virtual {p1, p3}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean p2, Lcom/tencent/smtt/sdk/WebView;->mSysWebviewCreated:Z
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_4f} :catch_4f

    :catch_4f
    :goto_4f
    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    return-void
.end method

.method public a(IIII)V
    .registers 5

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    return-void
.end method

.method public a(IIZZ)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_9

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    :cond_9
    return-void
.end method

.method public a(IIIIIIIIZ)Z
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_b

    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result p1

    return p1

    :cond_b
    const/4 p1, 0x0

    return p1
.end method

.method public a(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public b(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public c(Landroid/view/MotionEvent;)Z
    .registers 2

    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public computeScroll()V
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_a

    invoke-interface {v0, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->computeScroll(Landroid/view/View;)V

    goto :goto_d

    :cond_a
    invoke-super {p0}, Landroid/webkit/WebView;->computeScroll()V

    :goto_d
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .registers 3

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchDraw(Landroid/graphics/Canvas;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->e()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->f()Landroid/graphics/Paint;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->f()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V
    :try_end_1c
    .catchall {:try_start_0 .. :try_end_1c} :catchall_1d

    goto :goto_21

    :catchall_1d
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_21
    :goto_21
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->dispatchTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Landroid/webkit/WebView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public getSettings()Landroid/webkit/WebSettings;
    .registers 2

    :try_start_0
    invoke-super {p0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4} :catch_5

    return-object v0

    :catch_5
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return-object v0
.end method

.method public invalidate()V
    .registers 2

    invoke-super {p0}, Landroid/webkit/WebView;->invalidate()V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_c

    invoke-interface {v0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->invalidate()V

    :cond_c
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onInterceptTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_b
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onOverScrolled(IIZZ)V
    .registers 12
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v1, :cond_f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onOverScrolled(IIZZLandroid/view/View;)V

    goto :goto_18

    :cond_f
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_18

    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onOverScrolled(IIZZ)V

    :cond_18
    :goto_18
    return-void
.end method

.method protected onScrollChanged(IIII)V
    .registers 12

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v1, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v1, :cond_f

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p0

    invoke-interface/range {v1 .. v6}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onScrollChanged(IIIILandroid/view/View;)V

    goto :goto_17

    :cond_f
    invoke-super {p0, p1, p2, p3, p4}, Landroid/webkit/WebView;->onScrollChanged(IIII)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    invoke-static {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView;->b(Lcom/tencent/smtt/sdk/WebView;IIII)V

    :goto_17
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/webkit/WebView;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-virtual {p0}, Landroid/webkit/WebView;->requestFocus()Z

    :cond_9
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_14

    invoke-interface {v0, p1, p0}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->onTouchEvent(Landroid/view/MotionEvent;Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_14
    :try_start_14
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1
    :try_end_18
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_18} :catch_19

    return p1

    :catch_19
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return p1
.end method

.method public overScrollBy(IIIIIIIIZ)Z
    .registers 22
    .annotation build Landroid/annotation/TargetApi;
        value = 0x9
    .end annotation

    move-object v11, p0

    iget-object v0, v11, Lcom/tencent/smtt/sdk/WebView$a;->a:Lcom/tencent/smtt/sdk/WebView;

    iget-object v0, v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    if-eqz v0, :cond_1c

    move v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v10, p0

    invoke-interface/range {v0 .. v10}, Lcom/tencent/smtt/sdk/WebViewCallbackClient;->overScrollBy(IIIIIIIIZLandroid/view/View;)Z

    move-result v0

    return v0

    :cond_1c
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x9

    if-lt v0, v1, :cond_27

    invoke-super/range {p0 .. p9}, Landroid/webkit/WebView;->overScrollBy(IIIIIIIIZ)Z

    move-result v0

    return v0

    :cond_27
    const/4 v0, 0x0

    return v0
.end method

.method public setOverScrollMode(I)V
    .registers 2

    :try_start_0
    invoke-super {p0, p1}, Landroid/webkit/WebView;->setOverScrollMode(I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_3

    :catch_3
    return-void
.end method
