.class public Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;
.super Ljava/lang/Object;
.source "DeviceComponentCache.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "Ljava/lang/String;",
        "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;",
            ">;"
        }
    .end annotation
.end field

.field private final deviceComponentReferenceProvider:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache$1;

    invoke-direct {v0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache$1;-><init>()V

    invoke-direct {p0, v0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;)V

    return-void
.end method

.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;)V
    .registers 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    .line 36
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->deviceComponentReferenceProvider:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;

    return-void
.end method

.method private evictEmptyReferences()V
    .registers 3

    .line 138
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 139
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 141
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 142
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_a

    :cond_26
    return-void
.end method


# virtual methods
.method public clear()V
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .registers 3

    .line 46
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->get(Ljava/lang/Object;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object p1

    if-eqz p1, :cond_10

    const/4 p1, 0x1

    goto :goto_11

    :cond_10
    const/4 p1, 0x0

    :goto_11
    return p1
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .registers 4

    .line 51
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    .line 53
    invoke-virtual {v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const/4 p1, 0x1

    return p1

    :cond_1e
    const/4 p1, 0x0

    return p1
.end method

.method public entrySet()Ljava/util/Set;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;",
            ">;>;"
        }
    .end annotation

    .line 63
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 65
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_42

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    .line 68
    invoke-virtual {v3}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_f

    .line 69
    new-instance v4, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v5, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->deviceComponentReferenceProvider:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    invoke-interface {v5, v3}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;->provide(Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    move-result-object v3

    invoke-direct {v4, v2, v3}, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;-><init>(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;)V

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_42
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;
    .registers 3

    .line 79
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    if-eqz p1, :cond_11

    .line 80
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    goto :goto_12

    :cond_11
    const/4 p1, 0x0

    :goto_12
    return-object p1
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->get(Ljava/lang/Object;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object p1

    return-object p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 85
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->evictEmptyReferences()V

    .line 86
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->deviceComponentReferenceProvider:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;

    invoke-interface {v1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference$Provider;->provide(Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->evictEmptyReferences()V

    return-object p2
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 19
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    invoke-virtual {p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->put(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_8
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_24

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 105
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    invoke-virtual {p0, v1, v0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->put(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    goto :goto_8

    :cond_24
    return-void
.end method

.method public remove(Ljava/lang/Object;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;
    .registers 3

    .line 111
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    .line 112
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->evictEmptyReferences()V

    if-eqz p1, :cond_14

    .line 113
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    goto :goto_15

    :cond_14
    const/4 p1, 0x0

    :goto_15
    return-object p1
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 19
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->remove(Ljava/lang/Object;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object p1

    return-object p1
.end method

.method public size()I
    .registers 2

    .line 118
    invoke-direct {p0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->evictEmptyReferences()V

    .line 119
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;",
            ">;"
        }
    .end annotation

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 127
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentCache;->cache:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_f
    :goto_f
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2b

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    .line 128
    invoke-virtual {v2}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_f

    .line 129
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_2b
    return-object v0
.end method
