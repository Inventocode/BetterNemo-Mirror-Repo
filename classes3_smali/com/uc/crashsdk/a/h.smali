.class public Lcom/uc/crashsdk/a/h;
.super Ljava/lang/Object;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/uc/crashsdk/a/h$a;
    }
.end annotation


# static fields
.field static final synthetic a:Z = true

.field private static final b:Ljava/lang/Object;

.field private static final c:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static d:I

.field private static final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/uc/crashsdk/a/h$a;",
            ">;"
        }
    .end annotation
.end field

.field private static final f:Ljava/lang/Object;

.field private static final g:Ljava/lang/Object;

.field private static final h:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static i:Z

.field private static j:Z

.field private static final k:Ljava/lang/Object;

.field private static l:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 305
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/h;->b:Ljava/lang/Object;

    .line 437
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/h;->c:Ljava/util/Map;

    const/4 v0, 0x0

    .line 440
    sput v0, Lcom/uc/crashsdk/a/h;->d:I

    .line 690
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a/h;->e:Ljava/util/Map;

    .line 691
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a/h;->f:Ljava/lang/Object;

    .line 786
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a/h;->g:Ljava/lang/Object;

    .line 854
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    sput-object v1, Lcom/uc/crashsdk/a/h;->h:Landroid/util/SparseArray;

    .line 932
    sput-boolean v0, Lcom/uc/crashsdk/a/h;->i:Z

    .line 933
    sput-boolean v0, Lcom/uc/crashsdk/a/h;->j:Z

    .line 1070
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/h;->k:Ljava/lang/Object;

    const/4 v0, 0x0

    .line 1071
    sput-object v0, Lcom/uc/crashsdk/a/h;->l:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a(J)Ljava/lang/String;
    .registers 6

    const-wide/32 v0, 0x80000

    cmp-long v2, p0, v0

    if-gez v2, :cond_a

    const-string p0, "512M"

    return-object p0

    :cond_a
    const-wide/16 v0, 0x400

    .line 38
    div-long/2addr p0, v0

    const-wide/16 v2, 0x200

    add-long/2addr p0, v2

    div-long/2addr p0, v0

    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v1, v2

    const-string p0, "%dG"

    invoke-static {v0, p0, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lcom/uc/crashsdk/a/h$a;",
            ">;ZZ)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 677
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p0

    const/4 v1, 0x0

    const/4 v2, 0x1

    :goto_b
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2a

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/uc/crashsdk/a/h$a;

    if-eqz v2, :cond_22

    .line 681
    invoke-virtual {v3, p1, p1, p2}, Lcom/uc/crashsdk/a/h$a;->a(ZZZ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    goto :goto_b

    .line 684
    :cond_22
    invoke-virtual {v3, v1, p1, p2}, Lcom/uc/crashsdk/a/h$a;->a(ZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_b

    :cond_2a
    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/uc/crashsdk/a/h$a;",
            ">;"
        }
    .end annotation

    .line 919
    invoke-static {p0, p2}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 920
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 921
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_d
    :goto_d
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 922
    new-instance v1, Lcom/uc/crashsdk/a/h$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, v2}, Lcom/uc/crashsdk/a/h$a;-><init>(Ljava/lang/String;ZZ)V

    .line 923
    invoke-virtual {v1, v0}, Lcom/uc/crashsdk/a/h$a;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 924
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_d

    :cond_29
    return-object p2
.end method

.method public static a()V
    .registers 3

    .line 318
    invoke-static {}, Lcom/uc/crashsdk/b;->E()Z

    move-result v0

    if-eqz v0, :cond_a

    const-wide/32 v0, 0xaae60

    goto :goto_d

    :cond_a
    const-wide/32 v0, 0x11170

    :goto_d
    const/4 v2, 0x0

    .line 322
    invoke-static {v2, v0, v1}, Lcom/uc/crashsdk/a/h;->a(IJ)V

    return-void
.end method

.method private static a(IJ)V
    .registers 7

    .line 338
    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 341
    :cond_7
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x12e

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 344
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-direct {v0, v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 341
    invoke-static {v3, v0, p1, p2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method private static a(ILjava/lang/String;)V
    .registers 3

    .line 914
    sget-object v0, Lcom/uc/crashsdk/a/h;->h:Landroid/util/SparseArray;

    invoke-virtual {v0, p0, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method private static a(IZ)V
    .registers 7

    const-string v0, "crash rate"

    .line 556
    invoke-static {p1, v0}, Lcom/uc/crashsdk/a/h;->a(ZLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 559
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "cr.wa"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 560
    sget-object v0, Lcom/uc/crashsdk/a/h;->b:Ljava/lang/Object;

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x15f

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 562
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-direct {v1, v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 560
    invoke-static {v0, p1, v1}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    return-void
.end method

.method static a(I[Ljava/lang/Object;)V
    .registers 11

    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_ee

    .line 588
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-eqz p0, :cond_e7

    return-void

    .line 580
    :pswitch_9  #0x12f
    invoke-static {v0}, Lcom/uc/crashsdk/a/h;->b(Z)V

    return-void

    .line 575
    :pswitch_d  #0x12e
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-nez p0, :cond_1a

    if-eqz p1, :cond_14

    goto :goto_1a

    :cond_14
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 576
    :cond_1a
    :goto_1a
    sget-object p0, Lcom/uc/crashsdk/a/h;->b:Ljava/lang/Object;

    monitor-enter p0

    .line 577
    :try_start_1d
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v1, 0x1

    if-nez p1, :cond_2e

    .line 578
    sget-boolean v2, Lcom/uc/crashsdk/a/h;->i:Z

    if-nez v2, :cond_c9

    sput-boolean v1, Lcom/uc/crashsdk/a/h;->i:Z

    :cond_2e
    sget-object v2, Lcom/uc/crashsdk/a;->b:Ljava/lang/String;

    const-string v3, "2.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_40

    const/high16 v2, 0x10000000

    invoke-static {v2}, Lcom/uc/crashsdk/b;->c(I)Z

    move-result v2

    if-nez v2, :cond_c9

    :cond_40
    new-instance v2, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/a/h;->l()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/uc/crashsdk/a/h$a;

    const-string v5, "pv"

    invoke-direct {v4, v5, v1, v1}, Lcom/uc/crashsdk/a/h$a;-><init>(Ljava/lang/String;ZZ)V

    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5d

    invoke-virtual {v4, v3}, Lcom/uc/crashsdk/a/h$a;->c(Ljava/lang/String;)Z

    :cond_5d
    if-nez p1, :cond_6c

    iget v3, v4, Lcom/uc/crashsdk/a/h$a;->b:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v5

    if-ne v3, v5, :cond_69

    const/4 v3, 0x1

    goto :goto_6a

    :cond_69
    const/4 v3, 0x0

    :goto_6a
    if-nez v3, :cond_c9

    :cond_6c
    const-wide/16 v5, 0x1

    if-nez p1, :cond_7b

    const-string p1, "pv"

    invoke-virtual {v4, p1, v5, v6}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    const-string p1, "fjv"

    :goto_77
    invoke-virtual {v4, p1, v5, v6}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    goto :goto_8b

    :cond_7b
    if-ne p1, v1, :cond_80

    const-string p1, "hpv"

    goto :goto_77

    :cond_80
    const/4 v3, 0x2

    if-ne p1, v3, :cond_8b

    const-string p1, "pv"

    invoke-virtual {v4, p1, v5, v6}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    const-string p1, "npv"

    goto :goto_77

    :cond_8b
    :goto_8b
    invoke-static {}, Lcom/uc/crashsdk/e;->p()Ljava/lang/String;

    move-result-object p1

    iget-wide v5, v4, Lcom/uc/crashsdk/a/h$a;->a:J

    const-wide/16 v7, 0x0

    cmp-long v3, v5, v7

    if-eqz v3, :cond_a5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/32 v5, 0x1b77400

    cmp-long v3, v7, v5

    if-gez v3, :cond_a5

    const/4 p1, 0x0

    goto :goto_ad

    :cond_a5
    invoke-virtual {v4, v1, v1, v0}, Lcom/uc/crashsdk/a/h$a;->a(ZZZ)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    :goto_ad
    if-eqz p1, :cond_c2

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, v4, Lcom/uc/crashsdk/a/h$a;->c:Ljava/util/Map;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/uc/crashsdk/a/h$a;->a:J

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p1

    iput p1, v4, Lcom/uc/crashsdk/a/h$a;->b:I

    :cond_c2
    invoke-virtual {v4, v0, v0, v1}, Lcom/uc/crashsdk/a/h$a;->a(ZZZ)Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 579
    :cond_c9
    monitor-exit p0

    return-void

    :catchall_cb
    move-exception p1

    monitor-exit p0
    :try_end_cd
    .catchall {:try_start_1d .. :try_end_cd} :catchall_cb

    throw p1

    .line 568
    :pswitch_ce  #0x12d
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-nez p0, :cond_db

    if-eqz p1, :cond_d5

    goto :goto_db

    :cond_d5
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 569
    :cond_db
    :goto_db
    aget-object p0, p1, v0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    .line 570
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/h;->a(IZ)V

    return-void

    .line 588
    :cond_e7
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    nop

    :pswitch_data_ee
    .packed-switch 0x12d
        :pswitch_ce  #0000012d
        :pswitch_d  #0000012e
        :pswitch_9  #0000012f
    .end packed-switch
.end method

.method private static a(Lcom/uc/crashsdk/a/h$a;)V
    .registers 5

    .line 471
    sget-object v0, Lcom/uc/crashsdk/a/h;->c:Ljava/util/Map;

    monitor-enter v0

    .line 472
    :try_start_3
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    .line 473
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 474
    sget-object v3, Lcom/uc/crashsdk/a/h;->c:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 475
    invoke-virtual {p0, v2, v3}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_b

    .line 477
    :cond_23
    monitor-exit v0

    return-void

    :catchall_25
    move-exception p0

    monitor-exit v0
    :try_end_27
    .catchall {:try_start_3 .. :try_end_27} :catchall_25

    throw p0
.end method

.method static a(Ljava/lang/String;)V
    .registers 6

    .line 281
    sget-object v0, Lcom/uc/crashsdk/a/h;->b:Ljava/lang/Object;

    monitor-enter v0

    .line 282
    :try_start_3
    new-instance v1, Ljava/io/File;

    invoke-static {}, Lcom/uc/crashsdk/a/h;->l()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 283
    new-instance v2, Lcom/uc/crashsdk/a/h$a;

    const-string v3, "pv"

    const/4 v4, 0x1

    invoke-direct {v2, v3, v4, v4}, Lcom/uc/crashsdk/a/h$a;-><init>(Ljava/lang/String;ZZ)V

    .line 285
    invoke-static {v1}, Lcom/uc/crashsdk/a/g;->c(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 289
    invoke-static {v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_21

    .line 290
    invoke-virtual {v2, v3}, Lcom/uc/crashsdk/a/h$a;->c(Ljava/lang/String;)Z

    :cond_21
    const-wide/16 v3, 0x1

    .line 293
    invoke-virtual {v2, p0, v3, v4}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    const-string p0, "aujv"

    .line 294
    invoke-virtual {v2, p0, v3, v4}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    const/4 p0, 0x0

    .line 296
    invoke-virtual {v2, p0, p0, p0}, Lcom/uc/crashsdk/a/h$a;->a(ZZZ)Ljava/lang/String;

    move-result-object p0

    .line 301
    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    .line 302
    monitor-exit v0

    return-void

    :catchall_35
    move-exception p0

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_3 .. :try_end_37} :catchall_35

    throw p0
.end method

.method public static a(Ljava/lang/String;II)V
    .registers 9

    .line 694
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 701
    :cond_7
    sget-object v0, Lcom/uc/crashsdk/a/h;->f:Ljava/lang/Object;

    monitor-enter v0

    .line 702
    :try_start_a
    sget-object v1, Lcom/uc/crashsdk/a/h;->e:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/uc/crashsdk/a/h$a;

    const/4 v3, 0x1

    if-nez v2, :cond_23

    .line 704
    new-instance v2, Lcom/uc/crashsdk/a/h$a;

    const-string v4, "cst"

    const/4 v5, 0x0

    invoke-direct {v2, v4, v5, v3}, Lcom/uc/crashsdk/a/h$a;-><init>(Ljava/lang/String;ZZ)V

    .line 705
    invoke-interface {v1, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 707
    invoke-static {v2}, Lcom/uc/crashsdk/a/h;->a(Lcom/uc/crashsdk/a/h$a;)V

    .line 710
    :cond_23
    sget-object v1, Lcom/uc/crashsdk/a/h;->h:Landroid/util/SparseArray;

    monitor-enter v1
    :try_end_26
    .catchall {:try_start_a .. :try_end_26} :catchall_16b

    :try_start_26
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-eqz v4, :cond_2f

    :goto_2c
    monitor-exit v1

    goto/16 :goto_13c

    :cond_2f
    const/16 v4, 0x64

    const-string v5, "pv"

    invoke-static {v4, v5}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v4, 0x66

    const-string v5, "hpv"

    invoke-static {v4, v5}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const-string v4, "all"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/4 v3, 0x2

    const-string v4, "afg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x65

    const-string v4, "abg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/4 v3, 0x3

    const-string v4, "jfg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/4 v3, 0x4

    const-string v4, "jbg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/4 v3, 0x7

    const-string v4, "nfg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x8

    const-string v4, "nbg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x1b

    const-string v4, "nafg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x1c

    const-string v4, "nabg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x9

    const-string v4, "nho"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xa

    const-string v4, "uar"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x1d

    const-string v4, "ulm"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x1e

    const-string v4, "ukt"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x1f

    const-string v4, "uet"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x20

    const-string v4, "urs"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xb

    const-string v4, "ufg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xc

    const-string v4, "ubg"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x28

    const-string v4, "anf"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x29

    const-string v4, "anb"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x2a

    const-string v4, "ancf"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x2b

    const-string v4, "ancb"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xd

    const-string v4, "lup"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xe

    const-string v4, "luf"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xf

    const-string v4, "lef"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xc8

    const-string v4, "ltf"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x10

    const-string v4, "laf"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x16

    const-string v4, "lac"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x17

    const-string v4, "lau"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x11

    const-string v4, "llf"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x12

    const-string v4, "lul"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x13

    const-string v4, "lub"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x14

    const-string v4, "luc"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x15

    const-string v4, "luu"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x18

    const-string v4, "lzc"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0xc9

    const-string v4, "lec"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x19

    const-string v4, "lrc"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V

    const/16 v3, 0x1a

    const-string v4, "lss"

    invoke-static {v3, v4}, Lcom/uc/crashsdk/a/h;->a(ILjava/lang/String;)V
    :try_end_13a
    .catchall {:try_start_26 .. :try_end_13a} :catchall_168

    goto/16 :goto_2c

    .line 711
    :goto_13c
    :try_start_13c
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-nez v1, :cond_158

    .line 713
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "map key is not set with: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v3, "crashsdk"

    const/4 v4, 0x0

    invoke-static {v3, p1, v4}, Lcom/uc/crashsdk/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_158
    const-string p1, "prc"

    .line 716
    invoke-virtual {v2, p1, p0}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_166

    .line 718
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, v1, p0}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_166
    monitor-exit v0
    :try_end_167
    .catchall {:try_start_13c .. :try_end_167} :catchall_16b

    return-void

    :catchall_168
    move-exception p0

    .line 710
    :try_start_169
    monitor-exit v1
    :try_end_16a
    .catchall {:try_start_169 .. :try_end_16a} :catchall_168

    :try_start_16a
    throw p0

    :catchall_16b
    move-exception p0

    .line 720
    monitor-exit v0
    :try_end_16d
    .catchall {:try_start_16a .. :try_end_16d} :catchall_16b

    throw p0
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
    .registers 4

    .line 38
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 38
    invoke-static {p0, p1, p2}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Ljava/lang/StringBuilder;Ljava/util/Map;)V
    .registers 5

    .line 38
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {p0, v1, v2}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    :cond_1e
    return-void
.end method

.method public static a(Z)V
    .registers 2

    const/4 v0, 0x1

    .line 537
    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/h;->a(IZ)V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 7

    const/4 v0, 0x0

    .line 446
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "c_"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "[^0-9a-zA-Z-_]"

    const-string v3, "-"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 448
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_20

    const-string p1, ""

    goto :goto_28

    :cond_20
    const-string v1, "[`=]"

    const-string v2, "-"

    .line 451
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_28
    .catchall {:try_start_1 .. :try_end_28} :catchall_45

    .line 458
    :goto_28
    sget-object v1, Lcom/uc/crashsdk/a/h;->c:Ljava/util/Map;

    monitor-enter v1

    .line 459
    :try_start_2b
    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v2, :cond_3d

    .line 460
    sget v2, Lcom/uc/crashsdk/a/h;->d:I

    const/16 v4, 0x14

    if-lt v2, v4, :cond_3a

    .line 461
    monitor-exit v1

    return v0

    :cond_3a
    add-int/2addr v2, v3

    .line 463
    sput v2, Lcom/uc/crashsdk/a/h;->d:I

    .line 465
    :cond_3d
    invoke-interface {v1, p0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    monitor-exit v1

    return v3

    :catchall_42
    move-exception p0

    monitor-exit v1
    :try_end_44
    .catchall {:try_start_2b .. :try_end_44} :catchall_42

    throw p0

    :catchall_45
    move-exception p0

    .line 453
    invoke-static {p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    return v0
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 10

    .line 790
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    return v1

    .line 794
    :cond_8
    invoke-static {}, Lcom/uc/crashsdk/a/h;->m()Ljava/lang/String;

    move-result-object v0

    .line 795
    sget-object v2, Lcom/uc/crashsdk/a/h;->g:Ljava/lang/Object;

    new-instance v3, Lcom/uc/crashsdk/a/e;

    const/16 v4, 0x161

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p0, v5, v1

    const/4 p0, 0x1

    aput-object p1, v5, p0

    const/4 p0, 0x2

    .line 797
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, p0

    const/4 p0, 0x3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    aput-object p1, v5, p0

    invoke-direct {v3, v4, v5}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 795
    invoke-static {v2, v0, v3}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    move-result p0

    return p0
.end method

.method public static a(ZLjava/lang/String;)Z
    .registers 3

    .line 541
    sget-boolean v0, Lcom/uc/crashsdk/b;->d:Z

    if-eqz v0, :cond_21

    if-nez p0, :cond_21

    .line 542
    invoke-static {}, Lcom/uc/crashsdk/JNIBridge;->nativeIsCrashing()Z

    move-result p0

    if-eqz p0, :cond_21

    .line 548
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "Native is crashing, skip stat for "

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "crashsdk"

    invoke-static {p1, p0}, Lcom/uc/crashsdk/a/a;->b(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_21
    const/4 p0, 0x0

    return p0
.end method

.method public static b()V
    .registers 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x0

    .line 330
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->a(IJ)V

    return-void
.end method

.method private static b(IJ)V
    .registers 8

    .line 504
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 507
    :cond_7
    new-instance v0, Lcom/uc/crashsdk/a/e;

    const/16 v1, 0x12d

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 511
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v3, v4

    invoke-direct {v0, v1, v3}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 507
    invoke-static {v2, v0, p1, p2}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    return-void
.end method

.method static b(Ljava/lang/String;)V
    .registers 4

    .line 1074
    sget-object v0, Lcom/uc/crashsdk/a/h;->k:Ljava/lang/Object;

    monitor-enter v0

    .line 1075
    :try_start_3
    sput-object p0, Lcom/uc/crashsdk/a/h;->l:Ljava/lang/String;

    .line 1077
    invoke-static {}, Lcom/uc/crashsdk/b;->h()Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/uc/crashsdk/a/h;->l:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1076
    invoke-static {p0, v1}, Lcom/uc/crashsdk/a/b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 1079
    monitor-exit v0

    return-void

    :catchall_21
    move-exception p0

    monitor-exit v0
    :try_end_23
    .catchall {:try_start_3 .. :try_end_23} :catchall_21

    throw p0
.end method

.method private static b(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    .line 273
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "`"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public static b(Z)V
    .registers 7

    const-string v0, "crash detail upload"

    .line 733
    invoke-static {p0, v0}, Lcom/uc/crashsdk/a/h;->a(ZLjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_9

    return-void

    .line 738
    :cond_9
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "dt.wa"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 739
    sget-object v0, Lcom/uc/crashsdk/a/h;->f:Ljava/lang/Object;

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x160

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-direct {v1, v2, v4}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, p0, v1}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    .line 744
    invoke-static {}, Lcom/uc/crashsdk/a/h;->m()Ljava/lang/String;

    move-result-object p0

    .line 745
    sget-object v0, Lcom/uc/crashsdk/a/h;->g:Ljava/lang/Object;

    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x162

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v5

    invoke-direct {v1, v2, v3}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    invoke-static {v0, p0, v1}, Lcom/uc/crashsdk/b;->a(Ljava/lang/Object;Ljava/lang/String;Lcom/uc/crashsdk/a/e;)Z

    return-void
.end method

.method static b(I[Ljava/lang/Object;)Z
    .registers 11

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch p0, :pswitch_data_126

    return v3

    .line 619
    :pswitch_8  #0x162
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-nez p0, :cond_15

    if-eqz p1, :cond_f

    goto :goto_15

    :cond_f
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 620
    :cond_15
    :goto_15
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    .line 621
    new-instance p1, Ljava/io/File;

    invoke-direct {p1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x1e

    const-string v0, "cst"

    invoke-static {p1, v0, p0}, Lcom/uc/crashsdk/a/h;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-static {}, Lcom/uc/crashsdk/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_3b

    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->b(Ljava/io/File;)V

    :cond_3b
    return p0

    .line 609
    :pswitch_3c  #0x161
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-nez p0, :cond_49

    if-eqz p1, :cond_43

    goto :goto_49

    :cond_43
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 610
    :cond_49
    :goto_49
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    .line 611
    aget-object v2, p1, v2

    check-cast v2, Ljava/lang/String;

    .line 612
    aget-object v1, p1, v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    .line 613
    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 614
    invoke-static {p0, v2, v1, p1}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/String;Ljava/lang/String;ZZ)Z

    move-result p0

    return p0

    .line 603
    :pswitch_66  #0x160
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-nez p0, :cond_73

    if-eqz p1, :cond_6d

    goto :goto_73

    :cond_6d
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 604
    :cond_73
    :goto_73
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    .line 605
    invoke-static {p0}, Lcom/uc/crashsdk/a/h;->d(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 596
    :pswitch_7c  #0x15f
    sget-boolean p0, Lcom/uc/crashsdk/a/h;->a:Z

    if-nez p0, :cond_89

    if-eqz p1, :cond_83

    goto :goto_89

    :cond_83
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 597
    :cond_89
    :goto_89
    aget-object p0, p1, v3

    check-cast p0, Ljava/lang/String;

    .line 598
    aget-object p1, p1, v2

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_9e

    .line 599
    sget-boolean v4, Lcom/uc/crashsdk/a/h;->j:Z

    if-eqz v4, :cond_9c

    return v3

    :cond_9c
    sput-boolean v2, Lcom/uc/crashsdk/a/h;->j:Z

    :cond_9e
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x64

    const-string v5, "crp"

    invoke-static {v4, v5, p0}, Lcom/uc/crashsdk/a/h;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v6, 0x4

    if-eq p1, v6, :cond_ff

    new-instance v6, Lcom/uc/crashsdk/a/h$a;

    invoke-direct {v6, v5, v3, v3}, Lcom/uc/crashsdk/a/h$a;-><init>(Ljava/lang/String;ZZ)V

    const-string v5, "ete"

    const-string v7, "et"

    const-string v8, "1"

    if-ne p1, v2, :cond_d2

    invoke-static {}, Lcom/uc/crashsdk/b;->F()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v7, p1}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/b;->G()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v6, v5, p1}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :cond_d2
    if-ne p1, v0, :cond_db

    invoke-virtual {v6, v7, v8}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v5, v8}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e2

    :cond_db
    if-ne p1, v1, :cond_e2

    const-string p1, "hpv"

    invoke-virtual {v6, p1, v8}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_e2
    :goto_e2
    invoke-static {}, Lcom/uc/crashsdk/e;->h()Ljava/lang/String;

    move-result-object p1

    const-string v0, "prc"

    invoke-virtual {v6, v0, p1}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/uc/crashsdk/b;->C()Z

    move-result p1

    if-eqz p1, :cond_f2

    goto :goto_f4

    :cond_f2
    const-string v8, "0"

    :goto_f4
    const-string p1, "imp"

    invoke-virtual {v6, p1, v8}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v6}, Lcom/uc/crashsdk/a/h;->a(Lcom/uc/crashsdk/a/h$a;)V

    invoke-virtual {p0, v3, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_ff
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_125

    invoke-static {p0, v2, v3}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-static {}, Lcom/uc/crashsdk/e;->p()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    invoke-static {v4}, Lcom/uc/crashsdk/a/g;->b(Ljava/io/File;)V

    if-nez p1, :cond_125

    invoke-static {p0, v3, v2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    :cond_125
    return v2

    :pswitch_data_126
    .packed-switch 0x15f
        :pswitch_7c  #0000015f
        :pswitch_66  #00000160
        :pswitch_3c  #00000161
        :pswitch_8  #00000162
    .end packed-switch
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 11

    .line 953
    invoke-static {p1}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    .line 961
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p1

    const/16 v0, 0x10

    const/16 v2, 0x8

    const/4 v3, 0x0

    :try_start_11
    new-array v0, v0, [B

    .line 968
    invoke-static {}, Lcom/uc/crashsdk/a/c;->a()[B

    move-result-object v4

    invoke-static {v0, v3, v4}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    const/4 v4, 0x4

    .line 969
    invoke-static {}, Lcom/uc/crashsdk/a/h;->j()[B

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    .line 970
    invoke-static {}, Lcom/uc/crashsdk/a;->f()[B

    move-result-object v4

    invoke-static {v0, v2, v4}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    const/16 v4, 0xc

    .line 971
    invoke-static {}, Lcom/uc/crashsdk/a/d;->c()[B

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/uc/crashsdk/a/c;->a([BI[B)V

    .line 973
    invoke-static {p1, v0}, Lcom/uc/crashsdk/a/c;->a([B[B)[B

    move-result-object v0
    :try_end_36
    .catchall {:try_start_11 .. :try_end_36} :catchall_3b

    if-eqz v0, :cond_3f

    move-object p1, v0

    const/4 v0, 0x1

    goto :goto_40

    :catchall_3b
    move-exception v0

    .line 980
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_3f
    const/4 v0, 0x0

    :goto_40
    if-nez p0, :cond_44

    const-string p0, "unknown"

    .line 984
    :cond_44
    invoke-static {}, Lcom/uc/crashsdk/g;->P()Z

    move-result v4

    if-eqz v4, :cond_4d

    const-string v4, "4ea4e41a3993"

    goto :goto_4f

    :cond_4d
    const-string v4, "28ef1713347d"

    :goto_4f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, "AppChk#2014"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/uc/crashsdk/a/g;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_76

    const/4 p0, 0x0

    goto :goto_ba

    :cond_76
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/a/h;->o()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "?chk="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    sub-int/2addr v8, v2

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v6, v8, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&vno="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "&uuid="

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "&app="

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_b6

    const-string p0, "&enc=aes"

    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b6
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :goto_ba
    if-nez p0, :cond_bd

    return v3

    .line 992
    :cond_bd
    invoke-static {p0, p1}, Lcom/uc/crashsdk/a/c;->a(Ljava/lang/String;[B)[B

    move-result-object p0

    if-nez p0, :cond_c4

    return v3

    .line 997
    :cond_c4
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, p0}, Ljava/lang/String;-><init>([B)V

    const-string p0, "retcode=0"

    .line 1003
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_d2

    return v1

    :cond_d2
    return v3
.end method

.method private static b(Ljava/lang/String;Ljava/lang/String;ZZ)Z
    .registers 15

    .line 803
    invoke-static {}, Lcom/uc/crashsdk/a/h;->m()Ljava/lang/String;

    move-result-object v0

    .line 804
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string v0, "cst"

    const/16 v2, 0x1e

    .line 807
    invoke-static {v1, v0, v2}, Lcom/uc/crashsdk/a/h;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v2

    .line 808
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 810
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_24
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const-string v6, "typ"

    const-string v7, "prc"

    if-eqz v5, :cond_52

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/uc/crashsdk/a/h$a;

    .line 811
    invoke-virtual {v5, v7}, Lcom/uc/crashsdk/a/h$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 812
    invoke-virtual {v5, v6}, Lcom/uc/crashsdk/a/h$a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 813
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_24

    goto :goto_53

    :cond_52
    const/4 v5, 0x0

    :goto_53
    const/4 v3, 0x0

    if-nez v5, :cond_68

    .line 820
    new-instance v5, Lcom/uc/crashsdk/a/h$a;

    const/4 v4, 0x1

    invoke-direct {v5, v0, v3, v4}, Lcom/uc/crashsdk/a/h$a;-><init>(Ljava/lang/String;ZZ)V

    .line 821
    invoke-virtual {v5, v7, p0}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 822
    invoke-virtual {v5, v6, p1}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 823
    invoke-static {v5}, Lcom/uc/crashsdk/a/h;->a(Lcom/uc/crashsdk/a/h$a;)V

    .line 824
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_68
    const-string p0, "cnt"

    const-wide/16 v6, 0x1

    .line 827
    invoke-virtual {v5, p0, v6, v7}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    if-eqz p2, :cond_76

    const-string p0, "lim"

    .line 829
    invoke-virtual {v5, p0, v6, v7}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    :cond_76
    if-eqz p3, :cond_7d

    const-string p0, "syu"

    .line 832
    invoke-virtual {v5, p0, v6, v7}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;J)V

    .line 836
    :cond_7d
    invoke-static {v2, v3, v3}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object p0

    .line 837
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Ljava/lang/String;)Ljava/util/Map;
    .registers 9

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "`"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_e
    if-ge v3, v1, :cond_2e

    aget-object v4, p0, v3

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_2b

    const/4 v5, 0x3

    const-string v7, "="

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v7, 0x2

    if-ne v5, v7, :cond_2b

    aget-object v5, v4, v2

    aget-object v4, v4, v6

    invoke-interface {v0, v5, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto :goto_e

    :cond_2e
    return-object v0
.end method

.method public static c()V
    .registers 3

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    .line 334
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->a(IJ)V

    return-void
.end method

.method public static d()V
    .registers 3

    const/4 v0, 0x2

    const-wide/16 v1, 0x7d0

    .line 427
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->b(IJ)V

    const/4 v0, 0x1

    const-wide/32 v1, 0x11170

    .line 430
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->a(IJ)V

    return-void
.end method

.method private static d(Ljava/lang/String;)Z
    .registers 6

    .line 752
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-string p0, "cst"

    const/16 v1, 0x1e

    .line 753
    invoke-static {v0, p0, v1}, Lcom/uc/crashsdk/a/h;->a(Ljava/io/File;Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object p0

    .line 756
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_11
    :goto_11
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/uc/crashsdk/a/h$a;

    const-string v2, "prc"

    .line 757
    invoke-virtual {v1, v2}, Lcom/uc/crashsdk/a/h$a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-static {v2}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_11

    .line 759
    sget-object v3, Lcom/uc/crashsdk/a/h;->e:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/uc/crashsdk/a/h$a;

    if-eqz v4, :cond_37

    .line 764
    invoke-virtual {v4, v1}, Lcom/uc/crashsdk/a/h$a;->a(Lcom/uc/crashsdk/a/h$a;)Z

    goto :goto_11

    .line 766
    :cond_37
    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11

    .line 770
    :cond_3b
    sget-object p0, Lcom/uc/crashsdk/a/h;->e:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 772
    invoke-static {}, Lcom/uc/crashsdk/e;->p()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Lcom/uc/crashsdk/a/h;->b(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    .line 773
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->b(Ljava/io/File;)V

    if-nez v1, :cond_6a

    .line 776
    invoke-interface {p0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-static {v1, v3, v2}, Lcom/uc/crashsdk/a/h;->a(Ljava/lang/Iterable;ZZ)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 777
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6d

    .line 778
    :cond_6a
    invoke-interface {p0}, Ljava/util/Map;->clear()V

    :cond_6d
    return v2
.end method

.method public static e()Z
    .registers 1

    .line 500
    sget-boolean v0, Lcom/uc/crashsdk/a/h;->j:Z

    return v0
.end method

.method public static f()V
    .registers 3

    const/4 v0, 0x1

    const-wide/16 v1, 0x7d0

    .line 521
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->b(IJ)V

    return-void
.end method

.method public static g()V
    .registers 3

    const/4 v0, 0x3

    const-wide/16 v1, 0x0

    .line 529
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->b(IJ)V

    return-void
.end method

.method public static h()V
    .registers 3

    const/4 v0, 0x4

    const-wide/16 v1, 0x0

    .line 533
    invoke-static {v0, v1, v2}, Lcom/uc/crashsdk/a/h;->b(IJ)V

    return-void
.end method

.method public static i()V
    .registers 3

    .line 724
    invoke-static {}, Lcom/uc/crashsdk/g;->O()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    const/4 v0, 0x1

    .line 728
    new-instance v1, Lcom/uc/crashsdk/a/e;

    const/16 v2, 0x12f

    invoke-direct {v1, v2}, Lcom/uc/crashsdk/a/e;-><init>(I)V

    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;)Z

    return-void
.end method

.method static j()[B
    .registers 1

    const/4 v0, 0x4

    new-array v0, v0, [B

    .line 1037
    fill-array-data v0, :array_8

    return-object v0

    nop

    :array_8
    .array-data 1
        0x7ft
        0x64t
        0x6et
        0x1ft
    .end array-data
.end method

.method static synthetic k()J
    .registers 2

    .line 38
    invoke-static {}, Lcom/uc/crashsdk/a/h;->n()J

    move-result-wide v0

    return-wide v0
.end method

.method private static l()Ljava/lang/String;
    .registers 2

    .line 937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "pv.wa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static m()Ljava/lang/String;
    .registers 2

    .line 949
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/uc/crashsdk/g;->U()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "cdt.wa"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static n()J
    .registers 3

    .line 1011
    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/meminfo"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    .line 1012
    invoke-static {v0, v1}, Lcom/uc/crashsdk/a/g;->a(Ljava/io/File;I)Ljava/util/ArrayList;

    move-result-object v0

    .line 1015
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "MemTotal:"

    .line 1016
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_10

    :try_start_24
    const-string v0, "\\D+"

    const-string v2, ""

    .line 1018
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_30
    .catch Ljava/lang/NumberFormatException; {:try_start_24 .. :try_end_30} :catch_31

    goto :goto_37

    :catch_31
    move-exception v0

    .line 1019
    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/Throwable;)V

    :cond_35
    const-wide/16 v0, 0x0

    :goto_37
    return-wide v0
.end method

.method private static o()Ljava/lang/String;
    .registers 4

    .line 1083
    sget-object v0, Lcom/uc/crashsdk/a/h;->l:Ljava/lang/String;

    invoke-static {v0}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1084
    sget-object v0, Lcom/uc/crashsdk/a/h;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_b
    const-string v1, "https://errlog.umeng.com/api/crashsdk/logcollect"

    .line 1086
    invoke-static {}, Lcom/uc/crashsdk/g;->P()Z

    move-result v2

    if-eqz v2, :cond_15

    const-string v1, "https://errlogos.umeng.com/api/crashsdk/logcollect"

    .line 1090
    :cond_15
    invoke-static {}, Lcom/uc/crashsdk/b;->h()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 1089
    invoke-static {v2, v1, v3}, Lcom/uc/crashsdk/a/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/uc/crashsdk/a/h;->l:Ljava/lang/String;

    .line 1092
    monitor-exit v0

    goto :goto_25

    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_b .. :try_end_24} :catchall_22

    throw v1

    .line 1094
    :cond_25
    :goto_25
    sget-object v0, Lcom/uc/crashsdk/a/h;->l:Ljava/lang/String;

    return-object v0
.end method
