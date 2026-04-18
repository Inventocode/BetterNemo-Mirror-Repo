.class public Lcom/umeng/commonsdk/statistics/proto/a;
.super Ljava/lang/Object;
.source "IdJournal.java"

# interfaces
.implements Lcom/umeng/analytics/pro/at;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/a$c;,
        Lcom/umeng/commonsdk/statistics/proto/a$d;,
        Lcom/umeng/commonsdk/statistics/proto/a$a;,
        Lcom/umeng/commonsdk/statistics/proto/a$b;,
        Lcom/umeng/commonsdk/statistics/proto/a$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/at<",
        "Lcom/umeng/commonsdk/statistics/proto/a;",
        "Lcom/umeng/commonsdk/statistics/proto/a$e;",
        ">;",
        "Ljava/io/Serializable;",
        "Ljava/lang/Cloneable;"
    }
.end annotation


# static fields
.field public static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/umeng/commonsdk/statistics/proto/a$e;",
            "Lcom/umeng/analytics/pro/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:J = 0x7ebdcad047a76397L

.field private static final g:Lcom/umeng/analytics/pro/bx;

.field private static final h:Lcom/umeng/analytics/pro/bn;

.field private static final i:Lcom/umeng/analytics/pro/bn;

.field private static final j:Lcom/umeng/analytics/pro/bn;

.field private static final k:Lcom/umeng/analytics/pro/bn;

.field private static final l:Ljava/util/Map;
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

.field private static final m:I


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:J

.field private n:B

