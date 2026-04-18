.class Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;
.super Ljava/lang/Object;
.source "CacheEntry.java"

# interfaces
.implements Ljava/util/Map$Entry;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Map$Entry<",
        "Ljava/lang/String;",
        "Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;",
        ">;"
    }
.end annotation


# instance fields
.field private final deviceComponentWeakReference:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

.field private final string:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;)V
    .registers 3

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->string:Ljava/lang/String;

    .line 14
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->deviceComponentWeakReference:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_4

    return v0

    .line 22
    :cond_4
    instance-of v1, p1, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;

    const/4 v2, 0x0

    if-nez v1, :cond_a

    return v2

    .line 26
    :cond_a
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;

    .line 28
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->string:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->deviceComponentWeakReference:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    iget-object p1, p1, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->deviceComponentWeakReference:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    invoke-virtual {v1, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_23

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    return v0
.end method

.method public bridge synthetic getKey()Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    .line 34
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->string:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->deviceComponentWeakReference:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    return-object v0
.end method

.method public bridge synthetic getValue()Ljava/lang/Object;
    .registers 2

    .line 7
    invoke-virtual {p0}, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->getValue()Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->string:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 45
    iget-object v1, p0, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->deviceComponentWeakReference:Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;

    invoke-virtual {v1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/DeviceComponentWeakReference;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public setValue(Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;
    .registers 3

    .line 51
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Not implemented"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 7
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/cache/CacheEntry;->setValue(Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;)Lcom/polidea/rxandroidble2_codemao/internal/DeviceComponent;

    move-result-object p1

    return-object p1
.end method
