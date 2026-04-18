.class public Lcom/umeng/commonsdk/statistics/proto/c;
.super Ljava/lang/Object;
.source "IdTracking.java"

# interfaces
.implements Lcom/umeng/analytics/pro/at;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/c$c;,
        Lcom/umeng/commonsdk/statistics/proto/c$d;,
        Lcom/umeng/commonsdk/statistics/proto/c$a;,
        Lcom/umeng/commonsdk/statistics/proto/c$b;,
        Lcom/umeng/commonsdk/statistics/proto/c$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/at<",
        "Lcom/umeng/commonsdk/statistics/proto/c;",
        "Lcom/umeng/commonsdk/statistics/proto/c$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/c$e;",
            "Lcom/umeng/analytics/pro/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x4ffe4305ce3009afL

.field private static final f:Lcom/umeng/analytics/pro/bx;

.field private static final g:Lcom/umeng/analytics/pro/bn;

.field private static final h:Lcom/umeng/analytics/pro/bn;

.field private static final i:Lcom/umeng/analytics/pro/bn;

.field private static final j:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Lcom/umeng/analytics/pro/ca;",
            ">;",
            "Lcom/umeng/analytics/pro/cb;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;

.field private k:[Lcom/umeng/commonsdk/statistics/proto/c$e;


# direct methods
.method static constructor <clinit>()V
    .registers 16

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    const-string v1, "IdTracking"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->f:Lcom/umeng/analytics/pro/bx;

    .line 50
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v1, "snapshots"

    const/16 v2, 0xd

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->g:Lcom/umeng/analytics/pro/bn;

    .line 52
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v4, "journals"

    const/16 v5, 0xf

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->h:Lcom/umeng/analytics/pro/bn;

    .line 54
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v7, "checksum"

    const/16 v8, 0xb

    const/4 v9, 0x3

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->i:Lcom/umeng/analytics/pro/bn;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

    .line 61
    const-class v9, Lcom/umeng/analytics/pro/cc;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/c$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/c$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    const-class v9, Lcom/umeng/analytics/pro/cd;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/c$d;

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/c$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/c$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    new-instance v0, Ljava/util/EnumMap;

    const-class v9, Lcom/umeng/commonsdk/statistics/proto/c$e;

    invoke-direct {v0, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 145
    sget-object v9, Lcom/umeng/commonsdk/statistics/proto/c$e;->a:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v10, Lcom/umeng/analytics/pro/bf;

    new-instance v11, Lcom/umeng/analytics/pro/bi;

    new-instance v12, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v12, v8}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    new-instance v13, Lcom/umeng/analytics/pro/bk;

    const-class v14, Lcom/umeng/commonsdk/statistics/proto/b;

    const/16 v15, 0xc

    invoke-direct {v13, v15, v14}, Lcom/umeng/analytics/pro/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v11, v2, v12, v13}, Lcom/umeng/analytics/pro/bi;-><init>(BLcom/umeng/analytics/pro/bg;Lcom/umeng/analytics/pro/bg;)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v3, Lcom/umeng/analytics/pro/bh;

    new-instance v9, Lcom/umeng/analytics/pro/bk;

    const-class v10, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v9, v15, v10}, Lcom/umeng/analytics/pro/bk;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v5, v9}, Lcom/umeng/analytics/pro/bh;-><init>(BLcom/umeng/analytics/pro/bg;)V

    invoke-direct {v2, v4, v6, v3}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v3, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v3, v8}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v2, v7, v6, v3}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->d:Ljava/util/Map;

    .line 164
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/c$e;

    .line 138
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->k:[Lcom/umeng/commonsdk/statistics/proto/c$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/c;)V
    .registers 7

    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/umeng/commonsdk/statistics/proto/c$e;

    .line 138
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->b:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/c$e;->c:Lcom/umeng/commonsdk/statistics/proto/c$e;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->k:[Lcom/umeng/commonsdk/statistics/proto/c$e;

    .line 179
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/c;->e()Z

    move-result v0

    if-eqz v0, :cond_4a

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 181
    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_27
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_48

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 183
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 184
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/b;

    .line 188
    new-instance v4, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v4, v2}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>(Lcom/umeng/commonsdk/statistics/proto/b;)V

    .line 190
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_27

    .line 192
    :cond_48
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 194
    :cond_4a
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v0

    if-eqz v0, :cond_72

    .line 195
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 196
    iget-object v1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_70

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/a;

    .line 197
    new-instance v3, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v3, v2}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>(Lcom/umeng/commonsdk/statistics/proto/a;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_5b

    .line 199
    :cond_70
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 201
    :cond_72
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v0

    if-eqz v0, :cond_7c

    .line 202
    iget-object p1, p1, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    :cond_7c
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;)V"
        }
    .end annotation

    .line 171
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>()V

    .line 172
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-void
.end method

