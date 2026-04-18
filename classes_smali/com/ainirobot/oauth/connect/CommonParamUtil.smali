.class public Lcom/ainirobot/oauth/connect/CommonParamUtil;
.super Ljava/lang/Object;
.source "CommonParamUtil.java"


# static fields
.field private static sSingleton:Lcom/ainirobot/oauth/utils/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ainirobot/oauth/utils/Singleton<",
            "Lcom/ainirobot/oauth/connect/CommonParamUtil;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppLan:Ljava/lang/String;

.field private mAppv:Ljava/lang/String;

.field private mItime:Ljava/lang/String;

.field private mLat:Ljava/lang/String;

.field private mLon:Ljava/lang/String;

.field private mOsv:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 36
    new-instance v0, Lcom/ainirobot/oauth/connect/CommonParamUtil$1;

    invoke-direct {v0}, Lcom/ainirobot/oauth/connect/CommonParamUtil$1;-><init>()V

    sput-object v0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->sSingleton:Lcom/ainirobot/oauth/utils/Singleton;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    .line 21
    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mOsv:Ljava/lang/String;

    .line 23
    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppv:Ljava/lang/String;

    .line 25
    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppLan:Ljava/lang/String;

    .line 27
    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mItime:Ljava/lang/String;

    .line 29
    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mLon:Ljava/lang/String;

    .line 31
    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mLat:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>(Lcom/ainirobot/oauth/connect/CommonParamUtil$1;)V
    .registers 2

    .line 19
    invoke-direct {p0}, Lcom/ainirobot/oauth/connect/CommonParamUtil;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/ainirobot/oauth/connect/CommonParamUtil;
    .registers 1

    .line 48
    sget-object v0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->sSingleton:Lcom/ainirobot/oauth/utils/Singleton;

    invoke-virtual {v0}, Lcom/ainirobot/oauth/utils/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ainirobot/oauth/connect/CommonParamUtil;

    return-object v0
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .registers 2

    const-string v0, "100001"

    return-object v0
.end method

.method public getAppLan()Ljava/lang/String;
    .registers 2

    .line 66
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppLan:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 67
    invoke-static {}, Lcom/ainirobot/oauth/connect/RuntimeUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ainirobot/oauth/utils/PackageUtil;->getSystemLang(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppLan:Ljava/lang/String;

    .line 69
    :cond_12
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppLan:Ljava/lang/String;

    return-object v0
.end method

.method public getAppType()Ljava/lang/String;
    .registers 2

    const-string v0, "robot"

    return-object v0
.end method

.method public getAppv()Ljava/lang/String;
    .registers 2

    .line 59
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_12

    .line 60
    invoke-static {}, Lcom/ainirobot/oauth/connect/RuntimeUtil;->getAppContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/ainirobot/oauth/utils/PackageUtil;->getAppVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppv:Ljava/lang/String;

    .line 62
    :cond_12
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mAppv:Ljava/lang/String;

    return-object v0
.end method

.method public getCTime()Ljava/lang/String;
    .registers 4

    .line 73
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItime()Ljava/lang/String;
    .registers 2

    .line 78
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mItime:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 81
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mItime:Ljava/lang/String;

    return-object v0
.end method

.method public getLat()Ljava/lang/String;
    .registers 2

    .line 92
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mLat:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mLat:Ljava/lang/String;

    return-object v0
.end method

.method public getLon()Ljava/lang/String;
    .registers 2

    .line 85
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mLon:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 88
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mLon:Ljava/lang/String;

    return-object v0
.end method

.method public getOsv()Ljava/lang/String;
    .registers 2

    .line 52
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mOsv:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 53
    sget-object v0, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    iput-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mOsv:Ljava/lang/String;

    .line 55
    :cond_c
    iget-object v0, p0, Lcom/ainirobot/oauth/connect/CommonParamUtil;->mOsv:Ljava/lang/String;

    return-object v0
.end method
