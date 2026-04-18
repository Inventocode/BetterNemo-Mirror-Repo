.class public Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;
.super Ljava/lang/Object;
.source "NextDataCaptchaManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$SingletonInstance;
    }
.end annotation


# instance fields
.field private mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

.field private mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

.field private mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$1;)V
    .registers 2

    .line 16
    invoke-direct {p0}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;-><init>()V

    return-void
.end method

.method public static getInstance()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;
    .registers 1

    .line 26
    invoke-static {}, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager$SingletonInstance;->access$100()Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public destroy()V
    .registers 2

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 55
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 56
    iput-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    return-void
.end method

.method public getConfig()Lcn/codemao/android/account/nextdata/bean/NextDataConfig;
    .registers 2

    .line 43
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    return-object v0
.end method

.method public getFailListener()Lcn/codemao/android/account/listener/NetFailResultListener;
    .registers 2

    .line 39
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    return-object v0
.end method

.method public getSucListener()Lcn/codemao/android/account/listener/NetSuccessResultListener;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    return-object v0
.end method

.method public setConfig(Lcn/codemao/android/account/nextdata/bean/NextDataConfig;)V
    .registers 2

    .line 50
    iput-object p1, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mConfig:Lcn/codemao/android/account/nextdata/bean/NextDataConfig;

    return-void
.end method

.method public validate(Landroid/content/Context;Lcn/codemao/android/account/listener/NetSuccessResultListener;Lcn/codemao/android/account/listener/NetFailResultListener;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcn/codemao/android/account/listener/NetSuccessResultListener<",
            "Lcn/codemao/android/account/bean/CaptchaVerifyVO;",
            ">;",
            "Lcn/codemao/android/account/listener/NetFailResultListener;",
            ")V"
        }
    .end annotation

    .line 63
    iput-object p2, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mSucListener:Lcn/codemao/android/account/listener/NetSuccessResultListener;

    .line 64
    iput-object p3, p0, Lcn/codemao/android/account/nextdata/NextDataCaptchaManager;->mFailListener:Lcn/codemao/android/account/listener/NetFailResultListener;

    .line 67
    invoke-static {p1}, Lcn/codemao/android/account/nextdata/NextDataCaptchaActivity;->start(Landroid/content/Context;)V

    return-void
.end method
