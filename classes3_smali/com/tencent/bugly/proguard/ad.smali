.class public final Lcom/tencent/bugly/proguard/ad;
.super Ljava/lang/Thread;
.source "BUGLY"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/tencent/bugly/proguard/ad$a;
    }
.end annotation


# instance fields
.field private a:Z

.field private b:Z

.field private c:Z

.field private d:I

.field private e:Lcom/tencent/bugly/proguard/ac;

.field private f:Lcom/tencent/bugly/proguard/ad$a;

.field private g:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    .line 18
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->a:Z

    const/4 v1, 0x1

    .line 27
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    .line 28
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->c:Z

    .line 29
    iput v1, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    .line 32
    iput-boolean v1, p0, Lcom/tencent/bugly/proguard/ad;->g:Z

    return-void
.end method

.method private declared-synchronized a(Lcom/tencent/bugly/proguard/ac;)V
    .registers 4

    monitor-enter p0

    .line 189
    :try_start_1
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->b:Z
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_20

    if-eqz v0, :cond_7

    .line 190
    monitor-exit p0

    return-void

    .line 193
    :cond_7
    :try_start_7
    iget-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->c:Z

    if-eqz v0, :cond_1e

    invoke-virtual {p1}, Lcom/tencent/bugly/proguard/ac;->b()Z

    move-result p1

    if-nez p1, :cond_1e

    const-string p1, "Restart getting main stack trace."

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    .line 194
    invoke-static {p1, v1}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 p1, 0x1

    .line 195
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    .line 196
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->c:Z
    :try_end_1e
    .catchall {:try_start_7 .. :try_end_1e} :catchall_20

    .line 198
    :cond_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public final a(Lcom/tencent/bugly/proguard/ad$a;)V
    .registers 2

    .line 80
    iput-object p1, p0, Lcom/tencent/bugly/proguard/ad;->f:Lcom/tencent/bugly/proguard/ad$a;

    return-void
.end method

.method public final a(Z)V
    .registers 4

    .line 35
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ad;->g:Z

    .line 36
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "set record stack trace enable:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void
.end method