.method private a(Ljava/io/ObjectInputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 396
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->read(Lcom/umeng/analytics/pro/bs;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/az; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 399
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Ljava/io/ObjectOutputStream;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 387
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/c;->write(Lcom/umeng/analytics/pro/bs;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/az; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 390
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic o()Lcom/umeng/analytics/pro/bx;
    .registers 1

    .line 43
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->f:Lcom/umeng/analytics/pro/bx;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 43
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->g:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 43
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->h:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 43
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->i:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/commonsdk/statistics/proto/c$e;
    .registers 2

    .line 325
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/c$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/c$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2

    .line 207
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/c;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/c;-><init>(Lcom/umeng/commonsdk/statistics/proto/c;)V

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2

    .line 302
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-object p0
.end method

.method public a(Ljava/util/List;)Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/c;"
        }
    .end annotation

    .line 275
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    return-object p0
.end method

.method public a(Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/c;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/c;"
        }
    .end annotation

    .line 233
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-object p0
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 3

    .line 264
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v0, :cond_b

    .line 265
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 267
    :cond_b
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 4

    .line 222
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-nez v0, :cond_b

    .line 223
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 225
    :cond_b
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    :cond_5
    return-void
.end method

.method public b()I
    .registers 2

    .line 218
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public b(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 293
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    :cond_5
    return-void
.end method

.method public c()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/proto/b;",
            ">;"
        }
    .end annotation

    .line 229
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-object v0
.end method

.method public c(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 320
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public clear()V
    .registers 2

    const/4 v0, 0x0

    .line 212
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    .line 213
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    .line 214
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-void
.end method

.method public d()V
    .registers 2

    const/4 v0, 0x0

    .line 238
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    return-void
.end method

.method public synthetic deepCopy()Lcom/umeng/analytics/pro/at;
    .registers 2

    .line 43
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->a()Lcom/umeng/commonsdk/statistics/proto/c;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .registers 2

    .line 246
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public f()I
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_a
    return v0
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/ba;
    .registers 2

    .line 43
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/c;->a(I)Lcom/umeng/commonsdk/statistics/proto/c$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Ljava/util/Iterator;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;"
        }
    .end annotation

    .line 260
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_a

    :cond_6
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_a
    return-object v0
.end method

.method public h()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/umeng/commonsdk/statistics/proto/a;",
            ">;"
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    .line 280
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    return-void
.end method

.method public j()Z
    .registers 2

    .line 288
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()Ljava/lang/String;
    .registers 2

    .line 298
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-object v0
.end method

.method public l()V
    .registers 2

    const/4 v0, 0x0

    .line 307
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    return-void
.end method

.method public m()Z
    .registers 2

    .line 315
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public n()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    if-eqz v0, :cond_5

    return-void

    .line 379
    :cond_5
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'snapshots\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read(Lcom/umeng/analytics/pro/bs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 330
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cb;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cb;->b()Lcom/umeng/analytics/pro/ca;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/ca;->b(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 340
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdTracking("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "snapshots:"

    .line 343
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->a:Ljava/util/Map;

    const-string v2, "null"

    if-nez v1, :cond_16

    .line 345
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 347
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 350
    :goto_19
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->j()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_34

    .line 352
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "journals:"

    .line 353
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->b:Ljava/util/List;

    if-nez v1, :cond_31

    .line 355
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 357
    :cond_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    :cond_34
    :goto_34
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/c;->m()Z

    move-result v1

    if-eqz v1, :cond_4d

    .line 363
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "checksum:"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/c;->c:Ljava/lang/String;

    if-nez v1, :cond_4a

    .line 366
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_4d

    .line 368
    :cond_4a
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4d
    :goto_4d
    const-string v1, ")"

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(Lcom/umeng/analytics/pro/bs;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 335
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/c;->j:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/umeng/analytics/pro/bs;->D()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/analytics/pro/cb;

    invoke-interface {v0}, Lcom/umeng/analytics/pro/cb;->b()Lcom/umeng/analytics/pro/ca;

    move-result-object v0

    invoke-interface {v0, p1, p0}, Lcom/umeng/analytics/pro/ca;->a(Lcom/umeng/analytics/pro/bs;Lcom/umeng/analytics/pro/at;)V

    return-void
.end method
