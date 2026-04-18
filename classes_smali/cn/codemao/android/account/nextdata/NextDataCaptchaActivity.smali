.class public final Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "NextDataCaptchaActivity.java"


# instance fields
.field private mCaptchaHeight:I

.field private final mCaptchaListener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

.field private mCaptchaWidth:I

.field private mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

.field private mErrorCode:Ljava/lang/String;

.field private mErrorMsg:Ljava/lang/String;

.field private final mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mLlCaptcha:Landroid/widget/LinearLayout;

.field private mReCheckNum:I

.field private mRid:Ljava/lang/String;

.field private final mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$OUMADMNRc5bP_Ola9bF00JKFWkY(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->lambda$onCreate$0(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 35
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 92
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getSucListener()Lcn/codemao/android/account/listener/NetSuccessResultListener;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 93
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object v0

    invoke-virtual {v0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getFailListener()Lcn/codemao/android/account/listener/NetFailResultListener;

    move-result-object v0

    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 95
    new-instance v0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$1;-><init>(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)V

    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaListener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)I
    .registers 1

    .line 35
    iget p0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mReCheckNum:I

    return p0
.end method

.method static synthetic access$010(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)I
    .registers 3

    .line 35
    iget v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mReCheckNum:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mReCheckNum:I

    return v0
.end method

.method static synthetic access$102(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mErrorCode:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$202(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mRid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$302(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    .line 35
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mErrorMsg:Ljava/lang/String;

    return-object p1
.end method

.method private getScreenHeight()I
    .registers 3

    .line 234
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 235
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 236
    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v0
.end method

.method private getScreenWidth()I
    .registers 3

    .line 224
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 225
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 226
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v0
.end method

.method private initCaptchaView(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;)V
    .registers 6

    .line 134
    new-instance v0, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;

    invoke-direct {v0, p0}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 135
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 137
    iget v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaWidth:I

    .line 138
    iget v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaHeight:I

    .line 139
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 140
    iput v1, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 141
    invoke-virtual {v0, v3}, Landroid/webkit/WebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 143
    new-instance v1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;

    invoke-direct {v1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;-><init>()V

    const-string v2, "sXoTexBWs1dfyzt8eTev"

    .line 145
    invoke-virtual {v1, v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setOrganization(Ljava/lang/String;)V

    const-string v2, "default"

    .line 147
    invoke-virtual {v1, v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setAppId(Ljava/lang/String;)V

    .line 148
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getCaptchaMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setMode(Ljava/lang/String;)V

    .line 150
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getReCheckNum()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setRetry(I)V

    .line 152
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_47

    .line 153
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getChannel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setChannel(Ljava/lang/String;)V

    .line 158
    :cond_47
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getTip()Ljava/lang/String;

    move-result-object p1

    .line 159
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_54

    .line 160
    invoke-virtual {v1, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setTipMessage(Ljava/lang/String;)V

    :cond_54
    const/4 p1, 0x1

    .line 172
    invoke-virtual {v1, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;->setHttps(Z)V

    .line 173
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaListener:Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;

    invoke-virtual {v0, v1, p1}, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->initWithOption(Lcom/ishumei/sdk/captcha/SmCaptchaWebView$SmOption;Lcom/ishumei/sdk/captcha/SmCaptchaWebView$ResultListener;)I

    move-result p1

    .line 174
    sget v1, Lcom/ishumei/sdk/captcha/SmCaptchaWebView;->SMCAPTCHA_SUCCESS:I

    if-eq v1, p1, :cond_6f

    .line 175
    iget-object v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz v1, :cond_6f

    .line 176
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    :cond_6f
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mLlCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 182
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mLlCaptcha:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method private initWindow()V
    .registers 5

    .line 190
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v0}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->isCloseByTouchOutside()Z

    move-result v0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 191
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 192
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 194
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3f

    .line 196
    invoke-direct {p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->getScreenHeight()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v3}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getCaptchaWidthRatio()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaHeight:I

    .line 197
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    int-to-float v2, v2

    .line 199
    iget-object v3, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v3}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getWHRatio()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaWidth:I

    .line 200
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    goto :goto_5f

    .line 205
    :cond_3f
    invoke-direct {p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->getScreenWidth()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v3}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getCaptchaWidthRatio()F

    move-result v3

    mul-float v2, v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaWidth:I

    .line 206
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    int-to-float v2, v2

    .line 208
    iget-object v3, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v3}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getWHRatio()F

    move-result v3

    div-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mCaptchaHeight:I

    const/4 v2, -0x2

    .line 210
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 215
    :goto_5f
    iget-object v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v2}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getShowGravity()I

    move-result v2

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 216
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method private synthetic lambda$onCreate$0(Landroid/view/View;)V
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 3

    .line 43
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 45
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 46
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 65
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 66
    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->supportRequestWindowFeature(I)Z

    .line 68
    sget p1, Lcn/codemao/android/account/R$layout;->activity_captcha_nextdata:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 70
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object p1

    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->getConfig()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    move-result-object p1

    if-nez p1, :cond_24

    .line 72
    iget-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    const-string v0, ""

    const-string/jumbo v1, "数美验证码配置信息错误!"

    invoke-interface {p1, v0, v1}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 76
    :cond_24
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    .line 77
    invoke-direct {p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->initWindow()V

    .line 79
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getReCheckNum()I

    move-result v0

    iput v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mReCheckNum:I

    .line 81
    sget v0, Lcn/codemao/android/account/R$id;->ll_captcha:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mLlCaptcha:Landroid/widget/LinearLayout;

    .line 82
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getBgColorId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V

    .line 83
    sget v0, Lcn/codemao/android/account/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 84
    invoke-virtual {p1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->isNeedShowClose()Z

    move-result v1

    if-eqz v1, :cond_50

    const/4 v1, 0x0

    goto :goto_52

    :cond_50
    const/16 v1, 0x8

    :goto_52
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 85
    new-instance v1, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-direct {p0, p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->initCaptchaView(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 4

    .line 241
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mRid:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 242
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    if-eqz v0, :cond_3c

    .line 243
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mErrorCode:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_18

    const-string v0, "ND_1"

    .line 244
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mErrorCode:Ljava/lang/String;

    .line 246
    :cond_18
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    iget-object v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mErrorCode:Ljava/lang/String;

    iget-object v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mErrorMsg:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3c

    .line 249
    :cond_22
    new-instance v0, Lcn/codemao/android/account/bean/NextDataRequest;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/NextDataRequest;-><init>()V

    .line 250
    iget-object v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mRid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/NextDataRequest;->setRid(Ljava/lang/String;)V

    .line 251
    iget-object v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    invoke-virtual {v1}, Lcn/codemao/android/account/nextdata/bean/NextDataConfig;->getAppId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcn/codemao/android/account/bean/NextDataRequest;->setAppid(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    iget-object v2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    invoke-static {v0, v1, v2}, Lcn/codemao/android/account/net/AccountRequest;->nextDataVerify(Lcn/codemao/android/account/bean/NextDataRequest;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    .line 254
    :cond_3c
    :goto_3c
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method