.method public final a()Z
    .registers 4

    const/4 v0, 0x1

    .line 43
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->a:Z

    .line 44
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_b

    return v2

    .line 48
    :cond_b
    :try_start_b
    invoke-virtual {p0}, Ljava/lang/Thread;->interrupt()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_e} :catch_f

    goto :goto_13

    :catch_f
    move-exception v1

    .line 50
    invoke-static {v1}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_13
    new-array v1, v2, [Ljava/lang/Object;

    const-string v2, "MainHandlerChecker is reset to null."

    .line 52
    invoke-static {v2, v1}, Lcom/tencent/bugly/proguard/y;->d(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    return v0
.end method

.method public final declared-synchronized b(Z)V
    .registers 2

    monitor-enter p0

    const/4 p1, 0x1

    .line 214
    :try_start_2
    iput-boolean p1, p0, Lcom/tencent/bugly/proguard/ad;->c:Z
    :try_end_4
    .catchall {:try_start_2 .. :try_end_4} :catchall_6

    .line 215
    monitor-exit p0

    return-void

    :catchall_6
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public final b()Z
    .registers 6

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iget-object v1, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    const-wide/16 v2, 0x1388

    if-eqz v1, :cond_13

    invoke-virtual {v1, v2, v3}, Lcom/tencent/bugly/proguard/ac;->a(J)V

    goto :goto_26

    :cond_13
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/tencent/bugly/proguard/ac;

    invoke-direct {v4, v0, v1, v2, v3}, Lcom/tencent/bugly/proguard/ac;-><init>(Landroid/os/Handler;Ljava/lang/String;J)V

    iput-object v4, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    .line 62
    :goto_26
    invoke-virtual {p0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2e

    return v1

    .line 66
    :cond_2e
    :try_start_2e
    invoke-virtual {p0}, Ljava/lang/Thread;->start()V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_31} :catch_33

    const/4 v1, 0x1

    goto :goto_37

    :catch_33
    move-exception v0

    .line 69
    invoke-static {v0}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    :goto_37
    return v1
.end method

.method public final c()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/tencent/bugly/crashreport/crash/anr/c;",
            ">;"
        }
    .end annotation

    .line 179
    iget-object v0, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    const-wide/32 v1, 0x30d40

    invoke-virtual {v0, v1, v2}, Lcom/tencent/bugly/proguard/ac;->b(J)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final declared-synchronized d()V
    .registers 3

    monitor-enter p0

    const/4 v0, 0x0

    .line 204
    :try_start_2
    iput-boolean v0, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    const-string v1, "Record stack trace is disabled."

    new-array v0, v0, [Ljava/lang/Object;

    .line 205
    invoke-static {v1, v0}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z
    :try_end_b
    .catchall {:try_start_2 .. :try_end_b} :catchall_d

    .line 206
    monitor-exit p0

    return-void

    :catchall_d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public final run()V
    .registers 11

    .line 107
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 108
    :goto_4
    iget-boolean v2, p0, Lcom/tencent/bugly/proguard/ad;->a:Z

    if-nez v2, :cond_8f

    .line 111
    :try_start_8
    iget-object v2, p0, Lcom/tencent/bugly/proguard/ad;->e:Lcom/tencent/bugly/proguard/ac;

    const/4 v3, 0x0

    if-nez v2, :cond_15

    const-string v2, "Main handler checker is null. Stop thread monitor."

    new-array v3, v3, [Ljava/lang/Object;

    .line 112
    invoke-static {v2, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    return-void

    .line 117
    :cond_15
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->a()V

    .line 118
    invoke-direct {p0, v2}, Lcom/tencent/bugly/proguard/ad;->a(Lcom/tencent/bugly/proguard/ac;)V

    .line 120
    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ad;->g:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5e

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    if-nez v4, :cond_25

    goto :goto_5e

    :cond_25
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->c()J

    move-result-wide v6

    const-wide/16 v8, 0x5e6

    cmp-long v4, v6, v8

    if-lez v4, :cond_5e

    const-wide/32 v8, 0x30d36

    cmp-long v4, v6, v8

    if-ltz v4, :cond_37

    goto :goto_5e

    :cond_37
    const-wide/16 v8, 0x1392

    cmp-long v4, v6, v8

    if-gtz v4, :cond_48

    iput v5, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    const-string v4, "timeSinceMsgSent in [2s, 5s], record stack"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    const/4 v3, 0x1

    goto :goto_5e

    :cond_48
    iget v4, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    add-int/2addr v4, v5

    iput v4, p0, Lcom/tencent/bugly/proguard/ad;->d:I

    add-int/lit8 v6, v4, -0x1

    and-int/2addr v4, v6

    if-nez v4, :cond_53

    goto :goto_54

    :cond_53
    const/4 v5, 0x0

    :goto_54
    if-eqz v5, :cond_5d

    const-string v4, "timeSinceMsgSent in (5s, 200s), should record stack:true"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v4, v3}, Lcom/tencent/bugly/proguard/y;->c(Ljava/lang/String;[Ljava/lang/Object;)Z

    :cond_5d
    move v3, v5

    :cond_5e
    :goto_5e
    if-eqz v3, :cond_63

    .line 121
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->d()V

    .line 123
    :cond_63
    iget-object v3, p0, Lcom/tencent/bugly/proguard/ad;->f:Lcom/tencent/bugly/proguard/ad$a;

    if-eqz v3, :cond_76

    iget-boolean v4, p0, Lcom/tencent/bugly/proguard/ad;->b:Z

    if-eqz v4, :cond_76

    .line 124
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->b()Z

    move-result v4

    .line 125
    invoke-virtual {v2}, Lcom/tencent/bugly/proguard/ac;->c()J

    move-result-wide v5

    .line 124
    invoke-interface {v3, v4, v5, v6}, Lcom/tencent/bugly/proguard/ad$a;->a(ZJ)V

    .line 130
    :cond_76
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    const-wide/16 v4, 0x1f4

    rem-long/2addr v2, v4

    sub-long/2addr v4, v2

    .line 131
    invoke-static {v4, v5}, Lcom/tencent/bugly/proguard/ab;->b(J)V
    :try_end_82
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_82} :catch_89
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_82} :catch_83

    goto :goto_4

    :catch_83
    move-exception v2

    .line 135
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_4

    :catch_89
    move-exception v2

    .line 133
    invoke-static {v2}, Lcom/tencent/bugly/proguard/y;->b(Ljava/lang/Throwable;)Z

    goto/16 :goto_4

    :cond_8f
    return-void
.end method
