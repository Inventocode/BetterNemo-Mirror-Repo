.class public Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;
.super Ljava/lang/Object;
.source "ImprintHandler.java"

# interfaces
.implements Lcom/umeng/commonsdk/utils/FileLockCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "ImprintHandler"

.field private static b:Ljava/lang/Object; = null

.field private static final c:Ljava/lang/String; = ".imprint"

.field private static final d:[B

.field private static f:Ljava/util/Map; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;",
            ">;>;"
        }
    .end annotation
.end field

.field private static g:Ljava/lang/Object; = null

.field private static j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler; = null

.field private static k:Landroid/content/Context; = null

.field private static l:Lcom/umeng/commonsdk/utils/FileLockUtil; = null

.field private static final m:I = 0x0

.field private static final n:I = 0x1

.field private static o:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;",
            ">;"
        }
    .end annotation
.end field

.field private static p:Ljava/lang/Object;


# instance fields
.field private e:Lcom/umeng/commonsdk/statistics/internal/d;

.field private h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

.field private i:Lcom/umeng/commonsdk/statistics/proto/d;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 43
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b:Ljava/lang/Object;

    const-string v0, "pbl0"

    .line 46
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d:[B

    .line 50
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    .line 51
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-instance v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-direct {v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;-><init>()V

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    const/4 v0, 0x0

    .line 54
    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 91
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sput-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    return-void
.end method

.method private a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/umeng/commonsdk/statistics/proto/d;",
            "Lcom/umeng/commonsdk/statistics/proto/d;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/umeng/commonsdk/statistics/proto/d;"
        }
    .end annotation

    if-nez p2, :cond_3

    return-object p1

    .line 416
    :cond_3
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 417
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v1

    .line 421
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ef

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 422
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_ad

    .line 423
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 424
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/statistics/proto/e;

    iget-object v5, v5, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 426
    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 427
    :try_start_3d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_5c

    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5c

    .line 428
    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;

    if-eqz v7, :cond_5c

    .line 430
    invoke-interface {v7, v3, v5}, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;->onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_5c

    const/4 v4, 0x1

    .line 435
    :cond_5c
    monitor-exit v6
    :try_end_5d
    .catchall {:try_start_3d .. :try_end_5d} :catchall_aa

    if-nez v4, :cond_8d

    .line 438
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 439
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v2

    .line 442
    :try_start_6d
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_88

    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_88

    .line 444
    sget-object v4, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-eqz v4, :cond_88

    .line 446
    invoke-interface {p3, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 452
    :cond_88
    monitor-exit v2

    goto :goto_13

    :catchall_8a
    move-exception p1

    monitor-exit v2
    :try_end_8c
    .catchall {:try_start_6d .. :try_end_8c} :catchall_8a

    throw p1

    :cond_8d
    const-string v2, "MobclickRT"

    .line 455
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> merge: ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] should be ignored."

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_13

    :catchall_aa
    move-exception p1

    .line 435
    :try_start_ab
    monitor-exit v6
    :try_end_ac
    .catchall {:try_start_ab .. :try_end_ac} :catchall_aa

    throw p1

    .line 459
    :cond_ad
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 461
    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 463
    :try_start_b6
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e1

    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e1

    .line 465
    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_e1

    .line 467
    :goto_ce
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v4, v6, :cond_e1

    .line 468
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    const/4 v7, 0x0

    invoke-interface {v6, v2, v7}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_ce

    .line 472
    :cond_e1
    monitor-exit v3
    :try_end_e2
    .catchall {:try_start_b6 .. :try_end_e2} :catchall_ec

    .line 473
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 474
    iget-object v3, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;)V

    goto/16 :goto_13

    :catchall_ec
    move-exception p1

    .line 472
    :try_start_ed
    monitor-exit v3
    :try_end_ee
    .catchall {:try_start_ed .. :try_end_ee} :catchall_ec

    throw p1

    .line 478
    :cond_ef
    invoke-virtual {p2}, Lcom/umeng/commonsdk/statistics/proto/d;->f()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(I)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 479
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;

    return-object p1
