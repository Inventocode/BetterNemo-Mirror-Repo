.class public final Lcom/tencent/bugly/proguard/w;
.super Ljava/lang/Object;
.source "BUGLY"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private a:I

.field private b:I

.field private final c:Landroid/content/Context;

.field private final d:I

.field private final e:[B

.field private final f:Lcom/tencent/bugly/crashreport/common/info/a;

.field private final g:Lcom/tencent/bugly/crashreport/common/strategy/a;

.field private final h:Lcom/tencent/bugly/proguard/s;

.field private final i:Lcom/tencent/bugly/proguard/v;

.field private final j:I

.field private final k:Lcom/tencent/bugly/proguard/u;

.field private final l:Lcom/tencent/bugly/proguard/u;

.field private m:Ljava/lang/String;

.field private final n:Ljava/lang/String;

.field private final o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private p:I

.field private q:J

.field private r:J

.field private s:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;IIZLjava/util/Map;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II[B",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/tencent/bugly/proguard/u;",
            "IIZ",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 43
    iput v0, p0, Lcom/tencent/bugly/proguard/w;->a:I

    const/16 v0, 0x7530

    .line 45
    iput v0, p0, Lcom/tencent/bugly/proguard/w;->b:I

    const/4 v0, 0x0

    .line 58
    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->m:Ljava/lang/String;

    const/4 v1, 0x0

    .line 62
    iput v1, p0, Lcom/tencent/bugly/proguard/w;->p:I

    const-wide/16 v2, 0x0

    .line 63
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/w;->q:J

    .line 64
    iput-wide v2, p0, Lcom/tencent/bugly/proguard/w;->r:J

    .line 66
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    .line 105
    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->c:Landroid/content/Context;

    .line 106
    invoke-static {p1}, Lcom/tencent/bugly/crashreport/common/info/a;->a(Landroid/content/Context;)Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    iput-object v1, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    .line 107
    iput-object p4, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    .line 108
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a()Lcom/tencent/bugly/crashreport/common/strategy/a;

    move-result-object p4

    iput-object p4, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    .line 109
    invoke-static {p1}, Lcom/tencent/bugly/proguard/s;->a(Landroid/content/Context;)Lcom/tencent/bugly/proguard/s;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    .line 110
    invoke-static {}, Lcom/tencent/bugly/proguard/v;->a()Lcom/tencent/bugly/proguard/v;

    move-result-object p1

    iput-object p1, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    .line 111
    iput p2, p0, Lcom/tencent/bugly/proguard/w;->j:I

    .line 112
    iput-object p5, p0, Lcom/tencent/bugly/proguard/w;->m:Ljava/lang/String;

    .line 113
    iput-object p6, p0, Lcom/tencent/bugly/proguard/w;->n:Ljava/lang/String;

    .line 114
    iput-object p7, p0, Lcom/tencent/bugly/proguard/w;->k:Lcom/tencent/bugly/proguard/u;

    .line 115
    iput-object v0, p0, Lcom/tencent/bugly/proguard/w;->l:Lcom/tencent/bugly/proguard/u;

    .line 116
    iput p3, p0, Lcom/tencent/bugly/proguard/w;->d:I

    if-lez p8, :cond_44

    .line 118
    iput p8, p0, Lcom/tencent/bugly/proguard/w;->a:I

    :cond_44
    if-lez p9, :cond_48

    .line 121
    iput p9, p0, Lcom/tencent/bugly/proguard/w;->b:I

    .line 124
    :cond_48
    iput-boolean p10, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    .line 125
    iput-object p11, p0, Lcom/tencent/bugly/proguard/w;->o:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;ZZ)V
    .registers 22

    const/4 v8, 0x2

    const/16 v9, 0x7530

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v10, p9

    .line 84
    invoke-direct/range {v0 .. v11}, Lcom/tencent/bugly/proguard/w;-><init>(Landroid/content/Context;II[BLjava/lang/String;Ljava/lang/String;Lcom/tencent/bugly/proguard/u;IIZLjava/util/Map;)V

    return-void
.end method

.method private a(Ljava/util/Map;)Landroid/util/Pair;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const-string v0, "status"

    const/4 v1, 0x1

    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz p1, :cond_54

    .line 335
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    if-nez v4, :cond_11

    goto :goto_54

    :cond_11
    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    const-string v5, "[Upload] Headers does not contain %s"

    if-nez v4, :cond_21

    new-array v4, v1, [Ljava/lang/Object;

    aput-object v0, v4, v3

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_21
    const-string v4, "Bugly-Version"

    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_31

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v4, v6, v3

    invoke-static {v5, v6}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_31
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "bugly"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_49

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "[Upload] Bugly version is not valid: %s"

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_5b

    :cond_49
    new-array v5, v1, [Ljava/lang/Object;

    aput-object v4, v5, v3

    const-string v4, "[Upload] Bugly version from headers is: %s"

    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v4, 0x1

    goto :goto_5c

    :cond_54
    :goto_54
    new-array v4, v3, [Ljava/lang/Object;

    const-string v5, "[Upload] Headers is empty."

    invoke-static {v5, v4}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    :goto_5b
    const/4 v4, 0x0

    :goto_5c
    const-string v5, "[Upload] Failed to upload(%d): %s"

    const/4 v6, 0x2

    if-nez v4, :cond_c6

    new-array v0, v6, [Ljava/lang/Object;

    .line 338
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    const-string v4, "[Upload] Headers from server is not valid, just try again (pid=%d | tid=%d)."

    .line 336
    invoke-static {v4, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v3

    const-string v2, "[Upload] Failed to upload for no status header."

    aput-object v2, v0, v1

    .line 339
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    if-eqz p1, :cond_b7

    .line 342
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_91
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    new-array v4, v6, [Ljava/lang/Object;

    .line 343
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    aput-object v5, v4, v3

    .line 344
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    aput-object v0, v4, v1

    const-string v0, "[key]: %s, [value]: %s"

    .line 343
    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v4, v3, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_91

    :cond_b7
    new-array p1, v3, [Ljava/lang/Object;

    .line 347
    invoke-static {v2, p1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 348
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_c6
    const/4 v4, -0x1

    .line 354
    :try_start_c7
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 353
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    const-string p1, "[Upload] Status from server is %d (pid=%d | tid=%d)."

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    .line 356
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v3

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v1

    .line 357
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v0, v6

    .line 355
    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_f3
    .catchall {:try_start_c7 .. :try_end_f3} :catchall_117

    if-eqz v4, :cond_10f

    const/4 p1, 0x0

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "status of server is "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v3, v1, v0}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    .line 369
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 371
    :cond_10f
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 360
    :catchall_117
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[Upload] Failed to upload for format of status header is invalid: "

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 362
    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array v0, v6, [Ljava/lang/Object;

    aput-object v2, v0, v3

    aput-object p1, v0, v1

    .line 360
    invoke-static {v5, v0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 363
    new-instance p1, Landroid/util/Pair;

    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private a([BLjava/util/Map;)Landroid/util/Pair;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_20

    new-array p1, v0, [Ljava/lang/Object;

    .line 305
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, p1, v1

    const-string p2, "Failed to upload for no response!"

    aput-object p2, p1, v2

    const-string p2, "[Upload] Failed to upload(%d): %s"

    invoke-static {p2, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 307
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    :cond_20
    new-array v3, v2, [Ljava/lang/Object;

    .line 309
    array-length v4, p1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    const-string v4, "[Upload] Received %d bytes"

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 311
    array-length p1, p1

    if-nez p1, :cond_69

    const/4 p1, 0x0

    const-string v3, "response data from server is empty"

    .line 312
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    if-eqz p2, :cond_61

    .line 316
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_41
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_61

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/Map$Entry;

    new-array v3, v0, [Ljava/lang/Object;

    .line 318
    invoke-interface {p2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-interface {p2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p2

    aput-object p2, v3, v2

    const-string p2, "[Upload] HTTP headers from server: key = %s, value = %s"

    .line 317
    invoke-static {p2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_41

    .line 322
    :cond_61
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1

    .line 324
    :cond_69
    new-instance p1, Landroid/util/Pair;

    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {p1, p2, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method

.method private static a(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    .line 441
    invoke-static {p0}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    return-object p0

    :cond_7
    :try_start_7
    const-string v0, "%s?aid=%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    .line 445
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_1f

    return-object p0

    :catchall_1f
    move-exception v0

    .line 447
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    return-object p0
.end method

.method private a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V
    .registers 9

    .line 157
    iget p1, p0, Lcom/tencent/bugly/proguard/w;->d:I

    const/16 v0, 0x276

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x280

    if-eq p1, v0, :cond_17

    const/16 v0, 0x33e

    if-eq p1, v0, :cond_1a

    const/16 v0, 0x348

    if-eq p1, v0, :cond_17

    .line 167
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_1c

    :cond_17
    const-string p1, "userinfo"

    goto :goto_1c

    :cond_1a
    const-string p1, "crash"

    :goto_1c
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2a

    new-array p3, v0, [Ljava/lang/Object;

    aput-object p1, p3, v1

    const-string p1, "[Upload] Success: %s"

    .line 170
    invoke-static {p1, p3}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/String;[Ljava/lang/Object;)Z

    goto :goto_3d

    :cond_2a
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 172
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v2, v1

    aput-object p1, v2, v0

    const/4 p1, 0x2

    aput-object p4, v2, p1

    const-string p1, "[Upload] Failed to upload(%d) %s: %s"

    invoke-static {p1, v2}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 175
    :goto_3d
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->q:J

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->r:J

    add-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_5d

    .line 176
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    iget-boolean p3, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    .line 177
    invoke-virtual {p1, p3}, Lcom/tencent/bugly/proguard/v;->a(Z)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->q:J

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/tencent/bugly/proguard/w;->r:J

    add-long/2addr v0, v2

    .line 178
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    iget-boolean p3, p0, Lcom/tencent/bugly/proguard/w;->s:Z

    invoke-virtual {p1, v0, v1, p3}, Lcom/tencent/bugly/proguard/v;->a(JZ)V

    .line 181
    :cond_5d
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->k:Lcom/tencent/bugly/proguard/u;

    if-eqz p1, :cond_64

    .line 182
    invoke-interface {p1, p2, p4}, Lcom/tencent/bugly/proguard/u;->a(ZLjava/lang/String;)V

    .line 184
    :cond_64
    iget-object p1, p0, Lcom/tencent/bugly/proguard/w;->l:Lcom/tencent/bugly/proguard/u;

    if-eqz p1, :cond_6b

    .line 185
    invoke-interface {p1, p2, p4}, Lcom/tencent/bugly/proguard/u;->a(ZLjava/lang/String;)V

    :cond_6b
    return-void
.end method

.method private static a(Lcom/tencent/bugly/proguard/ao;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z
    .registers 12

    const/4 v0, 0x0

    if-nez p0, :cond_b

    new-array p0, v0, [Ljava/lang/Object;

    const-string p1, "resp == null!"

    .line 195
    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 199
    :cond_b
    iget-byte v1, p0, Lcom/tencent/bugly/proguard/ao;->a:B

    const/4 v2, 0x1

    if-eqz v1, :cond_1e

    new-array p0, v2, [Ljava/lang/Object;

    .line 200
    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "resp result error %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 204
    :cond_1e
    :try_start_1e
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-static {v1}, Lcom/tencent/bugly/proguard/ab;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 205
    invoke-static {}, Lcom/tencent/bugly/crashreport/common/info/a;->b()Lcom/tencent/bugly/crashreport/common/info/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/info/a;->m()Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_55

    .line 206
    invoke-static {}, Lcom/tencent/bugly/proguard/o;->a()Lcom/tencent/bugly/proguard/o;

    move-result-object v3

    sget v4, Lcom/tencent/bugly/crashreport/common/strategy/a;->a:I

    const-string v5, "device"

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    const-string v6, "UTF-8"

    .line 207
    invoke-virtual {v1, v6}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 206
    invoke-virtual/range {v3 .. v8}, Lcom/tencent/bugly/proguard/o;->a(ILjava/lang/String;[BLcom/tencent/bugly/proguard/n;Z)Z

    .line 208
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->e:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/tencent/bugly/crashreport/common/info/a;->f(Ljava/lang/String;)V
    :try_end_50
    .catchall {:try_start_1e .. :try_end_50} :catchall_51

    goto :goto_55

    :catchall_51
    move-exception v1

    .line 211
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    .line 213
    :cond_55
    :goto_55
    iget-wide v3, p0, Lcom/tencent/bugly/proguard/ao;->d:J

    iput-wide v3, p1, Lcom/tencent/bugly/crashreport/common/info/a;->h:J

    .line 216
    iget p1, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    const/16 v1, 0x1fe

    if-ne p1, v1, :cond_8e

    .line 217
    iget-object v1, p0, Lcom/tencent/bugly/proguard/ao;->c:[B

    if-nez v1, :cond_71

    new-array p0, v2, [Ljava/lang/Object;

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "[Upload] Strategy data is null. Response cmd: %d"

    invoke-static {p1, p0}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 221
    :cond_71
    const-class p1, Lcom/tencent/bugly/proguard/aq;

    .line 222
    invoke-static {v1, p1}, Lcom/tencent/bugly/proguard/a;->a([BLjava/lang/Class;)Lcom/tencent/bugly/proguard/j;

    move-result-object p1

    check-cast p1, Lcom/tencent/bugly/proguard/aq;

    if-nez p1, :cond_8b

    new-array p1, v2, [Ljava/lang/Object;

    .line 224
    iget p0, p0, Lcom/tencent/bugly/proguard/ao;->b:I

    .line 225
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, p1, v0

    const-string p0, "[Upload] Failed to decode strategy from server. Response cmd: %d"

    .line 224
    invoke-static {p0, p1}, Lcom/tencent/bugly/proguard/y;->e(Ljava/lang/String;[Ljava/lang/Object;)Z

    return v0

    .line 228
    :cond_8b
    invoke-virtual {p2, p1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->a(Lcom/tencent/bugly/proguard/aq;)V

    :cond_8e
    return v2
.end method


# virtual methods
.method public final a(J)V
    .registers 5

    .line 432
    iget v0, p0, Lcom/tencent/bugly/proguard/w;->p:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/tencent/bugly/proguard/w;->p:I

    .line 433
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->q:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->q:J

    return-void
.end method

.method public final b(J)V
    .registers 5

    .line 437
    iget-wide v0, p0, Lcom/tencent/bugly/proguard/w;->r:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/tencent/bugly/proguard/w;->r:J

    return-void
.end method

.method public final run()V
    .registers 13

    const/4 v0, 0x0

    .line 237
    :try_start_1
    iput v0, p0, Lcom/tencent/bugly/proguard/w;->p:I

    const-wide/16 v1, 0x0

    .line 238
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/w;->q:J

    .line 239
    iput-wide v1, p0, Lcom/tencent/bugly/proguard/w;->r:J

    .line 243
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->c:Landroid/content/Context;

    invoke-static {v1}, Lcom/tencent/bugly/crashreport/common/info/b;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_15

    const-string v1, "network is not available"

    goto :goto_3e

    :cond_15
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    if-eqz v1, :cond_3c

    array-length v1, v1

    if-nez v1, :cond_1d

    goto :goto_3c

    :cond_1d
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->c:Landroid/content/Context;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    if-eqz v1, :cond_39

    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    if-eqz v1, :cond_39

    iget-object v3, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    if-nez v3, :cond_2e

    goto :goto_39

    :cond_2e
    invoke-virtual {v1}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v1

    if-nez v1, :cond_37

    const-string v1, "illegal local strategy"

    goto :goto_3e

    :cond_37
    move-object v1, v2

    goto :goto_3e

    :cond_39
    :goto_39
    const-string v1, "illegal access error"

    goto :goto_3e

    :cond_3c
    :goto_3c
    const-string v1, "request package is empty!"

    :goto_3e
    if-eqz v1, :cond_44

    .line 245
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    return-void

    .line 250
    :cond_44
    iget-object v1, p0, Lcom/tencent/bugly/proguard/w;->e:[B

    const/4 v3, 0x2

    invoke-static {v1, v3}, Lcom/tencent/bugly/proguard/ab;->a([BI)[B

    move-result-object v1

    if-nez v1, :cond_53

    const-string v1, "failed to zip request body"

    .line 252
    invoke-direct {p0, v2, v0, v0, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    return-void

    .line 256
    :cond_53
    new-instance v4, Ljava/util/HashMap;

    const/16 v5, 0xa

    invoke-direct {v4, v5}, Ljava/util/HashMap;-><init>(I)V

    const-string v5, "tls"

    const-string v6, "1"

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "prodId"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    invoke-virtual {v6}, Lcom/tencent/bugly/crashreport/common/info/a;->f()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "bundleId"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v6, v6, Lcom/tencent/bugly/crashreport/common/info/a;->c:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "appVer"

    iget-object v6, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v6, v6, Lcom/tencent/bugly/crashreport/common/info/a;->i:Ljava/lang/String;

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->o:Ljava/util/Map;

    if-eqz v5, :cond_85

    invoke-interface {v4, v5}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    :cond_85
    const-string v5, "cmd"

    iget v6, p0, Lcom/tencent/bugly/proguard/w;->d:I

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "platformId"

    const/4 v6, 0x1

    invoke-static {v6}, Ljava/lang/Byte;->toString(B)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "sdkVer"

    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v7, v7, Lcom/tencent/bugly/crashreport/common/info/a;->f:Ljava/lang/String;

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v5, "strategylastUpdateTime"

    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    move-result-object v7

    iget-wide v7, v7, Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;->n:J

    invoke-static {v7, v8}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->i:Lcom/tencent/bugly/proguard/v;

    iget v7, p0, Lcom/tencent/bugly/proguard/w;->j:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    invoke-virtual {v5, v7, v8, v9}, Lcom/tencent/bugly/proguard/v;->a(IJ)V

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->k:Lcom/tencent/bugly/proguard/u;

    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->l:Lcom/tencent/bugly/proguard/u;

    .line 259
    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->m:Ljava/lang/String;

    .line 261
    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-virtual {v7}, Lcom/tencent/bugly/crashreport/common/strategy/a;->c()Lcom/tencent/bugly/crashreport/common/strategy/StrategyBean;

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_cc
    add-int/lit8 v9, v7, 0x1

    .line 262
    iget v10, p0, Lcom/tencent/bugly/proguard/w;->a:I

    if-ge v7, v10, :cond_1d7

    if-le v9, v6, :cond_f8

    const-string v7, "[Upload] Failed to upload last time, wait and try(%d) again."

    new-array v8, v6, [Ljava/lang/Object;

    .line 264
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 265
    iget v7, p0, Lcom/tencent/bugly/proguard/w;->b:I

    int-to-long v7, v7

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/ab;->b(J)V

    .line 266
    iget v7, p0, Lcom/tencent/bugly/proguard/w;->a:I

    if-ne v9, v7, :cond_f8

    const-string v5, "[Upload] Use the back-up url at the last time: %s"

    new-array v7, v6, [Ljava/lang/Object;

    .line 267
    iget-object v8, p0, Lcom/tencent/bugly/proguard/w;->n:Ljava/lang/String;

    aput-object v8, v7, v0

    invoke-static {v5, v7}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 269
    iget-object v5, p0, Lcom/tencent/bugly/proguard/w;->n:Ljava/lang/String;

    :cond_f8
    const-string v7, "[Upload] Send %d bytes"

    new-array v8, v6, [Ljava/lang/Object;

    .line 273
    array-length v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v0

    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 274
    invoke-static {v5}, Lcom/tencent/bugly/proguard/w;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "[Upload] Upload to %s with cmd %d (pid=%d | tid=%d)."

    const/4 v8, 0x4

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v5, v8, v0

    .line 275
    iget v10, p0, Lcom/tencent/bugly/proguard/w;->d:I

    .line 276
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v6

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v3

    const/4 v10, 0x3

    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v8, v10

    .line 275
    invoke-static {v7, v8}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    .line 277
    iget-object v7, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    invoke-virtual {v7, v5, v1, p0, v4}, Lcom/tencent/bugly/proguard/s;->a(Ljava/lang/String;[BLcom/tencent/bugly/proguard/w;Ljava/util/Map;)[B

    move-result-object v7

    .line 278
    iget-object v8, p0, Lcom/tencent/bugly/proguard/w;->h:Lcom/tencent/bugly/proguard/s;

    iget-object v8, v8, Lcom/tencent/bugly/proguard/s;->a:Ljava/util/Map;

    .line 280
    invoke-direct {p0, v7, v8}, Lcom/tencent/bugly/proguard/w;->a([BLjava/util/Map;)Landroid/util/Pair;

    move-result-object v10

    iget-object v11, v10, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v11, Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-nez v11, :cond_153

    iget-object v7, v10, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    :goto_14d
    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    goto/16 :goto_1d0

    :cond_153
    invoke-direct {p0, v8}, Lcom/tencent/bugly/proguard/w;->a(Ljava/util/Map;)Landroid/util/Pair;

    move-result-object v8

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_166

    iget-object v7, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    goto :goto_14d

    :cond_166
    invoke-static {v7, v3}, Lcom/tencent/bugly/proguard/ab;->b([BI)[B

    move-result-object v8

    if-eqz v8, :cond_16d

    move-object v7, v8

    :cond_16d
    invoke-static {v7}, Lcom/tencent/bugly/proguard/a;->b([B)Lcom/tencent/bugly/proguard/ao;

    move-result-object v7

    if-nez v7, :cond_180

    const-string v7, "failed to decode response package"

    invoke-direct {p0, v2, v0, v6, v7}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1bf

    :cond_180
    const-string v8, "[Upload] Response cmd is: %d, length of sBuffer is: %d"

    new-array v10, v3, [Ljava/lang/Object;

    iget v11, v7, Lcom/tencent/bugly/proguard/ao;->b:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v0

    iget-object v11, v7, Lcom/tencent/bugly/proguard/ao;->c:[B

    if-nez v11, :cond_192

    const/4 v11, 0x0

    goto :goto_193

    :cond_192
    array-length v11, v11

    :goto_193
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-static {v8, v10}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    iget-object v8, p0, Lcom/tencent/bugly/proguard/w;->f:Lcom/tencent/bugly/crashreport/common/info/a;

    iget-object v10, p0, Lcom/tencent/bugly/proguard/w;->g:Lcom/tencent/bugly/crashreport/common/strategy/a;

    invoke-static {v7, v8, v10}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;Lcom/tencent/bugly/crashreport/common/info/a;Lcom/tencent/bugly/crashreport/common/strategy/a;)Z

    move-result v8

    if-nez v8, :cond_1b3

    const-string v8, "failed to process response package"

    invoke-direct {p0, v7, v0, v3, v8}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1bf

    :cond_1b3
    const-string v8, "successfully uploaded"

    invoke-direct {p0, v7, v6, v3, v8}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V

    new-instance v7, Landroid/util/Pair;

    sget-object v8, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-direct {v7, v8, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_1bf
    iget-object v8, v7, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_1cf

    iget-object v7, v7, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Boolean;

    goto/16 :goto_14d

    :cond_1cf
    const/4 v7, 0x0

    :goto_1d0
    if-eqz v7, :cond_1d6

    move v7, v9

    const/4 v8, 0x1

    goto/16 :goto_cc

    :cond_1d6
    return-void

    :cond_1d7
    const-string v1, "failed after many attempts"

    .line 289
    invoke-direct {p0, v2, v0, v8, v1}, Lcom/tencent/bugly/proguard/w;->a(Lcom/tencent/bugly/proguard/ao;ZILjava/lang/String;)V
    :try_end_1dc
    .catchall {:try_start_1 .. :try_end_1dc} :catchall_1dd

    return-void

    :catchall_1dd
    move-exception v0

    .line 291
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->a(Ljava/lang/Throwable;)Z

    move-result v1

    if-nez v1, :cond_1e7

    .line 292
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1e7
    return-void
.end method
