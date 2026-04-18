.class public abstract Lcom/sdk/base/module/manager/SDKManager;
.super Ljava/lang/Object;


# static fields
.field private static isStrong:Z = true

.field public static mContext:Landroid/content/Context; = null

.field private static smartTrust:Z = true

.field private static statisticalTestHost:Ljava/lang/String; = ""

.field private static testHost:Ljava/lang/String; = ""

.field private static useCache:Z = true

.field private static userAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getContext()Landroid/content/Context;
    .registers 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getStatisticalTestHost()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->statisticalTestHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getTestHost()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->testHost:Ljava/lang/String;

    return-object v0
.end method

.method public static getUserAgent()Ljava/lang/String;
    .registers 1

    sget-object v0, Lcom/sdk/base/module/manager/SDKManager;->userAgent:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-object p0, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sdk/t/a;->a(Landroid/content/Context;)Lcom/sdk/t/a;

    move-result-object v0

    invoke-static {p0}, Lcom/sdk/base/framework/utils/app/AppUtils;->isFirstLogin(Landroid/content/Context;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p1, Lcom/sdk/t/a;->b:Ljava/lang/String;

    const/4 p0, 0x0

    sput-object p0, Lcom/sdk/t/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-object p0, Lcom/sdk/base/module/manager/SDKManager;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/sdk/t/a;->a(Landroid/content/Context;)Lcom/sdk/t/a;

    move-result-object v0

    invoke-static {p0}, Lcom/sdk/base/framework/utils/app/AppUtils;->isFirstLogin(Landroid/content/Context;)Z

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sput-object p2, Lcom/sdk/t/a;->b:Ljava/lang/String;

    sput-object p1, Lcom/sdk/t/a;->c:Ljava/lang/String;

    return-void
.end method

.method public static isIsStrong()Z
    .registers 1

    sget-boolean v0, Lcom/sdk/base/module/manager/SDKManager;->isStrong:Z

    return v0
.end method

.method public static isSmartTrust()Z
    .registers 1

    sget-boolean v0, Lcom/sdk/base/module/manager/SDKManager;->smartTrust:Z

    return v0
.end method

.method public static setDebug(Z)V
    .registers 1
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sput-boolean p0, Lcom/sdk/f/c;->b:Z

    return-void
.end method

.method public static useCache()Z
    .registers 1

    sget-boolean v0, Lcom/sdk/base/module/manager/SDKManager;->useCache:Z

    return v0
.end method