.field private o:[Lcom/umeng/commonsdk/statistics/proto/a$e;


# direct methods
.method static constructor <clinit>()V
    .registers 12

    .line 41
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    const-string v1, "IdJournal"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->g:Lcom/umeng/analytics/pro/bx;

    .line 44
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v1, "domain"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->h:Lcom/umeng/analytics/pro/bn;

    .line 46
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v4, "old_id"

    const/4 v5, 0x2

    invoke-direct {v0, v4, v2, v5}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->i:Lcom/umeng/analytics/pro/bn;

    .line 48
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v6, "new_id"

    const/4 v7, 0x3

    invoke-direct {v0, v6, v2, v7}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->j:Lcom/umeng/analytics/pro/bn;

    .line 50
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v7, "ts"

    const/16 v8, 0xa

    const/4 v9, 0x4

    invoke-direct {v0, v7, v8, v9}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->k:Lcom/umeng/analytics/pro/bn;

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

    .line 57
    const-class v9, Lcom/umeng/analytics/pro/cc;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/a$b;

    const/4 v11, 0x0

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/a$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    const-class v9, Lcom/umeng/analytics/pro/cd;

    new-instance v10, Lcom/umeng/commonsdk/statistics/proto/a$d;

    invoke-direct {v10, v11}, Lcom/umeng/commonsdk/statistics/proto/a$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/a$1;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    new-instance v0, Ljava/util/EnumMap;

    const-class v9, Lcom/umeng/commonsdk/statistics/proto/a$e;

    invoke-direct {v0, v9}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 146
    sget-object v9, Lcom/umeng/commonsdk/statistics/proto/a$e;->a:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v10, Lcom/umeng/analytics/pro/bf;

    new-instance v11, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v11, v2}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v10, v1, v3, v11}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v9, Lcom/umeng/analytics/pro/bf;

    new-instance v10, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v10, v2}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v9, v4, v5, v10}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->c:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v4, Lcom/umeng/analytics/pro/bf;

    new-instance v5, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v5, v2}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v4, v6, v3, v5}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/a$e;->d:Lcom/umeng/commonsdk/statistics/proto/a$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v4, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v4, v8}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v2, v7, v3, v4}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 161
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->e:Ljava/util/Map;

    .line 162
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 139
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->o:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/a;)V
    .registers 5

    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 138
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 139
    sget-object v2, Lcom/umeng/commonsdk/statistics/proto/a$e;->b:Lcom/umeng/commonsdk/statistics/proto/a$e;

    aput-object v2, v1, v0

    iput-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->o:[Lcom/umeng/commonsdk/statistics/proto/a$e;

    .line 180
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 181
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 182
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 184
    :cond_1d
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 185
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 187
    :cond_27
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/a;->j()Z

    move-result v0

    if-eqz v0, :cond_31

    .line 188
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 190
    :cond_31
    iget-wide v0, p1, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 5

    .line 169
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>()V

    .line 170
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 171
    iput-object p2, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    .line 172
    iput-wide p3, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    const/4 p1, 0x1

    .line 173
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

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

    const/4 v0, 0x0

    .line 396
    :try_start_1
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    .line 397
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->read(Lcom/umeng/analytics/pro/bs;)V
    :try_end_10
    .catch Lcom/umeng/analytics/pro/az; {:try_start_1 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 400
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

    .line 385
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->write(Lcom/umeng/analytics/pro/bs;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/az; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 388
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic o()Lcom/umeng/analytics/pro/bx;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->g:Lcom/umeng/analytics/pro/bx;

    return-object v0
.end method

.method static synthetic p()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->h:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic q()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->i:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic r()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->j:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic s()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 37
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->k:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method


# virtual methods
.method public a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;
    .registers 2

    .line 314
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/a$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object p1

    return-object p1
.end method

.method public a()Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    .line 194
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/a;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/a;-><init>(Lcom/umeng/commonsdk/statistics/proto/a;)V

    return-object v0
.end method

.method public a(J)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 3

    .line 292
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    const/4 p1, 0x1

    .line 293
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    .line 211
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public b(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 207
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 256
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public c(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/a;
    .registers 2

    .line 265
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-object p0
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 283
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public clear()V
    .registers 3

    const/4 v0, 0x0

    .line 199
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    .line 200
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    .line 201
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    const/4 v0, 0x0

    .line 202
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/a;->d(Z)V

    const-wide/16 v0, 0x0

    .line 203
    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-void
.end method

.method public d(Z)V
    .registers 4

    .line 310
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/aq;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    return-void
.end method

.method public d()Z
    .registers 2

    .line 224
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public synthetic deepCopy()Lcom/umeng/analytics/pro/at;
    .registers 2

    .line 37
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->a()Lcom/umeng/commonsdk/statistics/proto/a;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    .line 234
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public f()V
    .registers 2

    const/4 v0, 0x0

    .line 243
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/ba;
    .registers 2

    .line 37
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/a;->a(I)Lcom/umeng/commonsdk/statistics/proto/a$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .registers 2

    .line 251
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public h()Ljava/lang/String;
    .registers 2

    .line 261
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public i()V
    .registers 2

    const/4 v0, 0x0

    .line 270
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    return-void
.end method

.method public j()Z
    .registers 2

    .line 278
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public k()J
    .registers 3

    .line 288
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    return-wide v0
.end method

.method public l()V
    .registers 3

    .line 298
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    return-void
.end method

.method public m()Z
    .registers 3

    .line 306
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->n:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->a(BI)Z

    move-result v0

    return v0
.end method

.method public n()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_24

    .line 374
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-eqz v0, :cond_9

    return-void

    .line 375
    :cond_9
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'new_id\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bt;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :cond_24
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'domain\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 372
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->toString()Ljava/lang/String;

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

    .line 319
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

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

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdJournal("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "domain:"

    .line 332
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->a:Ljava/lang/String;

    const-string v2, "null"

    if-nez v1, :cond_16

    .line 334
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 336
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    :goto_19
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/a;->g()Z

    move-result v1

    const-string v3, ", "

    if-eqz v1, :cond_34

    .line 341
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "old_id:"

    .line 342
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->b:Ljava/lang/String;

    if-nez v1, :cond_31

    .line 344
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_34

    .line 346
    :cond_31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    :cond_34
    :goto_34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "new_id:"

    .line 352
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->c:Ljava/lang/String;

    if-nez v1, :cond_44

    .line 354
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_47

    .line 356
    :cond_44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    :goto_47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "ts:"

    .line 361
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    iget-wide v1, p0, Lcom/umeng/commonsdk/statistics/proto/a;->d:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
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

    .line 324
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/a;->l:Ljava/util/Map;

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
