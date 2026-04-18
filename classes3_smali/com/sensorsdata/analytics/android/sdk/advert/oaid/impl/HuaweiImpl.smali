.class public Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;
.super Ljava/lang/Object;
.source "HuaweiImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.HuaweiImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    .line 42
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    return-void
.end method

.method private realLoadOaid(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 75
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 77
    iget-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result p1

    if-eqz p1, :cond_2e

    .line 78
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;-><init>(Landroid/os/IBinder;Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$1;)V

    .line 79
    invoke-virtual {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl$HuaWeiInterface;->getOAID()Ljava/lang/String;

    move-result-object p1
    :try_end_27
    .catchall {:try_start_0 .. :try_end_27} :catchall_28

    return-object p1

    :catchall_28
    move-exception p1

    const-string v0, "SA.HuaweiImpl"

    .line 82
    invoke-static {v0, p1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2e
    const-string p1, ""

    return-object p1
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 7

    const-string v0, "SA.HuaweiImpl"

    .line 52
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_24

    .line 54
    :try_start_8
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pps_oaid"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_24

    const-string v2, "Get oaid from global settings"

    .line 56
    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_20

    return-object v1

    :catchall_20
    move-exception v1

    .line 60
    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_24
    const/4 v0, 0x0

    const/4 v1, 0x3

    const-string v2, "com.huawei.hwid"

    const-string v3, "com.huawei.hwid.tv"

    const-string v4, "com.huawei.hms"

    .line 64
    filled-new-array {v2, v3, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_31
    if-ge v3, v1, :cond_42

    .line 65
    aget-object v4, v2, v3

    .line 66
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_3f

    .line 67
    invoke-direct {p0, v4}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/HuaweiImpl;->realLoadOaid(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_31

    :cond_42
    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