.end method

.method private a(Ljava/io/File;)V
    .registers 5

    .line 597
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v0, :cond_5

    return-void

    .line 602
    :cond_5
    :try_start_5
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b:Ljava/lang/Object;

    monitor-enter v0
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_8} :catch_2b

    .line 603
    :try_start_8
    new-instance v1, Lcom/umeng/analytics/pro/bc;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/bc;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/bc;->a(Lcom/umeng/analytics/pro/at;)[B

    move-result-object v1

    .line 605
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_18
    .catchall {:try_start_8 .. :try_end_18} :catchall_28

    .line 608
    :try_start_18
    invoke-virtual {v2, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 609
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_23

    .line 611
    :try_start_1e
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    .line 613
    monitor-exit v0

    goto :goto_2f

    :catchall_23
    move-exception p1

    .line 611
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/OutputStream;)V

    throw p1

    :catchall_28
    move-exception p1

    .line 613
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1e .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p1
    :try_end_2b
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2b} :catch_2b

    :catch_2b
    move-exception p1

    .line 615
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2f
    return-void
.end method

.method private static a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 8

    .line 110
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 112
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_5a

    .line 113
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    .line 114
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 115
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> addCallback: before add: callbacks size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    :goto_2c
    if-ge v2, v1, :cond_3e

    .line 117
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-ne p1, v3, :cond_3b

    const-string p0, "--->>> addCallback: callback has exist, just exit"

    .line 118
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V
    :try_end_39
    .catchall {:try_start_3 .. :try_end_39} :catchall_aa

    .line 120
    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_b2

    return-void

    :cond_3b
    add-int/lit8 v2, v2, 0x1

    goto :goto_2c

    .line 123
    :cond_3e
    :try_start_3e
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 124
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> addCallback: after add: callbacks size is: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    goto :goto_b0

    .line 126
    :cond_5a
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 127
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 128
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--->>> addCallback: before add: callbacks size is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    :goto_77
    if-ge v2, v3, :cond_89

    .line 130
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_86

    const-string p0, "--->>> addCallback: callback has exist, just exit"

    .line 131
    invoke-static {p0}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V
    :try_end_84
    .catchall {:try_start_3e .. :try_end_84} :catchall_aa

    .line 133
    :try_start_84
    monitor-exit v0
    :try_end_85
    .catchall {:try_start_84 .. :try_end_85} :catchall_b2

    return-void

    :cond_86
    add-int/lit8 v2, v2, 0x1

    goto :goto_77

    .line 136
    :cond_89
    :try_start_89
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 137
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> addCallback: after add: callbacks size is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 138
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {p1, p0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_a9
    .catchall {:try_start_89 .. :try_end_a9} :catchall_aa

    goto :goto_b0

    :catchall_aa
    move-exception p0

    .line 141
    :try_start_ab
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 143
    :goto_b0
    monitor-exit v0

    return-void

    :catchall_b2
    move-exception p0

    monitor-exit v0
    :try_end_b4
    .catchall {:try_start_ab .. :try_end_b4} :catchall_b2

    throw p0
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p1, :cond_8

    if-eqz p2, :cond_6

    const/4 p1, 0x0

    return p1

    :cond_6
    const/4 p1, 0x1

    return p1

    .line 407
    :cond_8
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private static b(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 7

    .line 147
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a2

    if-nez p1, :cond_a

    goto/16 :goto_a2

    .line 151
    :cond_a
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v0

    .line 153
    :try_start_d
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 154
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 155
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_9d

    .line 156
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 157
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> removeCallback: before remove: callbacks size is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_3c
    if-ge v3, v2, :cond_5f

    .line 160
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-ne p1, v4, :cond_5c

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> removeCallback: remove index "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 162
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_5f

    :cond_5c
    add-int/lit8 v3, v3, 0x1

    goto :goto_3c

    .line 166
    :cond_5f
    :goto_5f
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> removeCallback: after remove: callbacks size is: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_9d

    .line 169
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "--->>> removeCallback: remove key from map: key = "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 170
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {p1, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_96
    .catchall {:try_start_d .. :try_end_96} :catchall_97

    goto :goto_9d

    :catchall_97
    move-exception p0

    .line 175
    :try_start_98
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p1, p0}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 177
    :cond_9d
    :goto_9d
    monitor-exit v0

    return-void

    :catchall_9f
    move-exception p0

    monitor-exit v0
    :try_end_a1
    .catchall {:try_start_98 .. :try_end_a1} :catchall_9f

    throw p0

    :cond_a2
    :goto_a2
    return-void
.end method

.method private c(Lcom/umeng/commonsdk/statistics/proto/d;)Z
    .registers 8

    .line 253
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    return v1

    .line 257
    :cond_10
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1c
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_42

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/umeng/commonsdk/statistics/proto/e;

    .line 258
    invoke-virtual {v0}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/DataHelper;->reverseHexString(Ljava/lang/String;)[B

    move-result-object v2

    .line 259
    invoke-virtual {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/e;)[B

    move-result-object v0

    const/4 v3, 0x0

    :goto_35
    const/4 v4, 0x4

    if-ge v3, v4, :cond_1c

    .line 262
    aget-byte v4, v2, v3

    aget-byte v5, v0, v3

    if-eq v4, v5, :cond_3f

    return v1

    :cond_3f
    add-int/lit8 v3, v3, 0x1

    goto :goto_35

    :cond_42
    const/4 p1, 0x1

    return p1
.end method

.method private d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 5

    .line 309
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    const-string v1, "umtt"

    .line 310
    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    .line 311
    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {v0, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->f()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->a(I)Lcom/umeng/commonsdk/statistics/proto/d;

    .line 314
    invoke-virtual {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/umeng/commonsdk/statistics/proto/d;->a(Ljava/lang/String;)Lcom/umeng/commonsdk/statistics/proto/d;

    :cond_22
    return-object p1
.end method

.method private e(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 11

    .line 490
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v0

    .line 491
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 496
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_17
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 497
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v5}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v5

    if-nez v5, :cond_38

    .line 498
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_17

    .line 500
    :cond_38
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 501
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    iget-object v3, v3, Lcom/umeng/commonsdk/statistics/proto/e;->a:Ljava/lang/String;

    .line 505
    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v6

    .line 506
    :try_start_49
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_69

    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_69

    .line 507
    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v7, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;

    if-eqz v7, :cond_69

    .line 509
    invoke-interface {v7, v5, v3}, Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;->onPreProcessImprintKey(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_69

    const/4 v7, 0x1

    goto :goto_6a

    :cond_69
    const/4 v7, 0x0

    .line 514
    :goto_6a
    monitor-exit v6
    :try_end_6b
    .catchall {:try_start_49 .. :try_end_6b} :catchall_a3

    if-eqz v7, :cond_70

    .line 517
    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 521
    :cond_70
    sget-object v7, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v7

    .line 522
    :try_start_73
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_9d

    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9d

    .line 524
    sget-object v6, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v6, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    if-eqz v6, :cond_9d

    .line 526
    :goto_8b
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v4, v8, :cond_9d

    .line 527
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    invoke-interface {v8, v5, v3}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_8b

    .line 531
    :cond_9d
    monitor-exit v7

    goto/16 :goto_17

    :catchall_a0
    move-exception p1

    monitor-exit v7
    :try_end_a2
    .catchall {:try_start_73 .. :try_end_a2} :catchall_a0

    throw p1

    :catchall_a3
    move-exception p1

    .line 514
    :try_start_a4
    monitor-exit v6
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_a3

    throw p1

    .line 535
    :cond_a6
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_aa
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_ed

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 537
    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter v3

    .line 538
    :try_start_b9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_e5

    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_e5

    .line 540
    sget-object v5, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_e5

    const/4 v6, 0x0

    .line 542
    :goto_d2
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_e5

    .line 543
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    const/4 v8, 0x0

    invoke-interface {v7, v2, v8}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v6, v6, 0x1

    goto :goto_d2

    .line 547
    :cond_e5
    monitor-exit v3
    :try_end_e6
    .catchall {:try_start_b9 .. :try_end_e6} :catchall_ea

    .line 548
    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_aa

    :catchall_ea
    move-exception p1

    .line 547
    :try_start_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    throw p1

    :cond_ed
    return-object p1
.end method

.method private e()V
    .registers 6

    .line 563
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 565
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b:Ljava/lang/Object;

    monitor-enter v1

    .line 566
    :try_start_10
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_18

    .line 567
    monitor-exit v1
    :try_end_17
    .catchall {:try_start_10 .. :try_end_17} :catchall_60

    return-void

    :cond_18
    const/4 v0, 0x0

    .line 573
    :try_start_19
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    const-string v3, ".imprint"

    invoke-virtual {v2, v3}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v2
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_21} :catch_30
    .catchall {:try_start_19 .. :try_end_21} :catchall_2b

    .line 574
    :try_start_21
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->readStreamToByteArray(Ljava/io/InputStream;)[B

    move-result-object v0
    :try_end_25
    .catch Ljava/lang/Exception; {:try_start_21 .. :try_end_25} :catch_29
    .catchall {:try_start_21 .. :try_end_25} :catchall_5b

    .line 578
    :goto_25
    :try_start_25
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_60

    goto :goto_36

    :catch_29
    move-exception v3

    goto :goto_32

    :catchall_2b
    move-exception v2

    move-object v4, v2

    move-object v2, v0

    move-object v0, v4

    goto :goto_5c

    :catch_30
    move-exception v3

    move-object v2, v0

    .line 576
    :goto_32
    :try_start_32
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_5b

    goto :goto_25

    :goto_36
    if-eqz v0, :cond_59

    .line 583
    :try_start_38
    new-instance v2, Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {v2}, Lcom/umeng/commonsdk/statistics/proto/d;-><init>()V

    .line 584
    new-instance v3, Lcom/umeng/analytics/pro/aw;

    invoke-direct {v3}, Lcom/umeng/analytics/pro/aw;-><init>()V

    invoke-virtual {v3, v2, v0}, Lcom/umeng/analytics/pro/aw;->a(Lcom/umeng/analytics/pro/at;[B)V

    .line 585
    iput-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 586
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {v0, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 587
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-direct {p0, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;
    :try_end_54
    .catch Ljava/lang/Exception; {:try_start_38 .. :try_end_54} :catch_55
    .catchall {:try_start_38 .. :try_end_54} :catchall_60

    goto :goto_59

    :catch_55
    move-exception v0

    .line 589
    :try_start_56
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 592
    :cond_59
    :goto_59
    monitor-exit v1

    return-void

    :catchall_5b
    move-exception v0

    .line 578
    :goto_5c
    invoke-static {v2}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->safeClose(Ljava/io/InputStream;)V

    throw v0

    :catchall_60
    move-exception v0

    .line 592
    monitor-exit v1
    :try_end_62
    .catchall {:try_start_56 .. :try_end_62} :catchall_60

    throw v0
.end method

.method public static declared-synchronized getImprintService(Landroid/content/Context;)Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;
    .registers 5

    const-class v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    monitor-enter v0

    .line 95
    :try_start_3
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    if-nez v1, :cond_2a

    .line 96
    new-instance v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-direct {v1, p0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    .line 97
    new-instance p0, Lcom/umeng/commonsdk/utils/FileLockUtil;

    invoke-direct {p0}, Lcom/umeng/commonsdk/utils/FileLockUtil;-><init>()V

    sput-object p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    .line 99
    new-instance p0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {p0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 100
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    .line 105
    :cond_2a
    sget-object p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;
    :try_end_2c
    .catchall {:try_start_3 .. :try_end_2c} :catchall_2e

    monitor-exit v0

    return-object p0

    :catchall_2e
    move-exception p0

    monitor-exit v0

    throw p0
.end method


# virtual methods
.method public a(Lcom/umeng/commonsdk/statistics/proto/d;)Ljava/lang/String;
    .registers 7

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 236
    new-instance v1, Ljava/util/TreeMap;

    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->c()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 238
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_16
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5f

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 239
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->d()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 241
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    :cond_44
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v3}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v3

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/umeng/commonsdk/statistics/proto/e;

    invoke-virtual {v2}, Lcom/umeng/commonsdk/statistics/proto/e;->h()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_16

    .line 247
    :cond_5f
    iget p1, p1, Lcom/umeng/commonsdk/statistics/proto/d;->b:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 249
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/HelperUtils;->MD5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/umeng/commonsdk/statistics/internal/d;)V
    .registers 2

    .line 231
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .registers 6

    .line 213
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 214
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 216
    :try_start_9
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_32

    const-string v1, "MobclickRT"

    .line 217
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> unregistPreProcessCallback: unregist ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "] success."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_54

    :cond_32
    const-string v1, "MobclickRT"

    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--->>> unregistPreProcessCallback: can\'t find ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "], pls regist first."

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4d
    .catchall {:try_start_9 .. :try_end_4d} :catchall_4e

    goto :goto_54

    :catchall_4e
    move-exception p1

    .line 223
    :try_start_4f
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {v1, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 225
    :goto_54
    monitor-exit v0

    goto :goto_59

    :catchall_56
    move-exception p1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_4f .. :try_end_58} :catchall_56

    throw p1

    :cond_59
    :goto_59
    return-void
.end method

.method public a()[B
    .registers 4

    const/4 v0, 0x0

    .line 290
    :try_start_1
    monitor-enter p0
    :try_end_2
    .catchall {:try_start_1 .. :try_end_2} :catchall_20

    .line 292
    :try_start_2
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v1, :cond_8

    .line 293
    monitor-exit p0

    return-object v0

    .line 295
    :cond_8
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d;->b()I

    move-result v1

    if-gtz v1, :cond_10

    .line 297
    monitor-exit p0

    return-object v0

    .line 299
    :cond_10
    new-instance v1, Lcom/umeng/analytics/pro/bc;

    invoke-direct {v1}, Lcom/umeng/analytics/pro/bc;-><init>()V

    iget-object v2, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    invoke-virtual {v1, v2}, Lcom/umeng/analytics/pro/bc;->a(Lcom/umeng/analytics/pro/at;)[B

    move-result-object v1

    monitor-exit p0

    return-object v1

    :catchall_1d
    move-exception v1

    .line 300
    monitor-exit p0
    :try_end_1f
    .catchall {:try_start_2 .. :try_end_1f} :catchall_1d

    :try_start_1f
    throw v1
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_20

    :catchall_20
    move-exception v1

    .line 302
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public a(Lcom/umeng/commonsdk/statistics/proto/e;)[B
    .registers 8

    const/16 v0, 0x8

    .line 271
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    const/4 v1, 0x0

    .line 272
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 273
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/e;->e()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 275
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object p1

    .line 276
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d:[B

    const/4 v1, 0x4

    new-array v2, v1, [B

    const/4 v3, 0x0

    :goto_1b
    if-ge v3, v1, :cond_28

    .line 280
    aget-byte v4, p1, v3

    aget-byte v5, v0, v3

    xor-int/2addr v4, v5

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1b

    :cond_28
    return-object v2
.end method

.method public declared-synchronized b()Lcom/umeng/commonsdk/statistics/proto/d;
    .registers 2

    monitor-enter p0

    .line 555
    :try_start_1
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public b(Lcom/umeng/commonsdk/statistics/proto/d;)V
    .registers 8

    if-nez p1, :cond_e

    .line 321
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p1, :cond_d

    const-string p1, "MobclickRT"

    const-string v0, "Imprint is null"

    .line 323
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_d
    return-void

    .line 328
    :cond_e
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->c(Lcom/umeng/commonsdk/statistics/proto/d;)Z

    move-result v0

    if-nez v0, :cond_20

    .line 329
    sget-boolean p1, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    if-eqz p1, :cond_1f

    const-string p1, "MobclickRT"

    const-string v0, "Imprint is not valid"

    .line 331
    invoke-static {p1, v0}, Lcom/umeng/commonsdk/debug/UMRTLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1f
    return-void

    .line 335
    :cond_20
    sget-boolean v0, Lcom/umeng/commonsdk/statistics/AnalyticsConstants;->UM_DEBUG:Z

    .line 343
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 344
    monitor-enter p0

    .line 345
    :try_start_28
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    .line 347
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->d(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    const/4 v2, 0x0

    if-nez v1, :cond_33

    move-object v3, v2

    goto :goto_37

    .line 348
    :cond_33
    invoke-virtual {v1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v3

    :goto_37
    if-nez v1, :cond_3e

    .line 350
    invoke-direct {p0, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e(Lcom/umeng/commonsdk/statistics/proto/d;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    goto :goto_42

    .line 352
    :cond_3e
    invoke-direct {p0, v1, p1, v0}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Lcom/umeng/commonsdk/statistics/proto/d;Lcom/umeng/commonsdk/statistics/proto/d;Ljava/util/Map;)Lcom/umeng/commonsdk/statistics/proto/d;

    move-result-object p1

    .line 355
    :goto_42
    iput-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez p1, :cond_47

    goto :goto_4b

    .line 356
    :cond_47
    invoke-virtual {p1}, Lcom/umeng/commonsdk/statistics/proto/d;->i()Ljava/lang/String;

    move-result-object v2

    .line 357
    :goto_4b
    invoke-direct {p0, v3, v2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    .line 360
    monitor-exit p0
    :try_end_52
    .catchall {:try_start_28 .. :try_end_52} :catchall_dc

    .line 362
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-eqz v1, :cond_66

    if-eqz p1, :cond_66

    .line 367
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-virtual {p1, v1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;->a(Lcom/umeng/commonsdk/statistics/proto/d;)V

    .line 368
    iget-object p1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e:Lcom/umeng/commonsdk/statistics/internal/d;

    if-eqz p1, :cond_66

    .line 369
    iget-object v1, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    invoke-interface {p1, v1}, Lcom/umeng/commonsdk/statistics/internal/d;->onImprintChanged(Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;)V

    .line 376
    :cond_66
    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result p1

    if-lez p1, :cond_db

    .line 379
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->g:Ljava/lang/Object;

    monitor-enter p1

    .line 380
    :try_start_6f
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 381
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 382
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 383
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_77

    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_77

    .line 384
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "--->>> target imprint key is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "; value is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/umeng/commonsdk/statistics/common/ULog;->i(Ljava/lang/String;)V

    .line 385
    sget-object v3, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->f:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-eqz v3, :cond_77

    const/4 v4, 0x0

    .line 387
    :goto_c4
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_77

    .line 388
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;

    invoke-interface {v5, v2, v1}, Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;->onImprintValueChanged(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_c4

    .line 394
    :cond_d6
    monitor-exit p1

    goto :goto_db

    :catchall_d8
    move-exception v0

    monitor-exit p1
    :try_end_da
    .catchall {:try_start_6f .. :try_end_da} :catchall_d8

    throw v0

    :cond_db
    :goto_db
    return-void

    :catchall_dc
    move-exception p1

    .line 360
    :try_start_dd
    monitor-exit p0
    :try_end_de
    .catchall {:try_start_dd .. :try_end_de} :catchall_dc

    throw p1
.end method

.method public c()Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;
    .registers 2

    .line 559
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->h:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler$a;

    return-object v0
.end method

.method public d()V
    .registers 5

    .line 619
    iget-object v0, p0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->i:Lcom/umeng/commonsdk/statistics/proto/d;

    if-nez v0, :cond_5

    return-void

    .line 622
    :cond_5
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    if-eqz v0, :cond_32

    .line 623
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v1

    const-string v2, ".imprint"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 624
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2a

    .line 626
    :try_start_1c
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1f} :catch_20

    goto :goto_2a

    .line 630
    :catch_20
    :try_start_20
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24

    goto :goto_2a

    :catch_24
    move-exception v1

    .line 632
    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 636
    :cond_2a
    :goto_2a
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->l:Lcom/umeng/commonsdk/utils/FileLockUtil;

    sget-object v2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/umeng/commonsdk/utils/FileLockUtil;->doFileOperateion(Ljava/io/File;Lcom/umeng/commonsdk/utils/FileLockCallback;I)V

    :cond_32
    return-void
.end method

.method public onFileLock(Ljava/io/File;I)Z
    .registers 4

    const/4 v0, 0x1

    if-nez p2, :cond_9

    .line 82
    sget-object p1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-direct {p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->e()V

    goto :goto_10

    :cond_9
    if-ne p2, v0, :cond_10

    .line 85
    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->j:Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;

    invoke-direct {p2, p1}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Ljava/io/File;)V

    :cond_10
    :goto_10
    return v0
.end method

.method public onFileLock(Ljava/lang/String;)Z
    .registers 2

    const/4 p1, 0x0

    return p1
.end method

.method public onFileLock(Ljava/lang/String;Ljava/lang/Object;)Z
    .registers 3

    const/4 p1, 0x0

    return p1
.end method

.method public registImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 4

    .line 182
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    .line 183
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->a(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    :cond_b
    return-void
.end method

.method public registPreProcessCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintPreProcessCallback;)V
    .registers 6

    .line 195
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5b

    if-eqz p2, :cond_5b

    .line 196
    sget-object v0, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->p:Ljava/lang/Object;

    monitor-enter v0

    .line 199
    :try_start_b
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    .line 200
    sget-object v1, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->o:Ljava/util/Map;

    invoke-interface {v1, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "MobclickRT"

    .line 201
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> registPreProcessCallback: key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " regist success."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_56

    :cond_34
    const-string p2, "MobclickRT"

    .line 203
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "--->>> key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " PreProcesser has registed!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/debug/UMRTLog;->i(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4f
    .catchall {:try_start_b .. :try_end_4f} :catchall_50

    goto :goto_56

    :catchall_50
    move-exception p1

    .line 206
    :try_start_51
    sget-object p2, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->k:Landroid/content/Context;

    invoke-static {p2, p1}, Lcom/umeng/commonsdk/internal/crash/UMCrashManager;->reportCrash(Landroid/content/Context;Ljava/lang/Throwable;)V

    .line 208
    :goto_56
    monitor-exit v0

    goto :goto_5b

    :catchall_58
    move-exception p1

    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_51 .. :try_end_5a} :catchall_58

    throw p1

    :cond_5b
    :goto_5b
    return-void
.end method

.method public unregistImprintCallback(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V
    .registers 4

    .line 188
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_b

    if-eqz p2, :cond_b

    .line 189
    invoke-static {p1, p2}, Lcom/umeng/commonsdk/statistics/idtracking/ImprintHandler;->b(Ljava/lang/String;Lcom/umeng/commonsdk/statistics/internal/UMImprintChangeCallback;)V

    :cond_b
    return-void
.end method
