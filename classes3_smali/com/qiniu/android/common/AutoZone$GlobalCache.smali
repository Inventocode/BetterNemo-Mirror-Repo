.class Lcom/qiniu/android/common/AutoZone$GlobalCache;
.super Ljava/lang/Object;
.source "AutoZone.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qiniu/android/common/AutoZone;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "GlobalCache"
.end annotation


# static fields
.field private static globalCache:Lcom/qiniu/android/common/AutoZone$GlobalCache;


# instance fields
.field private cache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 159
    new-instance v0, Lcom/qiniu/android/common/AutoZone$GlobalCache;

    invoke-direct {v0}, Lcom/qiniu/android/common/AutoZone$GlobalCache;-><init>()V

    sput-object v0, Lcom/qiniu/android/common/AutoZone$GlobalCache;->globalCache:Lcom/qiniu/android/common/AutoZone$GlobalCache;

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 160
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/common/AutoZone$GlobalCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method static synthetic access$000()Lcom/qiniu/android/common/AutoZone$GlobalCache;
    .registers 1

    .line 158
    invoke-static {}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->getInstance()Lcom/qiniu/android/common/AutoZone$GlobalCache;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/qiniu/android/common/AutoZone$GlobalCache;Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;
    .registers 2

    .line 158
    invoke-direct {p0, p1}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->zonesInfoForKey(Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/qiniu/android/common/AutoZone$GlobalCache;Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 3

    .line 158
    invoke-direct {p0, p1, p2}, Lcom/qiniu/android/common/AutoZone$GlobalCache;->cache(Lorg/json/JSONObject;Ljava/lang/String;)V

    return-void
.end method

.method private cache(Lorg/json/JSONObject;Ljava/lang/String;)V
    .registers 4

    if-eqz p2, :cond_16

    .line 167
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    :cond_9
    if-nez p1, :cond_11

    .line 172
    iget-object p1, p0, Lcom/qiniu/android/common/AutoZone$GlobalCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_16

    .line 174
    :cond_11
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone$GlobalCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p2, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_16
    :goto_16
    return-void
.end method

.method private static getInstance()Lcom/qiniu/android/common/AutoZone$GlobalCache;
    .registers 1

    .line 163
    sget-object v0, Lcom/qiniu/android/common/AutoZone$GlobalCache;->globalCache:Lcom/qiniu/android/common/AutoZone$GlobalCache;

    return-object v0
.end method

.method private zonesInfoForKey(Ljava/lang/String;)Lcom/qiniu/android/common/ZonesInfo;
    .registers 3

    if-eqz p1, :cond_16

    .line 179
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_16

    .line 183
    :cond_9
    iget-object v0, p0, Lcom/qiniu/android/common/AutoZone$GlobalCache;->cache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/qiniu/android/common/ZonesInfo;->createZonesInfo(Lorg/json/JSONObject;)Lcom/qiniu/android/common/ZonesInfo;

    move-result-object p1

    return-object p1

    :cond_16
    :goto_16
    const/4 p1, 0x0

    return-object p1
.end method
