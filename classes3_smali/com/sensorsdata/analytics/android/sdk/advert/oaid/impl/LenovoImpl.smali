.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;
.super Ljava/lang/Object;
.source "LenovoImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.LenovoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    .line 39
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 51
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "com.zui.deviceidservice"

    const-string v3, "com.zui.deviceidservice.DeviceidService"

    .line 52
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 53
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_37

    .line 54
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-direct {v1, v2, v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;-><init>(Landroid/os/IBinder;Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$1;)V

    .line 55
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl$LenovoInterface;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 56
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/LenovoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_31

    goto :goto_37

    :catchall_31
    move-exception v1

    const-string v2, "SA.LenovoImpl"

    .line 59
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_37
    :goto_37
    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
