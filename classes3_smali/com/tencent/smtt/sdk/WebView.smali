.class public Lcom/tencent/smtt/sdk/WebView;
.super Landroid/widget/FrameLayout;

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/sdk/WebView$a;,
        Lcom/tencent/smtt/sdk/WebView$PictureListener;,
        Lcom/tencent/smtt/sdk/WebView$HitTestResult;,
        Lcom/tencent/smtt/sdk/WebView$WebViewTransport;
    }
.end annotation


# static fields
.field public static final GETPVERROR:I = -0x1

.field public static NIGHT_MODE_ALPHA:I = 0x0

.field public static final NIGHT_MODE_COLOR:I = -0x1000000

.field public static final NORMAL_MODE_ALPHA:I = 0xff

.field public static final SCHEME_GEO:Ljava/lang/String; = "geo:0,0?q="

.field public static final SCHEME_MAILTO:Ljava/lang/String; = "mailto:"

.field public static final SCHEME_TEL:Ljava/lang/String; = "tel:"

.field private static final c:Ljava/util/concurrent/locks/Lock;

.field private static d:Ljava/io/OutputStream;

.field private static j:Landroid/content/Context;

.field private static l:Lcom/tencent/smtt/utils/n;

.field private static m:Ljava/lang/reflect/Method;

.field public static mSysWebviewCreated:Z

.field public static mWebViewCreated:Z

.field private static p:Ljava/lang/String;

.field private static v:Landroid/graphics/Paint;

.field private static w:Z


# instance fields
.field a:I

.field private final b:Ljava/lang/String;

.field private e:Z

.field private f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

.field private g:Lcom/tencent/smtt/sdk/WebView$a;

.field private h:Lcom/tencent/smtt/sdk/WebSettings;

.field private i:Landroid/content/Context;

.field private k:Z

.field public mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

.field private n:Lcom/tencent/smtt/sdk/WebViewClient;

.field private o:Lcom/tencent/smtt/sdk/WebChromeClient;

.field private final q:I

.field private final r:I

.field private final s:I

.field private final t:Ljava/lang/String;

.field private final u:Ljava/lang/String;

.field private x:Ljava/lang/Object;

