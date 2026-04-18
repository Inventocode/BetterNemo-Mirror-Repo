.class public final Lcom/yl/lib/sentry/hook/cache/DiskCache;
.super Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;
.source "DiskCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private paramMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->PERMANENT_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    invoke-direct {p0, v0}, Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;-><init>(Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)V

    .line 12
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yl/lib/sentry/hook/cache/DiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "default"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/DiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 17
    new-instance p2, Lkotlin/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/yl/lib/sentry/hook/cache/DiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_24

    check-cast p1, Ljava/lang/String;

    invoke-direct {p2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p2

    :cond_24
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.String"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 22
    :cond_2c
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;

    invoke-virtual {v0, p1, p2}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->loadFromSp(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object p2

    if-eqz p2, :cond_4f

    .line 23
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 24
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/DiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_4b

    invoke-static {}, Lkotlin/jvm/internal/Intrinsics;->throwNpe()V

    :cond_4b
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4e
    return-object p2

    .line 22
    :cond_4f
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type kotlin.Pair<kotlin.Boolean, kotlin.String?>"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public put(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 32
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/DiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;

    invoke-virtual {v0, p1, p2}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->saveToSp(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
