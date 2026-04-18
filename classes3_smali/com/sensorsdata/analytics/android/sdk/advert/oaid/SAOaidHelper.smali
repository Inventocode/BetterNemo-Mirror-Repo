.class public Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;
.super Ljava/lang/Object;
.source "SAOaidHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$IdentifyListenerHandler;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SA.SAOaidHelper"

.field private static jLibrary:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mCountDownLatch:Ljava/util/concurrent/CountDownLatch; = null

.field private static mIdSupplier:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mIdentifyListener:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static final mLoadLibrary:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static mMidSDKHelper:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static mOAID:Ljava/lang/String; = ""

.field private static mOidCertFilePath:Ljava/lang/String; = null

.field private static mReflectionOAID:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 56
    new-instance v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$1;

    invoke-direct {v0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$1;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mLoadLibrary:Ljava/util/List;

    .line 66
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->initSDKLibrary()V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/concurrent/CountDownLatch;
    .registers 1

    .line 42
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/Class;
    .registers 1

    .line 42
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdSupplier:Ljava/lang/Class;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .registers 1

    .line 42
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .registers 1

    .line 42
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    return-object p0
.end method

.method private static allZero(Ljava/lang/String;)Z
    .registers 5

    const-string v0, "-"

    const-string v1, ""

    .line 119
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "#"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "_"

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 120
    :goto_16
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_28

    .line 121
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_25

    return v0

    :cond_25
    add-int/lit8 v1, v1, 0x1

    goto :goto_16

    :cond_28
    const/4 p0, 0x1

    return p0
.end method

.method private static getMSAOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-string v0, ""

    const-string v1, "SA.SAOaidHelper"

    .line 152
    :try_start_4
    new-instance v2, Ljava/util/concurrent/CountDownLatch;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    .line 153
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->initInvokeListener()V

    .line 154
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mMidSDKHelper:Ljava/lang/Class;

    if-eqz v2, :cond_3d

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdentifyListener:Ljava/lang/Class;

    if-eqz v2, :cond_3d

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdSupplier:Ljava/lang/Class;

    if-nez v2, :cond_1c

    goto :goto_3d

    .line 158
    :cond_1c
    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3a

    const/4 v2, 0x2

    .line 159
    invoke-static {p0, v2}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOAIDReflect(Landroid/content/Context;I)V
    :try_end_28
    .catchall {:try_start_4 .. :try_end_28} :catchall_43

    .line 164
    :try_start_28
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_2d
    .catch Ljava/lang/InterruptedException; {:try_start_28 .. :try_end_2d} :catch_2e
    .catchall {:try_start_28 .. :try_end_2d} :catchall_43

    goto :goto_32

    :catch_2e
    move-exception p0

    .line 166
    :try_start_2f
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->printStackTrace(Ljava/lang/Exception;)V

    :goto_32
    const-string p0, "CountDownLatch await"

    .line 168
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    return-object p0

    .line 161
    :cond_3a
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    return-object p0

    :cond_3d
    :goto_3d
    const-string p0, "OAID class create failed"

    .line 155
    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_42
    .catchall {:try_start_2f .. :try_end_42} :catchall_43

    return-object v0

    :catchall_43
    move-exception p0

    .line 171
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getOAIDReflect(Landroid/content/Context;I)V
    .registers 13

    const-string v0, "SA.SAOaidHelper"

    if-nez p1, :cond_5

    return-void

    .line 195
    :cond_5
    :try_start_5
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->initPemCert(Landroid/content/Context;)V

    .line 197
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->jLibrary:Ljava/lang/Class;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_22

    const-string v5, "InitEntry"

    new-array v6, v4, [Ljava/lang/Class;

    .line 198
    const-class v7, Landroid/content/Context;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p0, v5, v3

    .line 199
    invoke-virtual {v1, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    :cond_22
    new-instance v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$IdentifyListenerHandler;

    invoke-direct {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$IdentifyListenerHandler;-><init>()V

    .line 202
    sget-object v5, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mMidSDKHelper:Ljava/lang/Class;

    const-string v6, "InitSdk"

    const/4 v7, 0x3

    new-array v8, v7, [Ljava/lang/Class;

    const-class v9, Landroid/content/Context;

    aput-object v9, v8, v3

    sget-object v9, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v9, v8, v4

    sget-object v9, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdentifyListener:Ljava/lang/Class;

    const/4 v10, 0x2

    aput-object v9, v8, v10

    invoke-virtual {v5, v6, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    new-array v6, v7, [Ljava/lang/Object;

    aput-object p0, v6, v3

    .line 203
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v7, v6, v4

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    new-array v4, v4, [Ljava/lang/Class;

    sget-object v8, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdentifyListener:Ljava/lang/Class;

    aput-object v8, v4, v3

    invoke-static {v7, v4, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v1

    aput-object v1, v6, v10

    invoke-virtual {v5, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 204
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MdidSdkHelper ErrorCode : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v2, 0xf63e6

    if-eq v1, v2, :cond_8b

    const v2, 0xf63e2

    if-eq v1, v2, :cond_8b

    add-int/lit8 p1, p1, -0x1

    .line 206
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOAIDReflect(Landroid/content/Context;I)V

    if-nez p1, :cond_8b

    .line 208
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 216
    :cond_8b
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$2;

    invoke-direct {v2}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper$2;-><init>()V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 226
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_98
    .catchall {:try_start_5 .. :try_end_98} :catchall_99

    goto :goto_ad

    :catchall_99
    move-exception v1

    .line 228
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 p1, p1, -0x1

    .line 229
    invoke-static {p0, p1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOAIDReflect(Landroid/content/Context;I)V

    if-nez p1, :cond_ad

    .line 231
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mCountDownLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    :cond_ad
    :goto_ad
    return-void
.end method

.method public static declared-synchronized getOpenAdIdentifier(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    const-class v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;

    monitor-enter v0

    .line 76
    :try_start_3
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isOAIDEnabled()Z

    move-result v1

    if-nez v1, :cond_14

    const-string p0, "SA.SAOaidHelper"

    const-string v1, "Sensors getOAID disabled"

    .line 77
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_b3

    .line 78
    monitor-exit v0

    return-object p0

    .line 81
    :cond_14
    :try_start_14
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;

    move-result-object v1

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/internal/beans/LimitKey;->OAID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->isLimitKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 82
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getInstance()Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;

    move-result-object p0

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/internal/beans/LimitKey;->OAID:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/core/business/SAPropertyManager;->getLimitValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0
    :try_end_2a
    .catchall {:try_start_14 .. :try_end_2a} :catchall_b3

    monitor-exit v0

    return-object p0

    .line 84
    :cond_2c
    :try_start_2c
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_41

    const-string p0, "SA.SAOaidHelper"

    const-string v1, "function can not be called on main thread"

    .line 85
    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""
    :try_end_3f
    .catchall {:try_start_2c .. :try_end_3f} :catchall_b3

    .line 86
    monitor-exit v0

    return-object p0

    .line 88
    :cond_41
    :try_start_41
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4d

    .line 89
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;
    :try_end_4b
    .catchall {:try_start_41 .. :try_end_4b} :catchall_b3

    monitor-exit v0

    return-object p0

    .line 92
    :cond_4d
    :try_start_4d
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getMSAOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    const-string v1, "SA.SAOaidHelper"

    .line 93
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSA OAID is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_7b

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v1}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->allZero(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_af

    .line 101
    :cond_7b
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getROMOAID(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mReflectionOAID:Ljava/lang/String;

    .line 103
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_8f

    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mReflectionOAID:Ljava/lang/String;

    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->allZero(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_93

    :cond_8f
    const-string p0, ""

    .line 104
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mReflectionOAID:Ljava/lang/String;

    .line 106
    :cond_93
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mReflectionOAID:Ljava/lang/String;

    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    const-string p0, "SA.SAOaidHelper"

    .line 107
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Rom OAID is"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :cond_af
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;
    :try_end_b1
    .catchall {:try_start_4d .. :try_end_b1} :catchall_b3

    monitor-exit v0

    return-object p0

    :catchall_b3
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getOpenAdIdentifierByReflection(Landroid/content/Context;)Ljava/lang/String;
    .registers 2

    .line 136
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/SensorsDataUtils;->isOAIDEnabled()Z

    move-result v0

    if-nez v0, :cond_10

    const-string p0, "SA.SAOaidHelper"

    const-string v0, "Sensors getOAIDReflection disabled"

    .line 137
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0

    .line 140
    :cond_10
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOAID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 141
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->getOpenAdIdentifier(Landroid/content/Context;)Ljava/lang/String;

    .line 143
    :cond_1b
    sget-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mReflectionOAID:Ljava/lang/String;

    return-object p0
.end method

.method private static getROMOAID(Landroid/content/Context;)Ljava/lang/String;
    .registers 1

    .line 147
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/impl/OAIDFactory;->create(Landroid/content/Context;)Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;

    move-result-object p0

    invoke-interface {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/IRomOAID;->getRomOAID()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static initInvokeListener()V
    .registers 2

    const-string v0, "com.bun.miitmdid.core.JLibrary"

    .line 261
    :try_start_2
    const-class v1, Lcom/bun/miitmdid/core/MdidSdkHelper;

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mMidSDKHelper:Ljava/lang/Class;
    :try_end_6
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_6} :catch_3d

    .line 268
    :try_start_6
    const-class v1, Lcom/bun/miitmdid/interfaces/IIdentifierListener;

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdentifyListener:Ljava/lang/Class;

    .line 269
    const-class v1, Lcom/bun/miitmdid/interfaces/IdSupplier;

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdSupplier:Ljava/lang/Class;
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_e} :catch_f

    return-void

    :catch_f
    :try_start_f
    const-string v1, "com.bun.supplier.IIdentifierListener"

    .line 277
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdentifyListener:Ljava/lang/Class;

    const-string v1, "com.bun.supplier.IdSupplier"

    .line 278
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdSupplier:Ljava/lang/Class;

    .line 279
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->jLibrary:Ljava/lang/Class;
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_25} :catch_26

    return-void

    :catch_26
    :try_start_26
    const-string v1, "com.bun.miitmdid.core.IIdentifierListener"

    .line 287
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdentifyListener:Ljava/lang/Class;

    const-string v1, "com.bun.miitmdid.supplier.IdSupplier"

    .line 288
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mIdSupplier:Ljava/lang/Class;

    .line 289
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->jLibrary:Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_3c} :catch_3c

    :catch_3c
    return-void

    :catch_3d
    move-exception v0

    .line 263
    invoke-virtual {v0}, Ljava/lang/ClassNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SA.SAOaidHelper"

    invoke-static {v1, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static initPemCert(Landroid/content/Context;)V
    .registers 9

    .line 313
    :try_start_0
    invoke-static {p0}, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->loadPemFromAssetFile(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 314
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 315
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mMidSDKHelper:Ljava/lang/Class;

    const-string v2, "InitCert"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Ljava/lang/String;

    const/4 v7, 0x1

    aput-object v5, v4, v7

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v6

    aput-object v0, v3, v7

    .line 316
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_29
    .catchall {:try_start_0 .. :try_end_29} :catchall_2a

    goto :goto_34

    :catchall_2a
    move-exception p0

    .line 319
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SA.SAOaidHelper"

    invoke-static {v0, p0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_34
    :goto_34
    return-void
.end method

.method private static initSDKLibrary()V
    .registers 2

    .line 296
    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mLoadLibrary:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 298
    :try_start_12
    invoke-static {v1}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_15
    .catchall {:try_start_12 .. :try_end_15} :catchall_16

    goto :goto_18

    :catchall_16
    nop

    goto :goto_6

    :cond_18
    :goto_18
    return-void
.end method

.method private static loadPemFromAssetFile(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    .line 331
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".cert.pem"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    .line 334
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOidCertFilePath:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_1f} :catch_54

    if-nez v1, :cond_2d

    .line 336
    :try_start_21
    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOidCertFilePath:Ljava/lang/String;

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_27} :catch_28

    goto :goto_31

    .line 338
    :catch_28
    :try_start_28
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    goto :goto_31

    .line 341
    :cond_2d
    invoke-virtual {p0, v0}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    .line 343
    :goto_31
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 344
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 346
    :goto_40
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4f

    .line 347
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    .line 348
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40

    .line 350
    :cond_4f
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_53
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_53} :catch_54

    return-object p0

    :catch_54
    const-string p0, "SA.SAOaidHelper"

    const-string v0, "loadPemFromAssetFile failed"

    .line 352
    invoke-static {p0, v0}, Lcom/sensorsdata/analytics/android/sdk/SALog;->i(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static setOaidCertFilePath(Ljava/lang/String;)V
    .registers 1

    .line 363
    sput-object p0, Lcom/sensorsdata/analytics/android/sdk/advert/oaid/SAOaidHelper;->mOidCertFilePath:Ljava/lang/String;

    return-void
.end method
