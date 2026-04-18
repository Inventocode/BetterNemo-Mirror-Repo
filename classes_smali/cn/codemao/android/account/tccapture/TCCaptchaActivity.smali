.class public Lcn/codemao/android/account/tccapture/TCCaptchaActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "TCCaptchaActivity.java"


# instance fields
.field private hasResult:Ljava/lang/Boolean;

.field private ivClose:Landroid/widget/ImageView;

.field private mCaptchaHeight:I

.field private mCaptchaWidth:I

.field private mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mLlCaptcha:Landroid/webkit/WebView;

.field private mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TencentCaptchaVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$9PxncXLl2dYziZK5WQtttRh05U8(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 71
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->hasResult:Ljava/lang/Boolean;

    .line 95
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getSucListener()Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 96
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getFailListener()Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/webkit/WebView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mLlCaptcha:Landroid/webkit/WebView;

    return-object p0
.end method

.method static synthetic access$102(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .registers 2

    .line 39
    iput-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->hasResult:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$200(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object p0
.end method

.method static synthetic access$400(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)I
    .registers 1

    .line 39
    iget p0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mCaptchaWidth:I

    return p0
.end method

.method static synthetic access$500(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)I
    .registers 1

    .line 39
    iget p0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mCaptchaHeight:I

    return p0
.end method

.method static synthetic access$600(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)Landroid/widget/ImageView;
    .registers 1

    .line 39
    iget-object p0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->ivClose:Landroid/widget/ImageView;

    return-object p0
.end method

.method private getScreenHeight()I
    .registers 3

    .line 238
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 239
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 240
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getScreenWidth()I
    .registers 3

    .line 229
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 230
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 231
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private initCaptchaView()V
    .registers 5

    .line 104
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mLlCaptcha:Landroid/webkit/WebView;

    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    const/4 v1, 0x1

    .line 105
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 106
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    const/4 v2, 0x2

    .line 108
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 109
    iget-object v2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mLlCaptcha:Landroid/webkit/WebView;

    new-instance v3, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$1;

    invoke-direct {v3, p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$1;-><init>(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)V

    invoke-virtual {v2, v3}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 117
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 118
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mLlCaptcha:Landroid/webkit/WebView;

    new-instance v1, Lcn/codemao/android/account/tccapture/TcJsBridge;

    new-instance v2, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;

    invoke-direct {v2, p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$2;-><init>(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)V

    invoke-direct {v1, v2}, Lcn/codemao/android/account/tccapture/TcJsBridge;-><init>(Lcn/codemao/android/account/tccapture/TcJsBridgeCallBack;)V

    const-string v2, "jsBridge"

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 181
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mLlCaptcha:Landroid/webkit/WebView;

    const-string v1, "file:///android_asset/tenect.html"

    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method private initWindow()V
    .registers 5

    const/4 v0, 0x1

    .line 196
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 197
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 198
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 200
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2d

    .line 204
    invoke-direct {p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3f666666  # 0.9f

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mCaptchaHeight:I

    .line 205
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 207
    iput v2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mCaptchaWidth:I

    .line 208
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_39

    .line 213
    :cond_2d
    invoke-direct {p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->getScreenWidth()I

    move-result v2

    iput v2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mCaptchaWidth:I

    .line 214
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 216
    iput v2, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mCaptchaHeight:I

    .line 217
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    :goto_39
    const/16 v2, 0x11

    .line 220
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 221
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 3

    if-nez p0, :cond_14

    .line 49
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object p0

    invoke-virtual {p0}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getFailListener()Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object p0

    if-eqz p0, :cond_13

    const-string v0, ""

    const-string v1, "context为空!"

    .line 51
    invoke-interface {p0, v0, v1}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_13
    return-void

    .line 57
    :cond_14
    invoke-static {}, Lcn/codemao/android/account/util/ConfigManager;->getInstance()Lcn/codemao/android/account/util/ConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/util/ConfigManager;->isPadDevice()Z

    move-result v0

    if-eqz v0, :cond_26

    .line 58
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/account/tccapture/PadTCCaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_2d

    .line 60
    :cond_26
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 63
    :goto_2d
    instance-of v1, p0, Landroid/app/Activity;

    if-nez v1, :cond_36

    const/high16 v1, 0x10000000

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 66
    :cond_36
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    const/4 v0, 0x1

    .line 77
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 78
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 80
    sget p1, Lcn/codemao/android/account/R$layout;->activity_captcha_tc:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 82
    invoke-direct {p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->initWindow()V

    .line 85
    sget p1, Lcn/codemao/android/account/R$id;->ll_captcha:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/webkit/WebView;

    iput-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mLlCaptcha:Landroid/webkit/WebView;

    const/4 v0, 0x0

    .line 86
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 87
    sget p1, Lcn/codemao/android/account/R$id;->iv_close:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->ivClose:Landroid/widget/ImageView;

    .line 88
    new-instance v0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/tccapture/TCCaptchaActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    invoke-direct {p0}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->initCaptchaView()V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 245
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->hasResult:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_13

    .line 246
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz v0, :cond_13

    const-string v1, "ND_1"

    const-string v2, ""

    .line 247
    invoke-interface {v0, v1, v2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    :cond_13
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->destroy()V

    .line 252
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