.field private y:Landroid/view/View$OnLongClickListener;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    const/4 v0, 0x0

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->j:Landroid/content/Context;

    const/4 v1, 0x0

    sput-boolean v1, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/n;

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->m:Ljava/lang/reflect/Method;

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    sput-boolean v1, Lcom/tencent/smtt/sdk/WebView;->mSysWebviewCreated:Z

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    const/16 v0, 0x99

    sput v0, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V
    .registers 14
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/util/AttributeSet;",
            "I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p3, "WebView"

    iput-object p3, p0, Lcom/tencent/smtt/sdk/WebView;->b:Ljava/lang/String;

    const/4 p4, 0x0

    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 p5, 0x0

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iput p4, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    const/4 v0, 0x1

    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->q:I

    const/4 v1, 0x2

    iput v1, p0, Lcom/tencent/smtt/sdk/WebView;->r:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/tencent/smtt/sdk/WebView;->s:I

    const-string v1, "javascript:document.getElementsByTagName(\'HEAD\').item(0).removeChild(document.getElementById(\'QQBrowserSDKNightMode\'));"

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->t:Ljava/lang/String;

    const-string v1, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->u:Ljava/lang/String;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCreated:Z

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->getIsSysWebViewForcedByOuter()Z

    move-result v1

    const-string v2, "failed to createTBSWebview!"

    const/4 v3, -0x1

    if-eqz v1, :cond_b7

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_b7

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {p2}, Lcom/tencent/smtt/sdk/CookieSyncManager;->createInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/CookieSyncManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieSyncManager;->startSync()V

    :try_start_5d
    const-string p2, "android.webkit.WebViewWorker"

    invoke-static {p2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p2

    const-string v1, "getHandler"

    new-array v2, p4, [Ljava/lang/Class;

    invoke-virtual {p2, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array p4, p4, [Ljava/lang/Object;

    invoke-virtual {p2, p5, p4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/Handler;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object p2

    new-instance p4, Lcom/tencent/smtt/sdk/g;

    invoke-direct {p4}, Lcom/tencent/smtt/sdk/g;-><init>()V

    invoke-virtual {p2, p4}, Ljava/lang/Thread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    sput-boolean v0, Lcom/tencent/smtt/sdk/WebView;->mSysWebviewCreated:Z
    :try_end_88
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_88} :catch_88

    :catch_88
    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance p4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p4, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    const-string p2, "SystemWebView Created Success! #3"

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "sys WebView: IsSysWebViewForcedByOuter = true"

    invoke-static {p3, p2, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->getInstance()Lcom/tencent/smtt/sdk/TbsCoreLoadStat;

    move-result-object p2

    const/16 p3, 0x192

    new-instance p4, Ljava/lang/Throwable;

    invoke-direct {p4}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {p2, p1, p3, p4}, Lcom/tencent/smtt/sdk/TbsCoreLoadStat;->a(Landroid/content/Context;ILjava/lang/Throwable;)V

    return-void

    :cond_b7
    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_c1

    invoke-static {v0}, Lcom/tencent/smtt/utils/TbsLog;->setWriteLogJIT(Z)V

    goto :goto_c4

    :cond_c1
    invoke-static {p4}, Lcom/tencent/smtt/utils/TbsLog;->setWriteLogJIT(Z)V

    :goto_c4
    invoke-static {p1}, Lcom/tencent/smtt/utils/TbsLog;->initIfNeed(Landroid/content/Context;)V

    if-eqz p1, :cond_2b3

    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/n;

    if-nez v1, :cond_d3

    invoke-static {p1}, Lcom/tencent/smtt/utils/n;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/n;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/n;

    :cond_d3
    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->l:Lcom/tencent/smtt/utils/n;

    iget-boolean v1, v1, Lcom/tencent/smtt/utils/n;->a:Z

    if-eqz v1, :cond_e3

    const-string v1, "sys WebView: debug.conf force syswebview"

    invoke-static {p3, v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    const-string v1, "debug.conf force syswebview!"

    invoke-static {p1, v1}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    :cond_e3
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->c(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    sput-object v1, Lcom/tencent/smtt/sdk/WebView;->j:Landroid/content/Context;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v4, "accessibilityTraversal"

    const-string v5, "accessibility"

    const-string v6, "searchBoxJavaBridge_"

    const/16 v7, 0xb

    if-eqz v1, :cond_1bd

    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->a:Z

    if-nez v1, :cond_1bd

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/tencent/smtt/sdk/w;->a(Z)Lcom/tencent/smtt/sdk/x;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/tencent/smtt/sdk/x;->a(Landroid/content/Context;)Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz v1, :cond_15c

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_115

    goto :goto_15c

    :cond_115
    const-string v1, "X5 WebView Created Success!!"

    invoke-static {p3, v1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    invoke-direct {p0, p2}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/util/AttributeSet;)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object p2

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    new-instance v1, Lcom/tencent/smtt/sdk/b;

    iget-boolean v2, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {v1, p0, p5, v2}, Lcom/tencent/smtt/sdk/b;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;Z)V

    invoke-interface {p2, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setDownloadListener(Lcom/tencent/smtt/export/external/interfaces/DownloadListener;)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p2

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$1;

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/tencent/smtt/sdk/w;->a(Z)Lcom/tencent/smtt/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/x;->k()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/tencent/smtt/sdk/WebView$1;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    invoke-interface {p2, v1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->setWebViewClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    goto/16 :goto_201

    :cond_15c
    :goto_15c
    const-string v1, "sys WebView: failed to createTBSWebview"

    invoke-static {p3, v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    iput-boolean p4, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-static {p1, v2}, Lcom/tencent/smtt/sdk/QbSdk;->a(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->c(Landroid/content/Context;)V

    iget-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {p5}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p5

    if-eqz p5, :cond_17b

    new-instance p5, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {p5, p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    goto :goto_182

    :cond_17b
    new-instance p2, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {p2, p0, p1}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    :goto_182
    const-string p2, "SystemWebView Created Success! #1"

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :try_start_1a4
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v7, :cond_1b6

    invoke-virtual {p0, v6}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_1b1
    .catchall {:try_start_1a4 .. :try_end_1b1} :catchall_1b2

    goto :goto_1b6

    :catchall_1b2
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1b6
    :goto_1b6
    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;)V

    return-void

    :cond_1bd
    iput-object p5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1cf

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    goto :goto_1d6

    :cond_1cf
    new-instance p2, Lcom/tencent/smtt/sdk/WebView$a;

    invoke-direct {p2, p0, p1}, Lcom/tencent/smtt/sdk/WebView$a;-><init>(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)V

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    :goto_1d6
    const-string p2, "SystemWebView Created Success! #2"

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2, p1, v0, p4}, Lcom/tencent/smtt/sdk/CookieManager;->a(Landroid/content/Context;ZZ)V

    invoke-static {}, Lcom/tencent/smtt/sdk/CookieManager;->getInstance()Lcom/tencent/smtt/sdk/CookieManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/CookieManager;->a()V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p2, v0}, Landroid/webkit/WebView;->setFocusableInTouchMode(Z)V

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p0, p5}, Lcom/tencent/smtt/sdk/WebView;->setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V

    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/o;->a(Landroid/content/Context;)V

    :goto_201
    :try_start_201
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v7, :cond_213

    invoke-virtual {p0, v6}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/tencent/smtt/sdk/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_20e
    .catchall {:try_start_201 .. :try_end_20e} :catchall_20f

    goto :goto_213

    :catchall_20f
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_213
    :goto_213
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_233

    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p2

    iget-object p2, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.tencent.mm"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_244

    :cond_233
    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object p2

    invoke-virtual {p2}, Lcom/tencent/smtt/sdk/f;->h()Z

    move-result p2

    if-eqz p2, :cond_244

    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt p2, v7, :cond_244

    invoke-virtual {p0, v0, p5}, Landroid/widget/FrameLayout;->setLayerType(ILandroid/graphics/Paint;)V

    :cond_244
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz p2, :cond_2af

    invoke-static {}, Lcom/tencent/smtt/utils/TbsLog;->writeLogToDisk()V

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_2af

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->getInstance(Landroid/content/Context;)Lcom/tencent/smtt/sdk/TbsDownloadConfig;

    move-result-object p2

    iget-object p2, p2, Lcom/tencent/smtt/sdk/TbsDownloadConfig;->mPreferences:Landroid/content/SharedPreferences;

    const-string p5, "tbs_decouplecoreversion"

    invoke-interface {p2, p5, p4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p2

    if-lez p2, :cond_27b

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result p4

    if-eq p2, p4, :cond_27b

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p4

    invoke-virtual {p4, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p4

    if-ne p2, p4, :cond_27b

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/o;->n(Landroid/content/Context;)Z

    goto :goto_2af

    :cond_27b
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "webview construction #1 deCoupleCoreVersion is "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " getTbsCoreShareDecoupleCoreVersion is "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/o;->h(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " getTbsCoreInstalledVerInNolock is "

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/o;->a()Lcom/tencent/smtt/sdk/o;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/tencent/smtt/sdk/o;->i(Landroid/content/Context;)I

    move-result p2

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2af
    :goto_2af
    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->continueLoadSo(Landroid/content/Context;)V

    return-void

    :cond_2b3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid context argument"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IZ)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/tencent/smtt/sdk/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILjava/util/Map;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Z)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "WebView"

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->b:Ljava/lang/String;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 p2, 0x0

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    const/4 p1, 0x1

    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->q:I

    const/4 p1, 0x2

    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->r:I

    const/4 p1, 0x3

    iput p1, p0, Lcom/tencent/smtt/sdk/WebView;->s:I

    const-string p1, "javascript:document.getElementsByTagName(\'HEAD\').item(0).removeChild(document.getElementById(\'QQBrowserSDKNightMode\'));"

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->t:Ljava/lang/String;

    const-string p1, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->u:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    iput-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/WebView;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;)Landroid/content/Context;
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->d(Landroid/content/Context;)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private a(Landroid/util/AttributeSet;)V
    .registers 8

    if-eqz p1, :cond_60

    :try_start_2
    invoke-interface {p1}, Landroid/util/AttributeSet;->getAttributeCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_8
    if-ge v2, v0, :cond_60

    invoke-interface {p1, v2}, Landroid/util/AttributeSet;->getAttributeName(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "scrollbars"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_59

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10100de

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    const/4 v4, -0x1

    invoke-interface {p1, v2, v4}, Landroid/util/AttributeSet;->getAttributeIntValue(II)I

    move-result v4

    const/4 v5, 0x1

    aget v5, v3, v5

    if-ne v4, v5, :cond_3e

    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    :goto_3a
    invoke-virtual {v3, v1}, Landroid/view/View;->setHorizontalScrollBarEnabled(Z)V

    goto :goto_59

    :cond_3e
    const/4 v5, 0x2

    aget v5, v3, v5

    if-ne v4, v5, :cond_4d

    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    goto :goto_59

    :cond_4d
    const/4 v5, 0x3

    aget v3, v3, v5

    if-ne v4, v3, :cond_59

    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v3
    :try_end_58
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_58} :catch_5c

    goto :goto_3a

    :cond_59
    :goto_59
    add-int/lit8 v2, v2, 0x1

    goto :goto_8

    :catch_5c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_60
    return-void
.end method

.method static synthetic a(Lcom/tencent/smtt/sdk/WebView;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method private a(Landroid/view/View;)Z
    .registers 7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebView;->getTbsCoreVersion(Landroid/content/Context;)I

    move-result v0

    const v2, 0x8d68

    if-le v0, v2, :cond_f

    return v1

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    aput-object v4, v3, v1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v1

    const-string p1, "onLongClick"

    invoke-static {v0, p1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2b

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_2b
    return v1
.end method

.method static synthetic b(Lcom/tencent/smtt/sdk/WebView;IIII)V
    .registers 5

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onScrollChanged(IIII)V

    return-void
.end method

.method private b(Landroid/content/Context;)Z
    .registers 3

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1
    :try_end_a
    .catchall {:try_start_0 .. :try_end_a} :catchall_e

    if-ltz p1, :cond_12

    const/4 p1, 0x1

    return p1

    :catchall_e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_12
    const/4 p1, 0x0

    return p1
.end method

.method private c(Landroid/content/Context;)V
    .registers 3

    sget-boolean v0, Lcom/tencent/smtt/sdk/QbSdk;->i:Z

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->getInstance()Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/TbsExtensionFunctionManager;->initTbsBuglyIfNeed(Landroid/content/Context;)V

    :cond_11
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/w;->a(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result p1

    iput-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    return-void
.end method

.method private d(Landroid/content/Context;)Landroid/content/Context;
    .registers 4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_13

    const/16 v1, 0x16

    if-gt v0, v1, :cond_13

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    invoke-virtual {p1, v0}, Landroid/content/Context;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object p1

    :cond_13
    return-object p1
.end method

.method static d()V
    .registers 3

    new-instance v0, Lcom/tencent/smtt/sdk/WebView$8;

    invoke-direct {v0}, Lcom/tencent/smtt/sdk/WebView$8;-><init>()V

    :try_start_5
    new-instance v1, Ljava/lang/Thread;

    invoke-direct {v1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_d
    .catchall {:try_start_5 .. :try_end_d} :catchall_e

    goto :goto_25

    :catchall_e
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRebootStatus excpetion: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "webview"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_25
    return-void
.end method

.method public static disablePlatformNotifications()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "android.webkit.WebView"

    const-string v1, "disablePlatformNotifications"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method private e(Landroid/content/Context;)I
    .registers 11

    const-string v0, "TbsInstaller--getTbsCorePV IOException="

    const-string v1, "getTbsCorePV"

    const/4 v2, 0x1

    const-string v3, "tbslock.txt"

    invoke-static {p1, v2, v3}, Lcom/tencent/smtt/utils/FileUtil;->b(Landroid/content/Context;ZLjava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object v2

    const/4 v3, -0x1

    if-eqz v2, :cond_104

    invoke-static {p1, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Landroid/content/Context;Ljava/io/FileOutputStream;)Ljava/nio/channels/FileLock;

    move-result-object v4

    if-nez v4, :cond_15

    return v3

    :cond_15
    sget-object v5, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->tryLock()Z

    move-result v6

    if-eqz v6, :cond_101

    const/4 v6, 0x0

    :try_start_1e
    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v7, Ljava/io/File;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core_private"

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v8, "pv.db"

    invoke-direct {v7, p1, v8}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result p1
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_43} :catch_b5
    .catchall {:try_start_1e .. :try_end_43} :catchall_b3

    if-nez p1, :cond_4c

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    :goto_48
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    return v3

    :cond_4c
    :try_start_4c
    new-instance p1, Ljava/util/Properties;

    invoke-direct {p1}, Ljava/util/Properties;-><init>()V

    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_56
    .catch Ljava/lang/Exception; {:try_start_4c .. :try_end_56} :catch_b5
    .catchall {:try_start_4c .. :try_end_56} :catchall_b3

    :try_start_56
    invoke-virtual {p1, v5}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V

    const-string v6, "PV"

    invoke-virtual {p1, v6}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_62
    .catch Ljava/lang/Exception; {:try_start_56 .. :try_end_62} :catch_b0
    .catchall {:try_start_56 .. :try_end_62} :catchall_ad

    if-nez p1, :cond_85

    :try_start_64
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_64 .. :try_end_67} :catch_68

    goto :goto_7f

    :catch_68
    move-exception p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    :goto_6e
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_7f
    :goto_7f
    sget-object p1, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {p1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    goto :goto_48

    :cond_85
    :try_start_85
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_89
    .catch Ljava/lang/Exception; {:try_start_85 .. :try_end_89} :catch_b0
    .catchall {:try_start_85 .. :try_end_89} :catchall_ad

    :try_start_89
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_8c
    .catch Ljava/io/IOException; {:try_start_89 .. :try_end_8c} :catch_8d

    goto :goto_a4

    :catch_8d
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_a4
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    return p1

    :catchall_ad
    move-exception p1

    move-object v6, v5

    goto :goto_db

    :catch_b0
    move-exception p1

    move-object v6, v5

    goto :goto_b6

    :catchall_b3
    move-exception p1

    goto :goto_db

    :catch_b5
    move-exception p1

    :goto_b6
    :try_start_b6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "TbsInstaller--getTbsCorePV Exception="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_ce
    .catchall {:try_start_b6 .. :try_end_ce} :catchall_b3

    if-eqz v6, :cond_7f

    :try_start_d0
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_d3
    .catch Ljava/io/IOException; {:try_start_d0 .. :try_end_d3} :catch_d4

    goto :goto_7f

    :catch_d4
    move-exception p1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_6e

    :goto_db
    if-eqz v6, :cond_f8

    :try_start_dd
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_e0
    .catch Ljava/io/IOException; {:try_start_dd .. :try_end_e0} :catch_e1

    goto :goto_f8

    :catch_e1
    move-exception v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f8
    :goto_f8
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->c:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v0}, Ljava/util/concurrent/locks/Lock;->unlock()V

    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    throw p1

    :cond_101
    invoke-static {v4, v2}, Lcom/tencent/smtt/utils/FileUtil;->a(Ljava/nio/channels/FileLock;Ljava/io/FileOutputStream;)V

    :cond_104
    return v3
.end method

.method static synthetic e()Z
    .registers 1

    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    return v0
.end method

.method public static enablePlatformNotifications()V
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v0

    if-nez v0, :cond_11

    const-string v0, "android.webkit.WebView"

    const-string v1, "enablePlatformNotifications"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    :cond_11
    return-void
.end method

.method static synthetic f()Landroid/graphics/Paint;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    return-object v0
.end method

.method private f(Landroid/content/Context;)V
    .registers 4

    :try_start_0
    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core_private"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pv.db"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_28

    return-void

    :cond_28
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c

    goto :goto_47

    :catch_2c
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TbsInstaller--getTbsCorePV Exception="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getTbsCorePV"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :goto_47
    return-void
.end method

.method public static findAddress(Ljava/lang/String;)Ljava/lang/String;
    .registers 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v0

    if-nez v0, :cond_f

    invoke-static {p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic g()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->j:Landroid/content/Context;

    return-object v0
.end method

.method public static getCrashExtraMessage(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    if-nez p0, :cond_5

    const-string p0, ""

    return-object p0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tbs_core_version:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersionForCrash(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "tbs_sdk_version:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0xabbf

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v3, "com.tencent.mm"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_4a

    :try_start_3d
    const-string v2, "de.robv.android.xposed.XposedBridge"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_42
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3d .. :try_end_42} :catch_49
    .catchall {:try_start_3d .. :try_end_42} :catchall_44

    const/4 v4, 0x1

    goto :goto_4a

    :catchall_44
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_4a

    :catch_49
    nop

    :cond_4a
    :goto_4a
    if-eqz v4, :cond_5e

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "isXposed=true;"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_5e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/tencent/smtt/sdk/f;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/tencent/smtt/sdk/TbsShareManager;->isThirdPartyApp(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_c6

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    if-eqz p0, :cond_c6

    const-string v0, "weapp_id"

    invoke-interface {p0, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c6

    sget-object p0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    const-string v4, "weapp_name"

    invoke-interface {p0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_c6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "weapp_id:"

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v5, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v5, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->n:Ljava/util/Map;

    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_c6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    const/16 v0, 0x2000

    if-le p0, v0, :cond_d8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    sub-int/2addr p0, v0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->substring(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_d8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;
    .registers 3

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_21

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v0, v2, :cond_12

    return-object v1

    :cond_12
    :try_start_12
    const-string v0, "android.webkit.WebView"

    const-string v2, "getCurrentWebViewPackage"

    invoke-static {v0, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageInfo;
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1c} :catch_1d

    return-object v0

    :catch_1d
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_21
    return-object v1
.end method

.method public static declared-synchronized getPluginList()Ljava/lang/Object;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Lcom/tencent/smtt/sdk/WebView;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-nez v1, :cond_17

    const-string v1, "android.webkit.WebView"

    const-string v2, "getPluginList"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_1a

    monitor-exit v0

    return-object v1

    :cond_17
    const/4 v1, 0x0

    monitor-exit v0

    return-object v1

    :catchall_1a
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static getTbsCoreVersion(Landroid/content/Context;)I
    .registers 1

    invoke-static {p0}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsVersion(Landroid/content/Context;)I

    move-result p0

    return p0
.end method

.method public static getTbsNeedReboot()Z
    .registers 1

    invoke-static {}, Lcom/tencent/smtt/sdk/WebView;->d()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/tencent/smtt/sdk/f;->a(Z)Lcom/tencent/smtt/sdk/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/f;->f()Z

    move-result v0

    return v0
.end method

.method public static getTbsSDKVersion(Landroid/content/Context;)I
    .registers 1

    const p0, 0xabbf

    return p0
.end method

.method private h()J
    .registers 8

    sget-object v0, Lcom/tencent/smtt/sdk/QbSdk;->h:Ljava/lang/Object;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/tencent/smtt/sdk/QbSdk;->e:Z

    if-eqz v1, :cond_2b

    sget-wide v1, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/tencent/smtt/sdk/QbSdk;->f:J

    sub-long/2addr v3, v5

    add-long/2addr v1, v3

    sput-wide v1, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    const-string v1, "sdkreport"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pv report, WebView.getWifiConnectedTime QbSdk.sWifiConnectedTime="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/TbsLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2b
    sget-wide v1, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    const-wide/16 v3, 0x0

    sput-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->g:J

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sput-wide v3, Lcom/tencent/smtt/sdk/QbSdk;->f:J

    monitor-exit v0

    return-wide v1

    :catchall_3c
    move-exception v1

    monitor-exit v0
    :try_end_3e
    .catchall {:try_start_3 .. :try_end_3e} :catchall_3c

    throw v1
.end method

.method public static setDataDirectorySuffix(Ljava/lang/String;)V
    .registers 7

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_22

    :try_start_6
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v1, "setDataDirectorySuffix"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p0, v2, v5

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_1d} :catch_1e

    goto :goto_22

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_22
    :goto_22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "data_directory_suffix"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/tencent/smtt/sdk/QbSdk;->initTbsSettings(Ljava/util/Map;)V

    return-void
.end method

.method public static declared-synchronized setSysDayOrNight(Z)V
    .registers 4

    const-class v0, Lcom/tencent/smtt/sdk/WebView;

    monitor-enter v0

    :try_start_3
    sget-boolean v1, Lcom/tencent/smtt/sdk/WebView;->w:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_3c

    if-ne p0, v1, :cond_9

    monitor-exit v0

    return-void

    :cond_9
    :try_start_9
    sput-boolean p0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    if-nez v1, :cond_1b

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    sput-object v1, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    :cond_1b
    if-nez p0, :cond_2d

    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    sget v1, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    if-eq p0, v1, :cond_3a

    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    :goto_29
    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    goto :goto_3a

    :cond_2d
    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;

    invoke-virtual {p0}, Landroid/graphics/Paint;->getAlpha()I

    move-result p0

    const/16 v1, 0xff

    if-eq p0, v1, :cond_3a

    sget-object p0, Lcom/tencent/smtt/sdk/WebView;->v:Landroid/graphics/Paint;
    :try_end_39
    .catchall {:try_start_9 .. :try_end_39} :catchall_3c

    goto :goto_29

    :cond_3a
    :goto_3a
    monitor-exit v0

    return-void

    :catchall_3c
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static setWebContentsDebuggingEnabled(Z)V
    .registers 6

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v0

    if-eqz v0, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->b()Z

    move-result v1

    if-eqz v1, :cond_14

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/w;->c()Lcom/tencent/smtt/sdk/x;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/tencent/smtt/sdk/x;->a(Z)V

    goto :goto_62

    :cond_14
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_62

    :try_start_1a
    const-string v0, "android.webkit.WebView"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "setWebContentsDebuggingEnabled"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->m:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_62

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->m:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    aput-object p0, v1, v4

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_43} :catch_44

    goto :goto_62

    :catch_44
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QbSdk"

    invoke-static {v1, v0}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_62
    :goto_62
    return-void
.end method


# virtual methods
.method protected a()V
    .registers 13

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    if-nez v0, :cond_8e

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_8e

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v1, ""

    if-eqz v0, :cond_33

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_33

    const-string v1, "guid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qua2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lc"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v4, v1

    move-object v5, v2

    goto :goto_36

    :cond_33
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_36
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.qzone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_51

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    :cond_51
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->f(Landroid/content/Context;)V

    :cond_58
    const/4 v0, 0x0

    :try_start_59
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v1
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_65

    move v11, v1

    goto :goto_7d

    :catchall_65
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "tbsOnDetachedFromWindow"

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_7d
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-boolean v8, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebView;->h()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    :cond_8e
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    return-void
.end method

.method a(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1f

    add-int/lit8 v0, v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PV="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_21

    :cond_1f
    const-string v0, "PV=1"

    :goto_21
    invoke-static {p1}, Lcom/tencent/smtt/sdk/QbSdk;->getTbsFolderDir(Landroid/content/Context;)Ljava/io/File;

    move-result-object p1

    new-instance v1, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "core_private"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "pv.db"

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_42
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result p1

    if-eqz p1, :cond_55

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_58

    :cond_55
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_58
    new-instance p1, Ljava/io/FileOutputStream;

    const/4 v2, 0x0

    invoke-direct {p1, v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    sput-object p1, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V
    :try_end_67
    .catchall {:try_start_42 .. :try_end_67} :catchall_6f

    :try_start_67
    sget-object p1, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    if-eqz p1, :cond_78

    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V

    goto :goto_78

    :catchall_6f
    move-exception p1

    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->d:Ljava/io/OutputStream;

    if-eqz v0, :cond_77

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    :cond_77
    throw p1
    :try_end_78
    .catchall {:try_start_67 .. :try_end_78} :catchall_78

    :catchall_78
    :cond_78
    :goto_78
    return-void
.end method

.method a(Landroid/webkit/WebView;)V
    .registers 2

    return-void
.end method

.method a(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;)V
    .registers 2

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    return-void
.end method

.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->addView(Landroid/view/View;)V

    goto :goto_28

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    const-string v1, "addView"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_28

    :catchall_28
    :goto_28
    return-void
.end method

.method b()Landroid/webkit/WebView;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    return-object v0

    :cond_7
    const/4 v0, 0x0

    return-object v0
.end method

.method c()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    return-object v0
.end method

.method public canGoBack()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoBack()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canGoBack()Z

    move-result v0

    return v0
.end method

.method public canGoBackOrForward(I)Z
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->canGoBackOrForward(I)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canGoBackOrForward(I)Z

    move-result p1

    return p1
.end method

.method public canGoForward()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->canGoForward()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canGoForward()Z

    move-result v0

    return v0
.end method

.method public canZoomIn()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "canZoomIn"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_1c

    :cond_16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canZoomIn()Z

    move-result v0

    return v0
.end method

.method public canZoomOut()Z
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "canZoomOut"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_1c

    :cond_16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->canZoomOut()Z

    move-result v0

    return v0
.end method

.method public capturePicture()Landroid/graphics/Picture;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "capturePicture"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_12

    :cond_10
    check-cast v0, Landroid/graphics/Picture;

    :goto_12
    return-object v0

    :cond_13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->capturePicture()Landroid/graphics/Picture;

    move-result-object v0

    return-object v0
.end method

.method public clearCache(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->clearCache(Z)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearCache(Z)V

    :goto_f
    return-void
.end method

.method public clearFormData()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearFormData()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearFormData()V

    :goto_f
    return-void
.end method

.method public clearHistory()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearHistory()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearHistory()V

    :goto_f
    return-void
.end method

.method public clearMatches()V
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearMatches()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearMatches()V

    :goto_f
    return-void
.end method

.method public clearSslPreferences()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->clearSslPreferences()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearSslPreferences()V

    :goto_f
    return-void
.end method

.method public clearView()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "clearView"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->clearView()V

    :goto_11
    return-void
.end method

.method public computeHorizontalScrollExtent()I
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_44

    const/4 v1, 0x1

    const-string v2, "computeHorizontalScrollExtent"

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    :try_start_8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_44

    return v0

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeHorizontalScrollOffset()I
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_44

    const/4 v1, 0x1

    const-string v2, "computeHorizontalScrollOffset"

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    :try_start_8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_44

    return v0

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeHorizontalScrollRange()I
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_37

    const-string v1, "computeHorizontalScrollRange"

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    :try_start_7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_37

    return v0

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeScroll()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView$a;->computeScroll()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->computeScroll()V

    :goto_f
    return-void
.end method

.method public computeVerticalScrollExtent()I
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_44

    const/4 v1, 0x1

    const-string v2, "computeVerticalScrollExtent"

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    :try_start_8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_44

    return v0

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeVerticalScrollOffset()I
    .registers 6

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_44

    const/4 v1, 0x1

    const-string v2, "computeVerticalScrollOffset"

    const/4 v3, 0x0

    if-eqz v0, :cond_2a

    :try_start_8
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_2a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v4, v3, [Ljava/lang/Class;

    invoke-static {v0, v2, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_43} :catch_44

    return v0

    :catch_44
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public computeVerticalScrollRange()I
    .registers 5

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2} :catch_37

    const-string v1, "computeVerticalScrollRange"

    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    :try_start_7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Class;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0

    :cond_1c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v3, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_36
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_36} :catch_37

    return v0

    :catch_37
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, -0x1

    return v0
.end method

.method public copyBackForwardList()Lcom/tencent/smtt/sdk/WebBackForwardList;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->copyBackForwardList()Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object v0

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->copyBackForwardList()Landroid/webkit/WebBackForwardList;

    move-result-object v0

    invoke-static {v0}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Landroid/webkit/WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object v0

    return-object v0
.end method

.method public createPrintDocumentAdapter(Ljava/lang/String;)Ljava/lang/Object;
    .registers 7

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    :try_start_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->createPrintDocumentAdapter(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_c

    return-object p1

    :catchall_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-object v1

    :cond_11
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-ge v0, v2, :cond_18

    return-object v1

    :cond_18
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "createPrintDocumentAdapter"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public customDiskCachePathEnabled(ZLjava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_22

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    if-eqz v0, :cond_22

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "enabled"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, "path"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p1

    const-string p2, "customDiskCachePathEnabled"

    invoke-interface {p1, p2, v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->invokeMiscMethod(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_22
    return-void
.end method

.method public destroy()V
    .registers 4

    const/4 v0, 0x1

    :try_start_1
    const-string v1, "com.xunmeng.pinduoduo"

    iget-object v2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$2;

    const-string v2, "WebviewDestroy"

    invoke-direct {v1, p0, v2}, Lcom/tencent/smtt/sdk/WebView$2;-><init>(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v1, :cond_25

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->destroy()V

    goto :goto_32

    :cond_25
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v1}, Landroid/webkit/WebView;->destroy()V

    goto :goto_32

    :cond_2b
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->tbsWebviewDestroy(Z)V
    :try_end_2e
    .catchall {:try_start_1 .. :try_end_2e} :catchall_2f

    goto :goto_32

    :catchall_2f
    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->tbsWebviewDestroy(Z)V

    :goto_32
    return-void
.end method

.method public documentHasImages(Landroid/os/Message;)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->documentHasImages(Landroid/os/Message;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->documentHasImages(Landroid/os/Message;)V

    :goto_f
    return-void
.end method

.method public dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V
    .registers 9

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/io/BufferedWriter;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "dumpViewHierarchyWithProperties"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_28

    :cond_23
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->dumpViewHierarchyWithProperties(Ljava/io/BufferedWriter;I)V

    :goto_28
    return-void
.end method

.method public evaluateJavascript(Ljava/lang/String;Lcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-class v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v2, "evaluateJavascript"

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_38

    :try_start_b
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v3

    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v6, v5

    invoke-static {v1, v2, v6}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_2f} :catch_30

    goto :goto_63

    :catch_30
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_63

    :cond_38
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x13

    if-lt v1, v6, :cond_63

    :try_start_3e
    const-string v1, "android.webkit.WebView"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    new-array v6, v4, [Ljava/lang/Class;

    aput-object v0, v6, v3

    const-class v0, Landroid/webkit/ValueCallback;

    aput-object v0, v6, v5

    invoke-virtual {v1, v2, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    aput-object p2, v2, v5

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_5e
    .catch Ljava/lang/Exception; {:try_start_3e .. :try_end_5e} :catch_5f

    goto :goto_63

    :catch_5f
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_63
    :goto_63
    return-void
.end method

.method public findAll(Ljava/lang/String;)I
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "findAll"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_21

    :cond_1b
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v4

    :goto_21
    return v4

    :cond_22
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findAll(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public findAllAsync(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "findAllAsync"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findAllAsync(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public findHierarchyView(Ljava/lang/String;I)Landroid/view/View;
    .registers 9

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_26

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "findHierarchyView"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    :cond_26
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findHierarchyView(Ljava/lang/String;I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public findNext(Z)V
    .registers 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->findNext(Z)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->findNext(Z)V

    :goto_f
    return-void
.end method

.method public flingScroll(II)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->flingScroll(II)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->flingScroll(II)V

    :goto_f
    return-void
.end method

.method public freeMemory()V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "freeMemory"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->freeMemory()V

    :goto_11
    return-void
.end method

.method public getCertificate()Landroid/net/http/SslCertificate;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getCertificate()Landroid/net/http/SslCertificate;

    move-result-object v0

    return-object v0
.end method

.method public getContentHeight()I
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getContentHeight()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getContentHeight()I

    move-result v0

    return v0
.end method

.method public getContentWidth()I
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getContentWidth"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_16

    :cond_10
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getContentWidth()I

    move-result v0

    return v0
.end method

.method public getFavicon()Landroid/graphics/Bitmap;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getFavicon()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getHitTestResult()Lcom/tencent/smtt/sdk/WebView$HitTestResult;
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_10

    new-instance v0, Lcom/tencent/smtt/sdk/WebView$HitTestResult;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v1}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;-><init>(Landroid/webkit/WebView$HitTestResult;)V

    return-object v0

    :cond_10
    new-instance v0, Lcom/tencent/smtt/sdk/WebView$HitTestResult;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getHitTestResult()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebView$HitTestResult;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;)V

    return-object v0
.end method

.method public getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getOriginalUrl()Ljava/lang/String;
    .registers 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x3
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getOriginalUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProgress()I
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getProgress()I

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getProgress()I

    move-result v0

    return v0
.end method

.method public getRendererPriorityWaivedWhenNotVisible()Z
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_1d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_c

    return v0

    :cond_c
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v2, "getRendererPriorityWaivedWhenNotVisible"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_1d

    :cond_17
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return v0

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getRendererRequestedPriority()I
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_1d

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-ge v1, v2, :cond_c

    return v0

    :cond_c
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v2, "getRendererRequestedPriority"

    invoke-static {v1, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_17

    goto :goto_1d

    :cond_17
    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1d} :catch_1e

    :cond_1d
    :goto_1d
    return v0

    :catch_1e
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public getScale()F
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getScale"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_16

    :cond_10
    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getScale()F

    move-result v0

    return v0
.end method

.method public getScrollBarDefaultDelayBeforeFade()I
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarDefaultDelayBeforeFade()I

    move-result v0

    return v0
.end method

.method public getScrollBarFadeDuration()I
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarFadeDuration()I

    move-result v0

    return v0
.end method

.method public getScrollBarSize()I
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarSize()I

    move-result v0

    return v0
.end method

.method public getScrollBarStyle()I
    .registers 2

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    return v0

    :cond_8
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollBarStyle()I

    move-result v0

    return v0
.end method

.method public getSettings()Lcom/tencent/smtt/sdk/WebSettings;
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_17

    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getSettings()Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebSettings;)V

    :goto_14
    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->h:Lcom/tencent/smtt/sdk/WebSettings;

    return-object v0

    :cond_17
    new-instance v0, Lcom/tencent/smtt/sdk/WebSettings;

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v1}, Lcom/tencent/smtt/sdk/WebView$a;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/tencent/smtt/sdk/WebSettings;-><init>(Landroid/webkit/WebSettings;)V

    goto :goto_14
.end method

.method public getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;

    move-result-object v0

    return-object v0
.end method

.method public getSysNightModeAlpha()I
    .registers 2

    sget v0, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getTitle()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getUrl()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    return-object v0

    :cond_7
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getVisibleTitleHeight()I
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_17

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getVisibleTitleHeight"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_16

    :cond_10
    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_16
    return v0

    :cond_17
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getVisibleTitleHeight()I

    move-result v0

    return v0
.end method

.method public getWebChromeClient()Lcom/tencent/smtt/sdk/WebChromeClient;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-object v0
.end method

.method public getWebChromeClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getWebChromeClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;

    move-result-object v0

    return-object v0
.end method

.method public getWebScrollX()I
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollX()I

    move-result v0

    return v0
.end method

.method public getWebScrollY()I
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    return v0

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getScrollY()I

    move-result v0

    return v0
.end method

.method public getWebViewClient()Lcom/tencent/smtt/sdk/WebViewClient;
    .registers 2

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    return-object v0
.end method

.method public getWebViewClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getWebViewClientExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;

    move-result-object v0

    return-object v0
.end method

.method public getX5HitTestResult()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getHitTestResult()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$HitTestResult;

    move-result-object v0

    return-object v0
.end method

.method public getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    return-object v0
.end method

.method public getZoomControls()Landroid/view/View;
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "getZoomControls"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getZoomControls()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public goBack()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goBack()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->goBack()V

    :goto_f
    return-void
.end method

.method public goBackOrForward(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->goBackOrForward(I)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->goBackOrForward(I)V

    :goto_f
    return-void
.end method

.method public goForward()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->goForward()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->goForward()V

    :goto_f
    return-void
.end method

.method public invokeZoomPicker()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->invokeZoomPicker()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->invokeZoomPicker()V

    :goto_f
    return-void
.end method

.method public isDayMode()Z
    .registers 2

    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    return v0
.end method

.method public isPrivateBrowsingEnabled()Z
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    const/4 v2, 0x0

    if-lt v0, v1, :cond_1c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "isPrivateBrowsingEnabled"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_16

    goto :goto_1c

    :cond_16
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :cond_1c
    :goto_1c
    return v2

    :cond_1d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->isPrivateBrowsingEnable()Z

    move-result v0

    return v0
.end method

.method public loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 14

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_f

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-virtual/range {v1 .. v6}, Landroid/webkit/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_19

    :cond_f
    iget-object v2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-interface/range {v2 .. v7}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_19
    return-void
.end method

.method public loadUrl(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_18

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->showDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_18

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    goto :goto_18

    :cond_13
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadUrl(Ljava/lang/String;)V

    :cond_18
    :goto_18
    return-void
.end method

.method public loadUrl(Ljava/lang/String;Ljava/util/Map;)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0x8
    .end annotation

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

    if-eqz p1, :cond_1e

    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->showDebugView(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_1e

    :cond_9
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_19

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-lt v0, v1, :cond_1e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_1e

    :cond_19
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1e
    :goto_1e
    return-void
.end method

.method protected onDetachedFromWindow()V
    .registers 3

    :try_start_0
    const-string v0, "com.xunmeng.pinduoduo"

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    new-instance v0, Lcom/tencent/smtt/sdk/WebView$7;

    const-string v1, "onDetachedFromWindow"

    invoke-direct {v0, p0, v1}, Lcom/tencent/smtt/sdk/WebView$7;-><init>(Lcom/tencent/smtt/sdk/WebView;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    goto :goto_22

    :cond_1b
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->a()V
    :try_end_1e
    .catchall {:try_start_0 .. :try_end_1e} :catchall_1f

    goto :goto_22

    :catchall_1f
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->a()V

    :goto_22
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    if-eqz v0, :cond_11

    invoke-interface {v0, p1}, Landroid/view/View$OnLongClickListener;->onLongClick(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_f

    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/view/View;)Z

    move-result p1

    return p1

    :cond_f
    const/4 p1, 0x1

    return p1

    :cond_11
    invoke-direct {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->a(Landroid/view/View;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "onPause"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->onPause()V

    :goto_11
    return-void
.end method

.method public onResume()V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "onResume"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    goto :goto_11

    :cond_c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->onResume()V

    :goto_11
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .registers 5
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/FrameLayout;->onSizeChanged(IIII)V

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_1e

    iget-object p3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, p3}, Lcom/tencent/smtt/sdk/WebView;->b(Landroid/content/Context;)Z

    move-result p3

    if-eqz p3, :cond_1e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isHardwareAccelerated()Z

    move-result p3

    if-eqz p3, :cond_1e

    if-lez p1, :cond_1e

    if-lez p2, :cond_1e

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayerType()I

    :cond_1e
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .registers 15

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    if-nez v0, :cond_8

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_8
    sget-object v1, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    if-nez v1, :cond_14

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sput-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    :cond_14
    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    if-eqz v0, :cond_2e

    const-string v1, "com.tencent.mm"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    sget-object v0, Lcom/tencent/smtt/sdk/WebView;->p:Ljava/lang/String;

    const-string v1, "com.tencent.mobileqq"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2e

    :cond_2a
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void

    :cond_2e
    if-eqz p2, :cond_be

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    if-nez v0, :cond_be

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_be

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const-string v1, ""

    if-eqz v0, :cond_63

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_63

    const-string v1, "guid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "qua2"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "lc"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    move-object v4, v1

    move-object v5, v2

    goto :goto_66

    :cond_63
    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_66
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-string v1, "com.qzone"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_88

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_81

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    :cond_81
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->f(Landroid/content/Context;)V

    :cond_88
    const/4 v0, 0x0

    :try_start_89
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v1

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v1
    :try_end_93
    .catchall {:try_start_89 .. :try_end_93} :catchall_95

    move v11, v1

    goto :goto_ad

    :catchall_95
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onVisibilityChanged"

    invoke-static {v2, v1}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    :goto_ad
    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iget v7, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-boolean v8, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebView;->h()J

    move-result-wide v9

    invoke-static/range {v3 .. v11}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iput-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    :cond_be
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onVisibilityChanged(Landroid/view/View;I)V

    return-void
.end method

.method public overlayHorizontalScrollbar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->overlayHorizontalScrollbar()Z

    move-result v0

    return v0
.end method

.method public overlayVerticalScrollbar()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->overlayVerticalScrollbar()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->overlayVerticalScrollbar()Z

    move-result v0

    return v0
.end method

.method public pageDown(Z)Z
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageDown(Z)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->pageDown(ZI)Z

    move-result p1

    return p1
.end method

.method public pageUp(Z)Z
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->pageUp(Z)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    const/4 v1, -0x1

    invoke-interface {v0, p1, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->pageUp(ZI)Z

    move-result p1

    return p1
.end method

.method public pauseTimers()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->pauseTimers()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->pauseTimers()V

    :goto_f
    return-void
.end method

.method public postUrl(Ljava/lang/String;[B)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x5
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2}, Landroid/webkit/WebView;->postUrl(Ljava/lang/String;[B)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->postUrl(Ljava/lang/String;[B)V

    :goto_f
    return-void
.end method

.method public refreshPlugins(Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "refreshPlugins"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->refreshPlugins(Z)V

    :goto_21
    return-void
.end method

.method public reload()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->reload()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->reload()V

    :goto_f
    return-void
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "removeJavascriptInterface"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->removeJavascriptInterface(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public removeView(Landroid/view/View;)V
    .registers 8

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->removeView(Landroid/view/View;)V

    goto :goto_28

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    const-string v1, "removeView"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/view/View;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {v0, v1, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v5

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_28
    .catchall {:try_start_10 .. :try_end_28} :catchall_28

    :catchall_28
    :goto_28
    return-void
.end method

.method public reportInitPerformance(JIJJ)Lorg/json/JSONObject;
    .registers 8

    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    :try_start_5
    const-string p2, "IS_X5"

    iget-boolean p3, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_5 .. :try_end_c} :catch_d

    goto :goto_11

    :catch_d
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->printStackTrace()V

    :goto_11
    return-object p1
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .registers 6

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_1b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_19

    move-object v1, v0

    check-cast v1, Landroid/view/ViewGroup;

    if-ne p1, p0, :cond_14

    move-object p1, v0

    :cond_14
    invoke-virtual {v1, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1

    :cond_19
    const/4 p1, 0x0

    return p1

    :cond_1b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    if-ne p1, p0, :cond_20

    move-object p1, v0

    :cond_20
    invoke-virtual {v0, p1, p2, p3}, Landroid/webkit/WebView;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result p1

    return p1
.end method

.method public requestFocusNodeHref(Landroid/os/Message;)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->requestFocusNodeHref(Landroid/os/Message;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->requestFocusNodeHref(Landroid/os/Message;)V

    :goto_f
    return-void
.end method

.method public requestImageRef(Landroid/os/Message;)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->requestImageRef(Landroid/os/Message;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->requestImageRef(Landroid/os/Message;)V

    :goto_f
    return-void
.end method

.method public restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "restorePicture"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_28

    :cond_22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_28
    return v4

    :cond_29
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->restorePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public restoreState(Landroid/os/Bundle;)Lcom/tencent/smtt/sdk/WebBackForwardList;
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->restoreState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Landroid/webkit/WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->restoreState(Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public resumeTimers()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->resumeTimers()V

    :goto_f
    return-void
.end method

.method public savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-class v0, Ljava/lang/String;

    iget-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_22

    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v5, 0x1

    aput-object v0, v3, v5

    const/4 v6, 0x2

    aput-object v0, v3, v6

    new-array v0, v2, [Ljava/lang/Object;

    aput-object p1, v0, v4

    aput-object p2, v0, v5

    aput-object p3, v0, v6

    const-string p1, "savePassword"

    invoke-static {v1, p1, v3, v0}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    :cond_22
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->savePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_27
    return-void
.end method

.method public savePicture(Landroid/os/Bundle;Ljava/io/File;)Z
    .registers 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_29

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x2

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Landroid/os/Bundle;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-class v3, Ljava/io/File;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    aput-object p2, v1, v5

    const-string p1, "savePicture"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_22

    goto :goto_28

    :cond_22
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_28
    return v4

    :cond_29
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->savePicture(Landroid/os/Bundle;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method public saveState(Landroid/os/Bundle;)Lcom/tencent/smtt/sdk/WebBackForwardList;
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Landroid/webkit/WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->saveState(Landroid/os/Bundle;)Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;

    move-result-object p1

    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebBackForwardList;->a(Lcom/tencent/smtt/export/external/interfaces/IX5WebBackForwardList;)Lcom/tencent/smtt/sdk/WebBackForwardList;

    move-result-object p1

    return-object p1
.end method

.method public saveWebArchive(Ljava/lang/String;)V
    .registers 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1e

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_23

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    const-string p1, "saveWebArchive"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_23

    :cond_1e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->saveWebArchive(Ljava/lang/String;)V

    :cond_23
    :goto_23
    return-void
.end method

.method public saveWebArchive(Ljava/lang/String;ZLcom/tencent/smtt/sdk/ValueCallback;)V
    .registers 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z",
            "Lcom/tencent/smtt/sdk/ValueCallback<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_30

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_35

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const-class v3, Landroid/webkit/ValueCallback;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v5

    aput-object p3, v1, v6

    const-string p1, "saveWebArchive"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_35

    :cond_30
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->saveWebArchive(Ljava/lang/String;ZLandroid/webkit/ValueCallback;)V

    :cond_35
    :goto_35
    return-void
.end method

.method public setARModeEnable(Z)V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;->setARModeEnable(Z)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    goto :goto_10

    :catchall_c
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_10
    :goto_10
    return-void
.end method

.method public setBackgroundColor(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setBackgroundColor(I)V

    :goto_f
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    return-void
.end method

.method public setCertificate(Landroid/net/http/SslCertificate;)V
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setCertificate(Landroid/net/http/SslCertificate;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setCertificate(Landroid/net/http/SslCertificate;)V

    :goto_f
    return-void
.end method

.method public setDayOrNight(Z)V
    .registers 3

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_b

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getSettingsExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebSettingsExtension;->setDayOrNight(Z)V

    :cond_b
    invoke-static {p1}, Lcom/tencent/smtt/sdk/WebView;->setSysDayOrNight(Z)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->postInvalidate()V
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public setDownloadListener(Lcom/tencent/smtt/sdk/DownloadListener;)V
    .registers 5

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$4;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$4;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setDownloadListener(Landroid/webkit/DownloadListener;)V

    goto :goto_19

    :cond_f
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    new-instance v2, Lcom/tencent/smtt/sdk/b;

    invoke-direct {v2, p0, p1, v0}, Lcom/tencent/smtt/sdk/b;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/DownloadListener;Z)V

    invoke-interface {v1, v2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setDownloadListener(Lcom/tencent/smtt/export/external/interfaces/DownloadListener;)V

    :goto_19
    return-void
.end method

.method public setFindListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V
    .registers 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_15

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_1a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$3;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$3;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setFindListener(Landroid/webkit/WebView$FindListener;)V

    goto :goto_1a

    :cond_15
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setFindListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$FindListener;)V

    :cond_1a
    :goto_1a
    return-void
.end method

.method public setHorizontalScrollbarOverlay(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setHorizontalScrollbarOverlay(Z)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setHorizontalScrollbarOverlay(Z)V

    :goto_f
    return-void
.end method

.method public setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/webkit/WebView;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setHttpAuthUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_f
    return-void
.end method

.method public setInitialScale(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setInitialScale(I)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setInitialScale(I)V

    :goto_f
    return-void
.end method

.method public setMapTrackballToArrowKeys(Z)V
    .registers 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_1c

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v1, v4

    const-string p1, "setMapTrackballToArrowKeys"

    invoke-static {v0, p1, v2, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_21

    :cond_1c
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setMapTrackballToArrowKeys(Z)V

    :goto_21
    return-void
.end method

.method public setNetworkAvailable(Z)V
    .registers 4

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_f

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_14

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setNetworkAvailable(Z)V

    goto :goto_14

    :cond_f
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setNetworkAvailable(Z)V

    :cond_14
    :goto_14
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .registers 6

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    goto :goto_42

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    iget-object v1, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;

    if-nez v1, :cond_39

    const-string v1, "getListenerInfo"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-static {v0, v1, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "mOnLongClickListener"

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->x:Ljava/lang/Object;
    :try_end_39
    .catchall {:try_start_10 .. :try_end_39} :catchall_42

    :cond_39
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->y:Landroid/view/View$OnLongClickListener;

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :catchall_42
    :goto_42
    return-void
.end method

.method public setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    .registers 3

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public setPictureListener(Lcom/tencent/smtt/sdk/WebView$PictureListener;)V
    .registers 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-nez v0, :cond_18

    if-nez p1, :cond_d

    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p1, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_2a

    :cond_d
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$5;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$5;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebView$PictureListener;)V

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setPictureListener(Landroid/webkit/WebView$PictureListener;)V

    goto :goto_2a

    :cond_18
    if-nez p1, :cond_20

    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p1, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setPictureListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$PictureListener;)V

    goto :goto_2a

    :cond_20
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    new-instance v1, Lcom/tencent/smtt/sdk/WebView$6;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/WebView$6;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebView$PictureListener;)V

    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setPictureListener(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase$PictureListener;)V

    :goto_2a
    return-void
.end method

.method public setRendererPriorityPolicy(IZ)V
    .registers 10

    :try_start_0
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_2d

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_b

    return-void

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    const-string v1, "setRendererPriorityPolicy"

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v6, 0x1

    aput-object v4, v3, v6

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2d} :catch_2e

    :cond_2d
    return-void

    :catch_2e
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    return-void
.end method

.method public setScrollBarStyle(I)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setScrollBarStyle(I)V

    goto :goto_13

    :cond_e
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setScrollBarStyle(I)V

    :goto_13
    return-void
.end method

.method public setSysNightModeAlpha(I)V
    .registers 2

    sput p1, Lcom/tencent/smtt/sdk/WebView;->NIGHT_MODE_ALPHA:I

    return-void
.end method

.method public setVerticalScrollbarOverlay(Z)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setVerticalScrollbarOverlay(Z)V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setVerticalScrollbarOverlay(Z)V

    :goto_f
    return-void
.end method

.method public setVideoFullScreen(Landroid/content/Context;Z)Z
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    const-string v0, "com.tencent.android.qqdownloader"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_30

    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-eqz p1, :cond_30

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "DefaultVideoScreen"

    if-eqz p2, :cond_21

    const/4 p2, 0x2

    invoke-virtual {p1, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_24

    :cond_21
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :goto_24
    iget-object p2, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p2}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p2

    const-string v1, "setVideoParams"

    invoke-interface {p2, v1, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->invokeMiscMethod(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    return v0

    :cond_30
    const/4 p1, 0x0

    return p1
.end method

.method public setVisibility(I)V
    .registers 3

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    :cond_a
    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public setWebChromeClient(Lcom/tencent/smtt/sdk/WebChromeClient;)V
    .registers 6

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-nez p1, :cond_a

    goto :goto_1c

    :cond_a
    new-instance v1, Lcom/tencent/smtt/sdk/h;

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/w;->a(Z)Lcom/tencent/smtt/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/x;->i()Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lcom/tencent/smtt/sdk/h;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebChromeClient;)V

    :goto_1c
    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setWebChromeClient(Lcom/tencent/smtt/export/external/interfaces/IX5WebChromeClient;)V

    goto :goto_2d

    :cond_20
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    if-nez p1, :cond_25

    goto :goto_2a

    :cond_25
    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebChromeClient;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/SystemWebChromeClient;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebChromeClient;)V

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    :goto_2d
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->o:Lcom/tencent/smtt/sdk/WebChromeClient;

    return-void
.end method

.method public setWebChromeClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->setWebChromeClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebChromeClientExtension;)V

    return-void
.end method

.method public setWebViewCallbackClient(Lcom/tencent/smtt/sdk/WebViewCallbackClient;)V
    .registers 4

    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->mWebViewCallbackClient:Lcom/tencent/smtt/sdk/WebViewCallbackClient;

    iget-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz p1, :cond_20

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object p1

    if-eqz p1, :cond_20

    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const/4 v0, 0x1

    const-string v1, "flag"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    const-string v1, "setWebViewCallbackClientFlag"

    invoke-interface {v0, v1, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->invokeMiscMethod(Ljava/lang/String;Landroid/os/Bundle;)Ljava/lang/Object;

    :cond_20
    return-void
.end method

.method public setWebViewClient(Lcom/tencent/smtt/sdk/WebViewClient;)V
    .registers 6

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    if-nez p1, :cond_a

    goto :goto_1c

    :cond_a
    new-instance v1, Lcom/tencent/smtt/sdk/i;

    invoke-static {}, Lcom/tencent/smtt/sdk/w;->a()Lcom/tencent/smtt/sdk/w;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/tencent/smtt/sdk/w;->a(Z)Lcom/tencent/smtt/sdk/x;

    move-result-object v2

    invoke-virtual {v2}, Lcom/tencent/smtt/sdk/x;->j()Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;

    move-result-object v2

    invoke-direct {v1, v2, p0, p1}, Lcom/tencent/smtt/sdk/i;-><init>(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient;)V

    :goto_1c
    invoke-interface {v0, v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->setWebViewClient(Lcom/tencent/smtt/export/external/interfaces/IX5WebViewClient;)V

    goto :goto_2d

    :cond_20
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    if-nez p1, :cond_25

    goto :goto_2a

    :cond_25
    new-instance v1, Lcom/tencent/smtt/sdk/SystemWebViewClient;

    invoke-direct {v1, p0, p1}, Lcom/tencent/smtt/sdk/SystemWebViewClient;-><init>(Lcom/tencent/smtt/sdk/WebView;Lcom/tencent/smtt/sdk/WebViewClient;)V

    :goto_2a
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    :goto_2d
    iput-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->n:Lcom/tencent/smtt/sdk/WebViewClient;

    return-void
.end method

.method public setWebViewClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_5

    return-void

    :cond_5
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->setWebViewClientExtension(Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewClientExtension;)V

    return-void
.end method

.method public showDebugView(Ljava/lang/String;)Z
    .registers 10
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v0, "https://debugtbs.qq.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/tencent/smtt/sdk/WebView;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {v0}, Lcom/tencent/smtt/utils/d;->a(Landroid/content/Context;)Lcom/tencent/smtt/utils/d;

    move-result-object v0

    iget-object v2, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-static {}, Lcom/tencent/smtt/sdk/n;->a()Lcom/tencent/smtt/sdk/n;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-virtual {v0, p1, p0, v2, v3}, Lcom/tencent/smtt/utils/d;->a(Ljava/lang/String;Lcom/tencent/smtt/sdk/WebView;Landroid/content/Context;Landroid/os/Looper;)V

    return v1

    :cond_29
    const-string v0, "https://debugx5.qq.com"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_72

    iget-boolean p1, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez p1, :cond_72

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<!DOCTYPE html><html><body>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<head>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<title>无法打开debugx5</title>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<meta name=\"viewport\" content=\"width=device-width, user-scalable=no\" />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</head>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "<br/><br /><h2>debugx5页面仅在使用了X5内核时有效，由于当前没有使用X5内核，无法打开debugx5！</h2><br />"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "尝试<a href=\"https://debugtbs.qq.com?10000\">进入DebugTbs安装或打开X5内核</a>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "</body></html>"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    const-string v5, "text/html"

    const-string v6, "utf-8"

    move-object v2, p0

    invoke-virtual/range {v2 .. v7}, Lcom/tencent/smtt/sdk/WebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_72
    return v0
.end method

.method public showFindDialog(Ljava/lang/String;Z)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public stopLoading()V
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->stopLoading()V

    goto :goto_f

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->stopLoading()V

    :goto_f
    return-void
.end method

.method public super_computeScroll()V
    .registers 3

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Lcom/tencent/smtt/sdk/WebView$a;->a()V

    goto :goto_1a

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    const-string v1, "super_computeScroll"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_16

    goto :goto_1a

    :catchall_16
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1a
    return-void
.end method

.method public super_dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView$a;->b(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_12
    const-string v2, "super_dispatchTouchEvent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_2c

    :cond_26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :goto_2c
    return v1
.end method

.method public super_onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView$a;->c(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_12
    const-string v2, "super_onInterceptTouchEvent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_2c

    :cond_26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :goto_2c
    return v1
.end method

.method public super_onOverScrolled(IIZZ)V
    .registers 14

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView$a;->a(IIZZ)V

    goto :goto_47

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    const-string v1, "super_onOverScrolled"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {p4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_42
    .catchall {:try_start_10 .. :try_end_42} :catchall_43

    goto :goto_47

    :catchall_43
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_47
    return-void
.end method

.method public super_onScrollChanged(IIII)V
    .registers 14

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/tencent/smtt/sdk/WebView$a;->a(IIII)V

    goto :goto_45

    :cond_a
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    :try_start_10
    const-string v1, "super_onScrollChanged"

    const/4 v2, 0x4

    new-array v3, v2, [Ljava/lang/Class;

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const/4 v8, 0x3

    aput-object v4, v3, v8

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v5

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v7

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v8

    invoke-static {v0, v1, v3, v2}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_40
    .catchall {:try_start_10 .. :try_end_40} :catchall_41

    goto :goto_45

    :catchall_41
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_45
    return-void
.end method

.method public super_onTouchEvent(Landroid/view/MotionEvent;)Z
    .registers 8

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0, p1}, Lcom/tencent/smtt/sdk/WebView$a;->a(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_12
    const-string v2, "super_onTouchEvent"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/view/MotionEvent;

    aput-object v5, v4, v1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v1

    invoke-static {v0, v2, v4, v3}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-nez p1, :cond_26

    goto :goto_2c

    :cond_26
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_2c
    .catchall {:try_start_12 .. :try_end_2c} :catchall_2c

    :catchall_2c
    :goto_2c
    return v1
.end method

.method public super_overScrollBy(IIIIIIIIZ)Z
    .registers 25

    move-object v0, p0

    iget-boolean v1, v0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v1, :cond_1e

    iget-object v2, v0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    move/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    invoke-virtual/range {v2 .. v11}, Lcom/tencent/smtt/sdk/WebView$a;->a(IIIIIIIIZ)Z

    move-result v1

    return v1

    :cond_1e
    iget-object v1, v0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getView()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    :try_start_25
    const-string v3, "super_overScrollBy"

    const/16 v4, 0x9

    new-array v5, v4, [Ljava/lang/Class;

    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v6, v5, v2

    const/4 v7, 0x1

    aput-object v6, v5, v7

    const/4 v8, 0x2

    aput-object v6, v5, v8

    const/4 v9, 0x3

    aput-object v6, v5, v9

    const/4 v10, 0x4

    aput-object v6, v5, v10

    const/4 v11, 0x5

    aput-object v6, v5, v11

    const/4 v12, 0x6

    aput-object v6, v5, v12

    const/4 v13, 0x7

    aput-object v6, v5, v13

    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/16 v14, 0x8

    aput-object v6, v5, v14

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v2

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v7

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v8

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v9

    invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v10

    invoke-static/range {p6 .. p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v11

    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v12

    invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v13

    invoke-static/range {p9 .. p9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v4, v14

    invoke-static {v1, v3, v5, v4}, Lcom/tencent/smtt/utils/i;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_89

    goto :goto_8f

    :cond_89
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2
    :try_end_8f
    .catchall {:try_start_25 .. :try_end_8f} :catchall_8f

    :catchall_8f
    :goto_8f
    return v2
.end method

.method public switchNightMode(Z)V
    .registers 3

    sget-boolean v0, Lcom/tencent/smtt/sdk/WebView;->w:Z

    if-ne p1, v0, :cond_5

    return-void

    :cond_5
    sput-boolean p1, Lcom/tencent/smtt/sdk/WebView;->w:Z

    const-string v0, "QB_SDK"

    if-eqz p1, :cond_13

    const-string p1, "deleteNightMode"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "javascript:document.getElementsByTagName(\'HEAD\').item(0).removeChild(document.getElementById(\'QQBrowserSDKNightMode\'));"

    goto :goto_1a

    :cond_13
    const-string p1, "nightMode"

    invoke-static {v0, p1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    :goto_1a
    invoke-virtual {p0, p1}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public switchToNightMode()V
    .registers 3

    const-string v0, "QB_SDK"

    const-string v1, "switchToNightMode 01"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v1, Lcom/tencent/smtt/sdk/WebView;->w:Z

    if-nez v1, :cond_15

    const-string v1, "switchToNightMode"

    invoke-static {v0, v1}, Lcom/tencent/smtt/utils/TbsLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "javascript:var style = document.createElement(\'style\');style.type=\'text/css\';style.id=\'QQBrowserSDKNightMode\';style.innerHTML=\'html,body{background:none !important;background-color: #1d1e2a !important;}html *{background-color: #1d1e2a !important; color:#888888 !important;border-color:#3e4f61 !important;text-shadow:none !important;box-shadow:none !important;}a,a *{border-color:#4c5b99 !important; color:#2d69b3 !important;text-decoration:none !important;}a:visited,a:visited *{color:#a600a6 !important;}a:active,a:active *{color:#5588AA !important;}input,select,textarea,option,button{background-image:none !important;color:#AAAAAA !important;border-color:#4c5b99 !important;}form,div,button,span{background-color:#1d1e2a !important; border-color:#4c5b99 !important;}img{opacity:0.5}\';document.getElementsByTagName(\'HEAD\').item(0).appendChild(style);"

    invoke-virtual {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->loadUrl(Ljava/lang/String;)V

    :cond_15
    return-void
.end method

.method public tbsWebviewDestroy(Z)V
    .registers 16

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_8e

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    if-eqz v0, :cond_8e

    iput-boolean v2, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    const-string v0, ""

    const-string v3, ""

    const-string v4, ""

    iget-boolean v5, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-eqz v5, :cond_34

    iget-object v5, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v5}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v5

    invoke-interface {v5}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->getSdkQBStatisticsInfo()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_34

    const-string v0, "guid"

    invoke-virtual {v5, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "qua2"

    invoke-virtual {v5, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "lc"

    invoke-virtual {v5, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    :cond_34
    move-object v6, v0

    move-object v7, v3

    move-object v8, v4

    const-string v0, "com.qzone"

    iget-object v3, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_59

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->e(Landroid/content/Context;)I

    move-result v0

    const/4 v3, -0x1

    if-ne v0, v3, :cond_52

    iget v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    :cond_52
    iput v0, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/tencent/smtt/sdk/WebView;->f(Landroid/content/Context;)V

    :cond_59
    :try_start_59
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->getX5WebViewExtension()Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;

    move-result-object v0

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/extension/interfaces/IX5WebViewExtension;->isX5CoreSandboxMode()Z

    move-result v0
    :try_end_63
    .catchall {:try_start_59 .. :try_end_63} :catchall_65

    move v13, v0

    goto :goto_7d

    :catchall_65
    move-exception v0

    const-string v3, "tbsWebviewDestroy"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exception: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/tencent/smtt/utils/TbsLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v13, 0x0

    :goto_7d
    iget-object v5, p0, Lcom/tencent/smtt/sdk/WebView;->i:Landroid/content/Context;

    iget v9, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iget-boolean v10, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    invoke-direct {p0}, Lcom/tencent/smtt/sdk/WebView;->h()J

    move-result-wide v11

    invoke-static/range {v5 .. v13}, Lcom/tencent/smtt/sdk/stat/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZJZ)V

    iput v1, p0, Lcom/tencent/smtt/sdk/WebView;->a:I

    iput-boolean v1, p0, Lcom/tencent/smtt/sdk/WebView;->k:Z

    :cond_8e
    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_136

    const/4 v0, 0x0

    :try_start_93
    const-string v3, "android.webkit.WebViewClassic"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "fromWebView"

    new-array v5, v2, [Ljava/lang/Class;

    const-class v6, Landroid/webkit/WebView;

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    aput-object v6, v5, v1

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f5

    const-string v4, "mListBoxDialog"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_f5

    check-cast v1, Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    const-string v3, "android.app.Dialog"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    const-string v4, "CANCEL"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v4, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const-string v5, "mListenersHandler"

    invoke-virtual {v3, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V
    :try_end_f3
    .catch Ljava/lang/Exception; {:try_start_93 .. :try_end_f3} :catch_f4

    goto :goto_f5

    :catch_f4
    nop

    :cond_f5
    :goto_f5
    if-eqz p1, :cond_fc

    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {p1}, Landroid/webkit/WebView;->destroy()V

    :cond_fc
    :try_start_fc
    const-string p1, "android.webkit.BrowserFrame"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v1, "sConfigCallback"

    invoke-virtual {p1, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentCallbacks;

    if-eqz v1, :cond_13d

    invoke-virtual {p1, v0, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    const-string p1, "android.view.ViewRoot"

    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v3, "sConfigCallbacks"

    invoke-virtual {p1, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    invoke-virtual {p1, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_13d

    check-cast p1, Ljava/util/List;

    monitor-enter p1
    :try_end_12e
    .catch Ljava/lang/Exception; {:try_start_fc .. :try_end_12e} :catch_13d

    :try_start_12e
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_13d

    :catchall_133
    move-exception v0

    monitor-exit p1
    :try_end_135
    .catchall {:try_start_12e .. :try_end_135} :catchall_133

    :try_start_135
    throw v0
    :try_end_136
    .catch Ljava/lang/Exception; {:try_start_135 .. :try_end_136} :catch_13d

    :cond_136
    if-eqz p1, :cond_13d

    iget-object p1, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {p1}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->destroy()V

    :catch_13d
    :cond_13d
    :goto_13d
    const-string p1, "WebView"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "X5 GUID = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/tencent/smtt/sdk/QbSdk;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/tencent/smtt/utils/TbsLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public zoomIn()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomIn()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->zoomIn()Z

    move-result v0

    return v0
.end method

.method public zoomOut()Z
    .registers 2

    iget-boolean v0, p0, Lcom/tencent/smtt/sdk/WebView;->e:Z

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->g:Lcom/tencent/smtt/sdk/WebView$a;

    invoke-virtual {v0}, Landroid/webkit/WebView;->zoomOut()Z

    move-result v0

    return v0

    :cond_b
    iget-object v0, p0, Lcom/tencent/smtt/sdk/WebView;->f:Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;

    invoke-interface {v0}, Lcom/tencent/smtt/export/external/interfaces/IX5WebViewBase;->zoomOut()Z

    move-result v0

    return v0
.end method
