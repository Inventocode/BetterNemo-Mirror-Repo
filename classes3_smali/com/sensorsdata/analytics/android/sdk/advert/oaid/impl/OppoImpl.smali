.class Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;
.super Ljava/lang/Object;
.source "OppoImpl.java"

# interfaces
.implements Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.OppoImpl"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

.field private mSign:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    .line 46
    new-instance p1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-direct {p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;-><init>()V

    iput-object p1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    return-void
.end method

.method private getSerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 95
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;->BINDER_QUEUE:Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-virtual {v1}, Ljava/util/concurrent/LinkedBlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    invoke-direct {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;-><init>(Landroid/os/IBinder;)V

    const-string v1, "OUID"

    .line 96
    invoke-virtual {v0, p1, p2, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl$OppoInterface;->getSerID(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private realGetOUID()Ljava/lang/String;
    .registers 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PackageManagerGetSignatures"
        }
    .end annotation

    .line 72
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 74
    :try_start_6
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mSign:Ljava/lang/String;

    if-nez v1, :cond_52

    .line 75
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x40

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    const/4 v2, 0x0

    .line 77
    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v1

    const-string v3, "SHA1"

    .line 78
    invoke-static {v3}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v3

    .line 79
    invoke-virtual {v3, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    .line 80
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    array-length v4, v1

    :goto_2f
    if-ge v2, v4, :cond_47

    aget-byte v5, v1, v2

    and-int/lit16 v5, v5, 0xff

    or-int/lit16 v5, v5, 0x100

    .line 82
    invoke-static {v5}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x3

    const/4 v7, 0x1

    invoke-virtual {v5, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2f

    .line 84
    :cond_47
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mSign:Ljava/lang/String;

    .line 85
    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->getSerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 87
    :cond_52
    invoke-direct {p0, v0, v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->getSerId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_56
    .catchall {:try_start_6 .. :try_end_56} :catchall_57

    return-object v0

    :catchall_57
    move-exception v0

    const-string v1, "SA.OppoImpl"

    .line 89
    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method


# virtual methods
.method public getRomOAID()Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    .line 58
    :try_start_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "action.com.heytap.openid.OPEN_ID_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    new-instance v2, Landroid/content/ComponentName;

    const-string v3, "com.heytap.openid"

    const-string v4, "com.heytap.openid.IdentifyService"

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 60
    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    const/4 v4, 0x1

    invoke-virtual {v2, v1, v3, v4}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-eqz v1, :cond_31

    .line 61
    invoke-direct {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->realGetOUID()Ljava/lang/String;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OppoImpl;->mService:Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDService;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_2a
    .catchall {:try_start_1 .. :try_end_2a} :catchall_2b

    goto :goto_31

    :catchall_2b
    move-exception v1

    const-string v2, "SA.OppoImpl"

    .line 65
    invoke-static {v2, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_31
    :goto_31
    return-object v0
.end method

.method public isSupported()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
