.class public Lcom/umeng/commonsdk/statistics/proto/b;
.super Ljava/lang/Object;
.source "IdSnapshot.java"

# interfaces
.implements Lcom/umeng/analytics/pro/at;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/proto/b$c;,
        Lcom/umeng/commonsdk/statistics/proto/b$d;,
        Lcom/umeng/commonsdk/statistics/proto/b$a;,
        Lcom/umeng/commonsdk/statistics/proto/b$b;,
        Lcom/umeng/commonsdk/statistics/proto/b$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/umeng/analytics/pro/at<",
        "Lcom/umeng/commonsdk/statistics/proto/b;",
        "Lcom/umeng/commonsdk/statistics/proto/b$e;",
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
            "Lcom/umeng/commonsdk/statistics/proto/b$e;",
            "Lcom/umeng/analytics/pro/bf;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:J = -0x5a285711b2a57f6bL

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

.field private static final k:I = 0x0

.field private static final l:I = 0x1


# instance fields
.field public a:Ljava/lang/String;

.field public b:J

.field public c:I

.field private m:B


# direct methods
.method static constructor <clinit>()V
    .registers 11

    .line 40
    new-instance v0, Lcom/umeng/analytics/pro/bx;

    const-string v1, "IdSnapshot"

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bx;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->f:Lcom/umeng/analytics/pro/bx;

    .line 43
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v1, "identity"

    const/16 v2, 0xb

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/analytics/pro/bn;

    .line 45
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v4, "ts"

    const/16 v5, 0xa

    const/4 v6, 0x2

    invoke-direct {v0, v4, v5, v6}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->h:Lcom/umeng/analytics/pro/bn;

    .line 47
    new-instance v0, Lcom/umeng/analytics/pro/bn;

    const-string v6, "version"

    const/16 v7, 0x8

    const/4 v8, 0x3

    invoke-direct {v0, v6, v7, v8}, Lcom/umeng/analytics/pro/bn;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->i:Lcom/umeng/analytics/pro/bn;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

    .line 54
    const-class v8, Lcom/umeng/analytics/pro/cc;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/b$b;

    const/4 v10, 0x0

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/b$b;-><init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    const-class v8, Lcom/umeng/analytics/pro/cd;

    new-instance v9, Lcom/umeng/commonsdk/statistics/proto/b$d;

    invoke-direct {v9, v10}, Lcom/umeng/commonsdk/statistics/proto/b$d;-><init>(Lcom/umeng/commonsdk/statistics/proto/b$1;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    new-instance v0, Ljava/util/EnumMap;

    const-class v8, Lcom/umeng/commonsdk/statistics/proto/b$e;

    invoke-direct {v0, v8}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    .line 139
    sget-object v8, Lcom/umeng/commonsdk/statistics/proto/b$e;->a:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v9, Lcom/umeng/analytics/pro/bf;

    new-instance v10, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v10, v2}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v9, v1, v3, v10}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->b:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v8, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v8, v5}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v2, v4, v3, v8}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    sget-object v1, Lcom/umeng/commonsdk/statistics/proto/b$e;->c:Lcom/umeng/commonsdk/statistics/proto/b$e;

    new-instance v2, Lcom/umeng/analytics/pro/bf;

    new-instance v4, Lcom/umeng/analytics/pro/bg;

    invoke-direct {v4, v7}, Lcom/umeng/analytics/pro/bg;-><init>(B)V

    invoke-direct {v2, v6, v3, v4}, Lcom/umeng/analytics/pro/bf;-><init>(Ljava/lang/String;BLcom/umeng/analytics/pro/bg;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->d:Ljava/util/Map;

    .line 151
    const-class v1, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-static {v1, v0}, Lcom/umeng/analytics/pro/bf;->a(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public constructor <init>(Lcom/umeng/commonsdk/statistics/proto/b;)V
    .registers 4

    .line 169
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 133
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 170
    iget-byte v0, p1, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 171
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/b;->d()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 172
    iget-object v0, p1, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 174
    :cond_14
    iget-wide v0, p1, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    iput-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 175
    iget p1, p1, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .registers 5

    .line 158
    invoke-direct {p0}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>()V

    .line 159
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    .line 160
    iput-wide p2, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    const/4 p1, 0x1

    .line 161
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    .line 162
    iput p4, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    .line 163
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

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

    .line 336
    :try_start_1
    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    .line 337
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->read(Lcom/umeng/analytics/pro/bs;)V
    :try_end_10
    .catch Lcom/umeng/analytics/pro/az; {:try_start_1 .. :try_end_10} :catch_11

    return-void

    :catch_11
    move-exception p1

    .line 340
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

    .line 325
    :try_start_0
    new-instance v0, Lcom/umeng/analytics/pro/bm;

    new-instance v1, Lcom/umeng/analytics/pro/ce;

    invoke-direct {v1, p1}, Lcom/umeng/analytics/pro/ce;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Lcom/umeng/analytics/pro/bm;-><init>(Lcom/umeng/analytics/pro/cg;)V

    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->write(Lcom/umeng/analytics/pro/bs;)V
    :try_end_d
    .catch Lcom/umeng/analytics/pro/az; {:try_start_0 .. :try_end_d} :catch_e

    return-void

    :catch_e
    move-exception p1

    .line 328
    new-instance v0, Ljava/io/IOException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic l()Lcom/umeng/analytics/pro/bx;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->f:Lcom/umeng/analytics/pro/bx;

    return-object v0
.end method

.method static synthetic m()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->g:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic n()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->h:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method

.method static synthetic o()Lcom/umeng/analytics/pro/bn;
    .registers 1

    .line 36
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->i:Lcom/umeng/analytics/pro/bn;

    return-object v0
.end method


# virtual methods
.method public a()Lcom/umeng/commonsdk/statistics/proto/b;
    .registers 2

    .line 179
    new-instance v0, Lcom/umeng/commonsdk/statistics/proto/b;

    invoke-direct {v0, p0}, Lcom/umeng/commonsdk/statistics/proto/b;-><init>(Lcom/umeng/commonsdk/statistics/proto/b;)V

    return-object v0
.end method

.method public a(I)Lcom/umeng/commonsdk/statistics/proto/b;
    .registers 2

    .line 249
    iput p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    const/4 p1, 0x1

    .line 250
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    return-object p0
.end method

.method public a(J)Lcom/umeng/commonsdk/statistics/proto/b;
    .registers 3

    .line 223
    iput-wide p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    const/4 p1, 0x1

    .line 224
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/b;
    .registers 2

    .line 196
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    return-object p0
.end method

.method public a(Z)V
    .registers 2

    if-nez p1, :cond_5

    const/4 p1, 0x0

    .line 214
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    :cond_5
    return-void
.end method

.method public b(I)Lcom/umeng/commonsdk/statistics/proto/b$e;
    .registers 2

    .line 271
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/proto/b$e;->a(I)Lcom/umeng/commonsdk/statistics/proto/b$e;

    move-result-object p1

    return-object p1
.end method

.method public b()Ljava/lang/String;
    .registers 2

    .line 192
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    return-object v0
.end method

.method public b(Z)V
    .registers 4

    .line 241
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/aq;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public c()V
    .registers 2

    const/4 v0, 0x0

    .line 201
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .registers 4

    .line 267
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Lcom/umeng/analytics/pro/aq;->a(BIZ)B

    move-result p1

    iput-byte p1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public clear()V
    .registers 4

    const/4 v0, 0x0

    .line 184
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    const/4 v0, 0x0

    .line 185
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->b(Z)V

    const-wide/16 v1, 0x0

    .line 186
    iput-wide v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    .line 187
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/proto/b;->c(Z)V

    .line 188
    iput v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    return-void
.end method

.method public d()Z
    .registers 2

    .line 209
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

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

    .line 36
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/b;->a()Lcom/umeng/commonsdk/statistics/proto/b;

    move-result-object v0

    return-object v0
.end method

.method public e()J
    .registers 3

    .line 219
    iget-wide v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    return-wide v0
.end method

.method public f()V
    .registers 3

    .line 229
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public synthetic fieldForId(I)Lcom/umeng/analytics/pro/ba;
    .registers 2

    .line 36
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/proto/b;->b(I)Lcom/umeng/commonsdk/statistics/proto/b$e;

    move-result-object p1

    return-object p1
.end method

.method public g()Z
    .registers 3

    .line 237
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->a(BI)Z

    move-result v0

    return v0
.end method

.method public h()I
    .registers 2

    .line 245
    iget v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    return v0
.end method

.method public i()V
    .registers 3

    .line 255
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->b(BI)B

    move-result v0

    iput-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    return-void
.end method

.method public j()Z
    .registers 3

    .line 263
    iget-byte v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->m:B

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/umeng/analytics/pro/aq;->a(BI)Z

    move-result v0

    return v0
.end method

.method public k()V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/umeng/analytics/pro/az;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-eqz v0, :cond_5

    return-void

    .line 313
    :cond_5
    new-instance v0, Lcom/umeng/analytics/pro/bt;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Required field \'identity\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 314
    invoke-virtual {p0}, Lcom/umeng/commonsdk/statistics/proto/b;->toString()Ljava/lang/String;

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

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

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

    .line 286
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "IdSnapshot("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v1, "identity:"

    .line 289
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->a:Ljava/lang/String;

    if-nez v1, :cond_16

    const-string v1, "null"

    .line 291
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_19

    .line 293
    :cond_16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_19
    const-string v1, ", "

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "ts:"

    .line 298
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    iget-wide v2, p0, Lcom/umeng/commonsdk/statistics/proto/b;->b:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "version:"

    .line 303
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    iget v1, p0, Lcom/umeng/commonsdk/statistics/proto/b;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    .line 306
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 307
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

    .line 281
    sget-object v0, Lcom/umeng/commonsdk/statistics/proto/b;->j:Ljava/util/Map;

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
