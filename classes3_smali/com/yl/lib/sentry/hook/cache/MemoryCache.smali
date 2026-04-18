.class public final Lcom/yl/lib/sentry/hook/cache/MemoryCache;
.super Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;
.source "MemoryCache.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private paramMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 9
    sget-object v0, Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;->MEMORY:Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;

    invoke-direct {p0, v0}, Lcom/yl/lib/sentry/hook/cache/BasePrivacyCache;-><init>(Lcom/yl/lib/sentry/hook/cache/PrivacyCacheType;)V

    .line 13
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/yl/lib/sentry/hook/cache/MemoryCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public get(Ljava/lang/String;Ljava/lang/Object;)Lkotlin/Pair;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)",
            "Lkotlin/Pair<",
            "Ljava/lang/Boolean;",
            "TT;>;"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/MemoryCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_25

    .line 17
    new-instance v0, Lkotlin/Pair;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/yl/lib/sentry/hook/cache/MemoryCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v3, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    instance-of v3, p1, Ljava/lang/Object;

    if-nez v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move-object v1, p1

    :goto_1e
    if-eqz v1, :cond_21

    move-object p2, v1

    :cond_21
    invoke-direct {v0, v2, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2c

    .line 19
    :cond_25
    new-instance v0, Lkotlin/Pair;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v0, p1, v1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_2c
    return-object v0
.end method

.method public put(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const-string v0, "key"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/yl/lib/sentry/hook/cache/MemoryCache;->paramMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
