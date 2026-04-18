.class public Lcom/qiniu/android/utils/ListVector;
.super Ljava/util/Vector;
.source "ListVector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/Vector<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 12
    invoke-direct {p0}, Ljava/util/Vector;-><init>()V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Ljava/util/Vector;-><init>(II)V

    return-void
.end method


# virtual methods
.method public declared-synchronized enumerateObjects(Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/qiniu/android/utils/ListVector$EnumeratorHandler<",
            "-TE;>;)V"
        }
    .end annotation

    monitor-enter p0

    if-nez p1, :cond_5

    .line 21
    monitor-exit p0

    return-void

    .line 24
    :cond_5
    :try_start_5
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 25
    iget v1, p0, Ljava/util/Vector;->elementCount:I

    const/4 v2, 0x0

    :goto_a
    if-ge v2, v1, :cond_18

    .line 27
    aget-object v3, v0, v2

    invoke-interface {p1, v3}, Lcom/qiniu/android/utils/ListVector$EnumeratorHandler;->enumerate(Ljava/lang/Object;)Z

    move-result v3
    :try_end_12
    .catchall {:try_start_5 .. :try_end_12} :catchall_1a

    if-eqz v3, :cond_15

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_a

    .line 31
    :cond_18
    :goto_18
    monitor-exit p0

    return-void

    :catchall_1a
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized subList(II)Lcom/qiniu/android/utils/ListVector;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/qiniu/android/utils/ListVector<",
            "TE;>;"
        }
    .end annotation

    const-class p1, [Ljava/lang/Object;

    monitor-enter p0

    .line 35
    :try_start_3
    new-instance p2, Lcom/qiniu/android/utils/ListVector;

    invoke-direct {p2}, Lcom/qiniu/android/utils/ListVector;-><init>()V

    .line 37
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    if-eq v0, p1, :cond_1e

    .line 38
    iget-object v0, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v1, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {v0, v1, p1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 39
    array-length p1, p1

    iput p1, p2, Ljava/util/Vector;->elementCount:I

    goto :goto_2c

    .line 41
    :cond_1e
    iget-object p1, p0, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    iget v0, p0, Ljava/util/Vector;->elementCount:I

    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p2, Ljava/util/Vector;->elementData:[Ljava/lang/Object;

    .line 42
    iget p1, p0, Ljava/util/Vector;->elementCount:I

    iput p1, p2, Ljava/util/Vector;->elementCount:I
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    .line 44
    :goto_2c
    monitor-exit p0

    return-object p2

    :catchall_2e
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic subList(II)Ljava/util/List;
    .registers 3

    .line 9
    invoke-virtual {p0, p1, p2}, Lcom/qiniu/android/utils/ListVector;->subList(II)Lcom/qiniu/android/utils/ListVector;

    move-result-object p1

    return-object p1
.end method
