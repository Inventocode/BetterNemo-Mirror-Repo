.class public Lcom/sdk/b/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field public b:I

.field public c:I

.field public d:Lcom/sdk/b/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/b/b<",
            "TK;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(I)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lez p1, :cond_1a

    iput p1, p0, Lcom/sdk/b/c;->c:I

    new-instance p1, Ljava/util/LinkedHashMap;

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/high16 v2, 0x3f400000  # 0.75f

    invoke-direct {p1, v1, v2, v0}, Ljava/util/LinkedHashMap;-><init>(IFZ)V

    iput-object p1, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    new-instance p1, Lcom/sdk/b/b;

    invoke-direct {p1, v1, v2}, Lcom/sdk/b/b;-><init>(IF)V

    iput-object p1, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    return-void

    :cond_1a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "maxSize <= 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)I"
        }
    .end annotation

    check-cast p1, Ljava/lang/String;

    check-cast p2, Ljava/lang/String;

    const/4 p1, 0x0

    if-nez p2, :cond_9

    const/4 p2, 0x0

    goto :goto_d

    :cond_9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    :goto_d
    if-gtz p2, :cond_41

    iput p1, p0, Lcom/sdk/b/c;->b:I

    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_41

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    iget v2, p0, Lcom/sdk/b/c;->b:I

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v3, Ljava/lang/String;

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_39

    const/4 v1, 0x0

    goto :goto_3d

    :cond_39
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    :goto_3d
    add-int/2addr v2, v1

    iput v2, p0, Lcom/sdk/b/c;->b:I

    goto :goto_1b

    :cond_41
    return p2
.end method

.method public final a(I)V
    .registers 5

    :goto_0
    monitor-enter p0

    :try_start_1
    iget v0, p0, Lcom/sdk/b/c;->b:I

    if-le v0, p1, :cond_3b

    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_3b

    :cond_e
    iget-object v0, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v2, p0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v2, v1}, Lcom/sdk/b/b;->a(Ljava/lang/Object;)Ljava/lang/Long;

    iget v2, p0, Lcom/sdk/b/c;->b:I

    invoke-virtual {p0, v1, v0}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    sub-int/2addr v2, v0

    iput v2, p0, Lcom/sdk/b/c;->b:I

    monitor-exit p0

    goto :goto_0

    :cond_3b
    :goto_3b
    monitor-exit p0

    return-void

    :catchall_3d
    move-exception p1

    monitor-exit p0
    :try_end_3f
    .catchall {:try_start_1 .. :try_end_3f} :catchall_3d

    throw p1
.end method
