.class public Lcn/codemao/android/account/tccapture/TcCaptchaManager;
.super Ljava/lang/Object;
.source "TcCaptchaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/tccapture/TcCaptchaManager$SingletonInstance;
    }
.end annotation


# instance fields
.field private appid:Ljava/lang/String;

.field private mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

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
.method private constructor <init>()V
    .registers 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/account/tccapture/TcCaptchaManager$1;)V
    .registers 2

    .line 17
    invoke-direct {p0}, Lcn/codemao/android/account/tccapture/TcCaptchaManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/tccapture/TcCaptchaManager;
    .registers 1

    .line 27
    invoke-static {}, Lcn/codemao/android/account/tccapture/TcCaptchaManager$SingletonInstance;->access$100()Lcn/codemao/android/account/tccapture/TcCaptchaManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 49
    iput-object v0, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 50
    iput-object v0, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-void
.end method

.method public getAppid()Ljava/lang/String;
    .registers 2

    .line 45
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->appid:Ljava/lang/String;

    return-object v0
.end method

.method public getFailListener()Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 2

    .line 40
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object v0
.end method

.method public getSucListener()Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TencentCaptchaVO;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object v0
.end method

.method public validate(Landroid/content/Context;Ljava/lang/String;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/TencentCaptchaVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 58
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    if-nez p1, :cond_9

    goto :goto_13

    .line 64
    :cond_9
    iput-object p3, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 65
    iput-object p4, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 66
    iput-object p2, p0, Lcn/codemao/android/account/tccapture/TcCaptchaManager;->appid:Ljava/lang/String;

    .line 67
    invoke-static {p1}, Lcn/codemao/android/account/tccapture/TCCaptchaActivity;->start(Landroid/content/Context;)V

    return-void

    :cond_13
    :goto_13
    if-eqz p4, :cond_1d

    const-string p1, ""

    const-string/jumbo p2, "腾讯appid为空!"

    .line 60
    invoke-interface {p4, p1, p2}, Lcn/codemao/android/account/listener/NetFailResultListener;->onFailure(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1d
    return-void
.end method
