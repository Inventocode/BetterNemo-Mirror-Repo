.class public final Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;
.super Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;
.source "TimeLessDiskCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nTimeLessDiskCache.kt\nKotlin\n*S Kotlin\n*F\n+ 1 TimeLessDiskCache.kt\ncom/yl/lib/sentry/hook/cache/TimeLessDiskCache\n*L\n1#1,55:1\n*E\n"
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

    .line 11
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->TIMELINESS_DISK:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    invoke-direct {p0, v0}, Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;-><init>(Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;
    .registers 6
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
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 17
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4b

    goto :goto_4c

    .line 19
    :cond_1d
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;

    const-string v1, ""

    invoke-virtual {v0, p1, v1}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->loadFromSp(Ljava/lang/String;Ljava/lang/String;)Lkotlin/Pair;

    move-result-object v0

    .line 20
    invoke-virtual {v0}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 21
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    goto :goto_4c

    .line 23
    :cond_3e
    invoke-virtual {v0}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4b

    goto :goto_4c

    :cond_4b
    move-object v0, p2

    :goto_4c
    if-eqz v0, :cond_6d

    .line 28
    sget-object v1, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;

    invoke-virtual {v1, v0}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->isValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_62

    .line 29
    new-instance p1, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v0, p2}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->parseValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_6c

    .line 31
    :cond_62
    invoke-virtual {v1, p1}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->clearData(Ljava/lang/String;)V

    .line 32
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_6c
    return-object p1

    .line 35
    :cond_6d
    new-instance p1, Lkotlin/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method public final put(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1e

    .line 47
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->INSTANCE:Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;

    invoke-virtual {v0, p2, p3, p4}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->buildTimeValue(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object p2

    .line 48
    iget-object p3, p0, Lcom/yl/lib/sentry/hook/cache/TimeLessDiskCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {p3, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    invoke-virtual {v0, p1, p2}, Lcom/yl/lib/sentry/hook/cache/CacheUtils$Utils;->saveToSp(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1e
    return-void
.end method
