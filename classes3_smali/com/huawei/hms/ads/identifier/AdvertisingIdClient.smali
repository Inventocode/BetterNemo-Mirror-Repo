.class public Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;
    }
.end annotation


# static fields
.field private static final SETTINGS_AD_ID:Ljava/lang/String; = "pps_oaid"

.field private static final SETTINGS_TRACK_LIMIT:Ljava/lang/String; = "pps_track_limit"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;
    .registers 1

    invoke-static {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0
.end method

.method public static getAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;
    .registers 4
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_37

    :try_start_6
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "pps_oaid"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pps_track_limit"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_37

    invoke-static {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->updateAdvertisingIdInfo(Landroid/content/Context;)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    new-instance v2, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    invoke-direct {v2, v0, v1}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_36
    .catchall {:try_start_6 .. :try_end_36} :catchall_37

    return-object v2

    :catchall_37
    :cond_37
    invoke-static {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    return-object p0
.end method

.method public static isAdvertisingIdAvailable(Landroid/content/Context;)Z
    .registers 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    const-string v0, "com.huawei.hwid"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0
    :try_end_1c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_1c} :catch_1e
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_1c} :catch_1e

    xor-int/lit8 v1, p0, 0x1

    :catch_1e
    return v1
.end method

.method private static requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;
    .registers 10

    const-string v0, "com.uodis.opendevice.aidl.OpenDeviceIdentifierService"

    const-string v1, "com.huawei.hwid"

    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_c} :catch_a7

    new-instance v2, LXI/kM/XI/XI/XI/XI;

    invoke-direct {v2}, LXI/kM/XI/XI/XI/XI;-><init>()V

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.uodis.opendevice.OPENIDS_SERVICE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x1

    invoke-virtual {p0, v4, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v4

    if-eqz v4, :cond_9f

    :try_start_22
    iget-boolean v4, v2, LXI/kM/XI/XI/XI/XI;->XI:Z

    if-nez v4, :cond_83

    iput-boolean v1, v2, LXI/kM/XI/XI/XI/XI;->XI:Z

    iget-object v4, v2, LXI/kM/XI/XI/XI/XI;->K0:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v4}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/IBinder;

    new-instance v5, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_3a
    .catch Ljava/lang/InterruptedException; {:try_start_22 .. :try_end_3a} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_22 .. :try_end_3a} :catch_8b
    .catchall {:try_start_22 .. :try_end_3a} :catchall_89

    :try_start_3a
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-interface {v4, v1, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v7}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8
    :try_end_47
    .catchall {:try_start_3a .. :try_end_47} :catchall_7b

    :try_start_47
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 2
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v6

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v7
    :try_end_55
    .catch Ljava/lang/InterruptedException; {:try_start_47 .. :try_end_55} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_47 .. :try_end_55} :catch_8b
    .catchall {:try_start_47 .. :try_end_55} :catchall_89

    :try_start_55
    invoke-virtual {v6, v0}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v0, 0x2

    invoke-interface {v4, v0, v6, v7, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v7}, Landroid/os/Parcel;->readException()V

    invoke-virtual {v7}, Landroid/os/Parcel;->readInt()I

    move-result v0
    :try_end_63
    .catchall {:try_start_55 .. :try_end_63} :catchall_73

    if-eqz v0, :cond_66

    const/4 v3, 0x1

    :cond_66
    :try_start_66
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    .line 3
    invoke-direct {v5, v8, v3}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;-><init>(Ljava/lang/String;Z)V
    :try_end_6f
    .catch Ljava/lang/InterruptedException; {:try_start_66 .. :try_end_6f} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_66 .. :try_end_6f} :catch_8b
    .catchall {:try_start_66 .. :try_end_6f} :catchall_89

    :try_start_6f
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_72

    :catchall_72
    return-object v5

    :catchall_73
    move-exception v0

    .line 4
    :try_start_74
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v0

    :catchall_7b
    move-exception v0

    .line 5
    invoke-virtual {v7}, Landroid/os/Parcel;->recycle()V

    invoke-virtual {v6}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 6
    :cond_83
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
    :try_end_89
    .catch Ljava/lang/InterruptedException; {:try_start_74 .. :try_end_89} :catch_93
    .catch Landroid/os/RemoteException; {:try_start_74 .. :try_end_89} :catch_8b
    .catchall {:try_start_74 .. :try_end_89} :catchall_89

    :catchall_89
    move-exception v0

    goto :goto_9b

    :catch_8b
    const-string v0, "bind hms service RemoteException"

    :try_start_8d
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_93
    .catchall {:try_start_8d .. :try_end_93} :catchall_89

    :catch_93
    const-string v0, "bind hms service InterruptedException"

    :try_start_95
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_9b
    .catchall {:try_start_95 .. :try_end_9b} :catchall_89

    :goto_9b
    :try_start_9b
    invoke-virtual {p0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_9e
    .catchall {:try_start_9b .. :try_end_9e} :catchall_9e

    :catchall_9e
    throw v0

    :cond_9f
    new-instance p0, Ljava/io/IOException;

    const-string v0, "bind failed"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :catch_a7
    new-instance p0, Ljava/io/IOException;

    const-string v0, "Service not found"

    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private static updateAdvertisingIdInfo(Landroid/content/Context;)V
    .registers 3

    sget-object v0, LXI/kM/XI/XI/XI/K0;->XI:Ljava/util/concurrent/ThreadPoolExecutor;

    new-instance v1, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$XI;

    invoke-direct {v1, p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$XI;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static verifyAdId(Landroid/content/Context;Ljava/lang/String;Z)Z
    .registers 5
    .annotation build Landroidx/annotation/Keep;
    .end annotation

    :try_start_0
    invoke-static {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient;->requestAdvertisingIdInfo(Landroid/content/Context;)Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_19

    invoke-virtual {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_19

    invoke-virtual {p0}, Lcom/huawei/hms/ads/identifier/AdvertisingIdClient$Info;->isLimitAdTrackingEnabled()Z

    move-result p0
    :try_end_15
    .catchall {:try_start_0 .. :try_end_15} :catchall_1a

    if-ne p2, p0, :cond_19

    const/4 p0, 0x1

    return p0

    :cond_19
    return v0

    :catchall_1a
    new-instance p0, Lcom/huawei/hms/ads/identifier/AdIdVerifyException;

    const-string p1, "Something wrong with verification, please try later."

    invoke-direct {p0, p1}, Lcom/huawei/hms/ads/identifier/AdIdVerifyException;-><init>(Ljava/lang/String;)V

    throw p0
.end method
