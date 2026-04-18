.class public Lcn/codemao/android/account/util/GeetestRequest;
.super Ljava/lang/Object;
.source "GeetestRequest.java"


# static fields
.field private static final APPID:Ljava/lang/String; = "appid"

.field private static TAG:Ljava/lang/String; = null

.field private static final captchaURL:Ljava/lang/String; = "https://dev-open-service.codemao.cn/captcha/geetest/register"

.field private static volatile mInstance:Lcn/codemao/android/account/util/GeetestRequest; = null

.field private static final validateURL:Ljava/lang/String; = "https://dev-open-service.codemao.cn/captcha/geetest/verify"


# instance fields
.field private gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

.field private gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

.field private mGeetestListener:Lcn/codemao/android/account/listener/GeetestListener;


# direct methods
.method public static synthetic $r8$lambda$9zEo1OnDeZaBB02DnhWXJRmEiJg(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/GeetestRequest;->lambda$geestRegister$0(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ru9zGydJJYbFNT_OYtalpuqqSng(Lcn/codemao/android/account/util/GeetestRequest;Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 2

    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/GeetestRequest;->lambda$geestVerify$2(Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method public static synthetic $r8$lambda$bLZ25rO7DcWjh5LMkCZCF4CNkG4(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/util/GeetestRequest;->lambda$geestRegister$1(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w4elGQkhatZAMEPTLy0WYYX_iWY(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcn/codemao/android/account/util/GeetestRequest;->lambda$geestVerify$3(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcn/codemao/android/account/util/GeetestRequest;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "--->"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/codemao/android/account/util/GeetestRequest;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .registers 1

    .line 27
    sget-object v0, Lcn/codemao/android/account/util/GeetestRequest;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/GeetestRequest;->geestVerify(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcn/codemao/android/account/util/GeetestRequest;)Lcom/geetest/sdk/GT3GeetestUtils;
    .registers 1

    .line 27
    iget-object p0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    return-object p0
.end method

.method static synthetic access$300(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/GeetestRequest;->geestRegister(Ljava/lang/String;)V

    return-void
.end method

.method private customVerity(Ljava/lang/String;)V
    .registers 4

    .line 90
    new-instance v0, Lcom/geetest/sdk/GT3ConfigBean;

    invoke-direct {v0}, Lcom/geetest/sdk/GT3ConfigBean;-><init>()V

    iput-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x1

    .line 92
    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setPattern(I)V

    .line 94
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setCanceledOnTouchOutside(Z)V

    .line 96
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setLang(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setTimeout(I)V

    .line 100
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setWebviewTimeout(I)V

    .line 104
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    new-instance v1, Lcn/codemao/android/account/util/GeetestRequest$1;

    invoke-direct {v1, p0, p1}, Lcn/codemao/android/account/util/GeetestRequest$1;-><init>(Lcn/codemao/android/account/util/GeetestRequest;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/geetest/sdk/GT3ConfigBean;->setListener(Lcom/geetest/sdk/GT3Listener;)V

    .line 192
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/GT3GeetestUtils;->init(Lcom/geetest/sdk/GT3ConfigBean;)V

    .line 194
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->startCustomFlow()V

    return-void
.end method

.method private geestRegister(Ljava/lang/String;)V
    .registers 4

    .line 198
    new-instance v0, Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;

    invoke-direct {v0}, Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;-><init>()V

    .line 199
    invoke-virtual {v0, p1}, Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;->setAppid(Ljava/lang/String;)V

    .line 200
    new-instance p1, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda3;

    invoke-direct {p1, p0}, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda3;-><init>(Lcn/codemao/android/account/util/GeetestRequest;)V

    new-instance v1, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda0;-><init>(Lcn/codemao/android/account/util/GeetestRequest;)V

    invoke-static {v0, p1, v1}, Lcn/codemao/android/account/net/AccountRequest;->geetestRegister(Lcn/codemao/android/account/bean/GeetestRegisterRequestVO;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method private geestVerify(Ljava/lang/String;)V
    .registers 4

    const-string v0, "application/json; charset=utf-8"

    .line 218
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-static {v0, p1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 219
    new-instance v0, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda2;-><init>(Lcn/codemao/android/account/util/GeetestRequest;)V

    new-instance v1, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcn/codemao/android/account/util/GeetestRequest$$ExternalSyntheticLambda1;-><init>(Lcn/codemao/android/account/util/GeetestRequest;)V

    invoke-static {p1, v0, v1}, Lcn/codemao/android/account/net/AccountRequest;->geetestVerify(Lokhttp3/RequestBody;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)Lio/reactivex/disposables/Disposable;

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/util/GeetestRequest;
    .registers 2

    .line 49
    sget-object v0, Lcn/codemao/android/account/util/GeetestRequest;->mInstance:Lcn/codemao/android/account/util/GeetestRequest;

    if-nez v0, :cond_17

    .line 50
    const-class v0, Lcn/codemao/android/account/util/GeetestRequest;

    monitor-enter v0

    .line 51
    :try_start_7
    sget-object v1, Lcn/codemao/android/account/util/GeetestRequest;->mInstance:Lcn/codemao/android/account/util/GeetestRequest;

    if-nez v1, :cond_12

    new-instance v1, Lcn/codemao/android/account/util/GeetestRequest;

    invoke-direct {v1}, Lcn/codemao/android/account/util/GeetestRequest;-><init>()V

    sput-object v1, Lcn/codemao/android/account/util/GeetestRequest;->mInstance:Lcn/codemao/android/account/util/GeetestRequest;

    .line 52
    :cond_12
    monitor-exit v0

    goto :goto_17

    :catchall_14
    move-exception v1

    monitor-exit v0
    :try_end_16
    .catchall {:try_start_7 .. :try_end_16} :catchall_14

    throw v1

    .line 54
    :cond_17
    :goto_17
    sget-object v0, Lcn/codemao/android/account/util/GeetestRequest;->mInstance:Lcn/codemao/android/account/util/GeetestRequest;

    return-object v0
.end method

.method private init(Landroid/content/Context;)V
    .registers 3

    .line 63
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 64
    new-instance p1, Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/geetest/sdk/GT3GeetestUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    return-void
.end method

.method private synthetic lambda$geestRegister$0(Ljava/lang/String;)V
    .registers 6

    .line 202
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 203
    sget-object v1, Lcn/codemao/android/account/util/GeetestRequest;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RequestAPI1-->onPostExecute: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3ConfigBean:Lcom/geetest/sdk/GT3ConfigBean;

    invoke-virtual {p1, v0}, Lcom/geetest/sdk/GT3ConfigBean;->setApi1Json(Lorg/json/JSONObject;)V

    .line 209
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->getGeetest()V
    :try_end_25
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_25} :catch_26

    goto :goto_2b

    .line 211
    :catch_26
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->showFailedDialog()V

    :goto_2b
    return-void
.end method

.method private synthetic lambda$geestRegister$1(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 214
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->showFailedDialog()V

    return-void
.end method

.method private synthetic lambda$geestVerify$2(Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V
    .registers 3

    .line 220
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {v0}, Lcom/geetest/sdk/GT3GeetestUtils;->showSuccessDialog()V

    .line 221
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->mGeetestListener:Lcn/codemao/android/account/listener/GeetestListener;

    invoke-interface {v0, p1}, Lcn/codemao/android/account/listener/GeetestListener;->onSuccess(Lcn/codemao/android/account/bean/CaptchaVerifyVO;)V

    return-void
.end method

.method private synthetic lambda$geestVerify$3(Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 222
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->showFailedDialog()V

    return-void
.end method


# virtual methods
.method public getGeetest(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/GeetestListener;)V
    .registers 5

    .line 82
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    if-nez v0, :cond_7

    .line 83
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/GeetestRequest;->init(Landroid/content/Context;)V

    .line 84
    :cond_7
    invoke-direct {p0, p2}, Lcn/codemao/android/account/util/GeetestRequest;->customVerity(Ljava/lang/String;)V

    .line 85
    iput-object p3, p0, Lcn/codemao/android/account/util/GeetestRequest;->mGeetestListener:Lcn/codemao/android/account/listener/GeetestListener;

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 2

    .line 77
    iget-object p1, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    if-eqz p1, :cond_7

    .line 78
    invoke-virtual {p1}, Lcom/geetest/sdk/GT3GeetestUtils;->changeDialogLayout()V

    :cond_7
    return-void
.end method

.method public onCreate(Landroid/content/Context;)V
    .registers 2

    .line 59
    invoke-direct {p0, p1}, Lcn/codemao/android/account/util/GeetestRequest;->init(Landroid/content/Context;)V

    return-void
.end method

.method public onDestroy()V
    .registers 2

    .line 69
    iget-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    if-eqz v0, :cond_a

    .line 70
    invoke-virtual {v0}, Lcom/geetest/sdk/GT3GeetestUtils;->destory()V

    const/4 v0, 0x0

    .line 71
    iput-object v0, p0, Lcn/codemao/android/account/util/GeetestRequest;->gt3GeetestUtils:Lcom/geetest/sdk/GT3GeetestUtils;

    :cond_a
    return-void
.end method
