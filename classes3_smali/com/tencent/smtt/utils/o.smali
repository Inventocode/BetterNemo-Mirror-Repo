.class public Lcom/tencent/smtt/utils/o;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/smtt/utils/o$b;,
        Lcom/tencent/smtt/utils/o$a;
    }
.end annotation


# instance fields
.field private a:Lcom/tencent/smtt/utils/o$b;

.field private b:Lcom/tencent/smtt/utils/o$b;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/tencent/smtt/utils/o;->a:Lcom/tencent/smtt/utils/o$b;

    iput-object v0, p0, Lcom/tencent/smtt/utils/o;->b:Lcom/tencent/smtt/utils/o$b;

    return-void
.end method

.method private a(Lcom/tencent/smtt/utils/o$b;Lcom/tencent/smtt/utils/o$b;)Z
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_60

    invoke-virtual {p1}, Lcom/tencent/smtt/utils/o$b;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_60

    if-eqz p2, :cond_60

    invoke-virtual {p2}, Lcom/tencent/smtt/utils/o$b;->a()Ljava/util/Map;

    move-result-object v1

    if-eqz v1, :cond_60

    invoke-virtual {p1}, Lcom/tencent/smtt/utils/o$b;->a()Ljava/util/Map;

    move-result-object p1

    invoke-virtual {p2}, Lcom/tencent/smtt/utils/o$b;->a()Ljava/util/Map;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_21
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/tencent/smtt/utils/o$a;

    invoke-interface {p2, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5d

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/tencent/smtt/utils/o$a;

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/o$a;->a()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/o$a;->a()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-nez v7, :cond_5d

    invoke-virtual {v1}, Lcom/tencent/smtt/utils/o$a;->b()J

    move-result-wide v3

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/o$a;->b()J

    move-result-wide v1

    cmp-long v5, v3, v1

    if-eqz v5, :cond_21

    :cond_5d
    return v0

    :cond_5e
    const/4 p1, 0x1

    return p1

    :cond_60
    return v0
.end method


# virtual methods
.method public a(Ljava/io/File;)V
    .registers 3

    new-instance v0, Lcom/tencent/smtt/utils/o$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/utils/o$b;-><init>(Lcom/tencent/smtt/utils/o;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/o;->a:Lcom/tencent/smtt/utils/o$b;

    return-void
.end method

.method public a()Z
    .registers 4

    iget-object v0, p0, Lcom/tencent/smtt/utils/o;->b:Lcom/tencent/smtt/utils/o$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_2a

    iget-object v2, p0, Lcom/tencent/smtt/utils/o;->a:Lcom/tencent/smtt/utils/o$b;

    if-nez v2, :cond_a

    goto :goto_2a

    :cond_a
    invoke-virtual {v0}, Lcom/tencent/smtt/utils/o$b;->a()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    iget-object v2, p0, Lcom/tencent/smtt/utils/o;->a:Lcom/tencent/smtt/utils/o$b;

    invoke-virtual {v2}, Lcom/tencent/smtt/utils/o$b;->a()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-ne v0, v2, :cond_2a

    iget-object v0, p0, Lcom/tencent/smtt/utils/o;->a:Lcom/tencent/smtt/utils/o$b;

    iget-object v2, p0, Lcom/tencent/smtt/utils/o;->b:Lcom/tencent/smtt/utils/o$b;

    invoke-direct {p0, v0, v2}, Lcom/tencent/smtt/utils/o;->a(Lcom/tencent/smtt/utils/o$b;Lcom/tencent/smtt/utils/o$b;)Z

    move-result v0

    if-eqz v0, :cond_2a

    const/4 v0, 0x1

    return v0

    :cond_2a
    :goto_2a
    return v1
.end method

.method public b(Ljava/io/File;)V
    .registers 3

    new-instance v0, Lcom/tencent/smtt/utils/o$b;

    invoke-direct {v0, p0, p1}, Lcom/tencent/smtt/utils/o$b;-><init>(Lcom/tencent/smtt/utils/o;Ljava/io/File;)V

    iput-object v0, p0, Lcom/tencent/smtt/utils/o;->b:Lcom/tencent/smtt/utils/o$b;

    return-void
.end method
