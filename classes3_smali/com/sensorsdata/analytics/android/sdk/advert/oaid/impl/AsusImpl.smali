.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;
.super Ljava/lang/Object;
.source "AsusImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.AsusImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    .line 40
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    return-void
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 52
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.asus.msa.action.ACCESS_DID"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 53
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.asus.msa.SupplementaryDID"

    const-string v4, "com.asus.msa.SupplementaryDID.SupplementaryDIDService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 55
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 56
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v2}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    invoke-direct {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;-><init>(Landroid/os/IBinder;)V

    .line 57
    invoke-virtual {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl$AsusInterface;->getOAID()Ljava/lang/String;

    move-result-object v0

    .line 58
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/AsusImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_37
    .catchall {:try_start_1 .. :try_end_37} :catchall_38

    goto :goto_3e

    :catchall_38
    move-exception v1

    const-string v2, "SA.AsusImpl"

    .line 61
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3e
    :goto_3e
    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
