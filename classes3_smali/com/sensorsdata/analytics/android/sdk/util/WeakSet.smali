.class public Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;
.super Ljava/lang/Object;
.source "WeakSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$NonEmptyIterator;,
        Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$EmptyIterator;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Set<",
        "TT;>;"
    }
.end annotation


# static fields
.field private static final PRESENT:Ljava/lang/Object;


# instance fields
.field private transient map:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap<",
            "TT;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 28
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->PRESENT:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    if-eqz p1, :cond_1b

    .line 102
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    if-nez v0, :cond_d

    .line 103
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    .line 105
    :cond_d
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    sget-object v1, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->PRESENT:Ljava/lang/Object;

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_19

    const/4 p1, 0x1

    goto :goto_1a

    :cond_19
    const/4 p1, 0x0

    :goto_1a
    return p1

    .line 100
    :cond_1b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The argument t can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public addAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 120
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method addAll not supported now"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public clear()V
    .registers 2

    .line 132
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_7

    .line 133
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->clear()V

    :cond_7
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .registers 3

    .line 74
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_10

    if-nez p1, :cond_9

    goto :goto_10

    .line 77
    :cond_9
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_10
    :goto_10
    const/4 p1, 0x0

    return p1
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 116
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method containsAll not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public isEmpty()Z
    .registers 2

    .line 70
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->size()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 83
    invoke-static {}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$EmptyIterator;->access$000()Lcom/sensorsdata/analytics/android/sdk/util/WeakSet$EmptyIterator;

    move-result-object v0

    return-object v0

    .line 85
    :cond_b
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .registers 3

    .line 109
    invoke-virtual {p0}, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_15

    if-eqz p1, :cond_15

    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->PRESENT:Ljava/lang/Object;

    if-eq p1, v0, :cond_13

    goto :goto_15

    :cond_13
    const/4 p1, 0x1

    return p1

    :cond_15
    :goto_15
    const/4 p1, 0x0

    return p1
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 128
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method removeAll not supported now"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 124
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method retainAll not supported now"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public size()I
    .registers 2

    .line 63
    iget-object v0, p0, Lcom/sensorsdata/analytics/android/sdk/util/WeakSet;->map:Ljava/util/WeakHashMap;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    return v0

    .line 66
    :cond_6
    invoke-virtual {v0}, Ljava/util/WeakHashMap;->size()I

    move-result v0

    return v0
.end method

.method public toArray()[Ljava/lang/Object;
    .registers 3

    .line 90
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "method toArray() not supported"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T1:",
            "Ljava/lang/Object;",
            ">([TT1;)[TT1;"
        }
    .end annotation

    .line 95
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string v0, "method toArray(T[] a) not supported"

    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
