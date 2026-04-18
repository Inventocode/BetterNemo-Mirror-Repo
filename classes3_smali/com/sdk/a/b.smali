.class public Lcom/sdk/a/b;
.super Ljava/lang/Object;


# static fields
.field public static c:J = 0xea60L

.field public static final d:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:Lcom/sdk/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/b/c<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    sput-object v0, Lcom/sdk/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "GET"

    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    return-void
.end method

.method public constructor <init>(IJ)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sput-wide p2, Lcom/sdk/a/b;->c:J

    new-instance p2, Lcom/sdk/a/b$a;

    invoke-direct {p2, p0, p1}, Lcom/sdk/a/b$a;-><init>(Lcom/sdk/a/b;I)V

    iput-object p2, p0, Lcom/sdk/a/b;->a:Lcom/sdk/b/c;

    return-void
.end method

.method public static a()J
    .registers 2

    sget-wide v0, Lcom/sdk/a/b;->c:J

    return-wide v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    const/4 v0, 0x0

    if-eqz p1, :cond_3b

    iget-object v1, p0, Lcom/sdk/a/b;->a:Lcom/sdk/b/c;

    monitor-enter v1

    :try_start_6
    iget-object v2, v1, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v2, p1}, Lcom/sdk/b/b;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2b

    monitor-enter v1
    :try_end_f
    .catchall {:try_start_6 .. :try_end_f} :catchall_38

    :try_start_f
    iget-object v2, v1, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, v1, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-virtual {v3, p1}, Lcom/sdk/b/b;->a(Ljava/lang/Object;)Ljava/lang/Long;

    if-eqz v2, :cond_25

    iget v3, v1, Lcom/sdk/b/c;->b:I

    invoke-virtual {v1, p1, v2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr v3, p1

    iput v3, v1, Lcom/sdk/b/c;->b:I

    :cond_25
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_f .. :try_end_26} :catchall_28

    :cond_26
    :try_start_26
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_38

    goto :goto_35

    :catchall_28
    move-exception p1

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    :try_start_2a
    throw p1

    :cond_2b
    iget-object v2, v1, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {v2, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_26

    monitor-exit v1
    :try_end_34
    .catchall {:try_start_2a .. :try_end_34} :catchall_38

    move-object v0, p1

    :goto_35
    check-cast v0, Ljava/lang/String;

    goto :goto_3b

    :catchall_38
    move-exception p1

    :try_start_39
    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw p1

    :cond_3b
    :goto_3b
    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;J)V
    .registers 8

    if-eqz p1, :cond_40

    if-eqz p2, :cond_40

    const-wide/16 v0, 0x1

    cmp-long v2, p3, v0

    if-gez v2, :cond_b

    goto :goto_40

    :cond_b
    iget-object v0, p0, Lcom/sdk/a/b;->a:Lcom/sdk/b/c;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    add-long/2addr v1, p3

    monitor-enter v0

    :try_start_13
    iget p3, v0, Lcom/sdk/b/c;->b:I

    invoke-virtual {v0, p1, p2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p4

    add-int/2addr p3, p4

    iput p3, v0, Lcom/sdk/b/c;->b:I

    iget-object p3, v0, Lcom/sdk/b/c;->a:Ljava/util/LinkedHashMap;

    invoke-virtual {p3, p1, p2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    iget-object p3, v0, Lcom/sdk/b/c;->d:Lcom/sdk/b/b;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, p1, p4}, Lcom/sdk/b/b;->a(Ljava/lang/Object;Ljava/lang/Long;)Ljava/lang/Long;

    if-eqz p2, :cond_36

    iget p3, v0, Lcom/sdk/b/c;->b:I

    invoke-virtual {v0, p1, p2}, Lcom/sdk/b/c;->a(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    sub-int/2addr p3, p1

    iput p3, v0, Lcom/sdk/b/c;->b:I

    :cond_36
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_13 .. :try_end_37} :catchall_3d

    iget p1, v0, Lcom/sdk/b/c;->c:I

    invoke-virtual {v0, p1}, Lcom/sdk/b/c;->a(I)V

    return-void

    :catchall_3d
    move-exception p1

    :try_start_3e
    monitor-exit v0
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw p1

    :cond_40
    :goto_40
    return-void
.end method

.method public b(Ljava/lang/String;)Z
    .registers 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "DefaultLocale"
        }
    .end annotation

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    return v1

    :cond_8
    sget-object v0, Lcom/sdk/a/b;->d:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    if-nez p1, :cond_17

    goto :goto_1b

    :cond_17
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :goto_1b
    return v1
.end method
