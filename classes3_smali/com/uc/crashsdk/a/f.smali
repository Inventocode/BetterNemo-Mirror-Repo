.class public Lcom/uc/crashsdk/a/f;
.super Ljava/lang/Object;
.source "ProGuard"


# static fields
.field static final synthetic a:Z = true

.field private static volatile b:Landroid/os/HandlerThread;

.field private static volatile c:Landroid/os/HandlerThread;

.field private static volatile d:Landroid/os/HandlerThread;

.field private static e:Landroid/os/Handler;

.field private static f:Landroid/os/Handler;

.field private static g:Landroid/os/Handler;

.field private static h:Landroid/os/Handler;

.field private static final i:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 21
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/uc/crashsdk/a/f;->i:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(I)Landroid/os/Handler;
    .registers 4

    if-eqz p0, :cond_45

    const/4 v0, 0x1

    if-eq p0, v0, :cond_3b

    const/4 v0, 0x2

    if-eq p0, v0, :cond_29

    const/4 v0, 0x3

    if-ne p0, v0, :cond_15

    .line 54
    sget-object p0, Lcom/uc/crashsdk/a/f;->h:Landroid/os/Handler;

    if-nez p0, :cond_12

    .line 55
    invoke-static {}, Lcom/uc/crashsdk/a/f;->c()V

    .line 57
    :cond_12
    sget-object p0, Lcom/uc/crashsdk/a/f;->h:Landroid/os/Handler;

    goto :goto_4e

    .line 61
    :cond_15
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "unknown thread type: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 47
    :cond_29
    sget-object p0, Lcom/uc/crashsdk/a/f;->g:Landroid/os/Handler;

    if-nez p0, :cond_38

    .line 48
    new-instance p0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object p0, Lcom/uc/crashsdk/a/f;->g:Landroid/os/Handler;

    .line 50
    :cond_38
    sget-object p0, Lcom/uc/crashsdk/a/f;->g:Landroid/os/Handler;

    goto :goto_4e

    .line 40
    :cond_3b
    sget-object p0, Lcom/uc/crashsdk/a/f;->c:Landroid/os/HandlerThread;

    if-nez p0, :cond_42

    .line 41
    invoke-static {}, Lcom/uc/crashsdk/a/f;->b()V

    .line 43
    :cond_42
    sget-object p0, Lcom/uc/crashsdk/a/f;->f:Landroid/os/Handler;

    goto :goto_4e

    .line 33
    :cond_45
    sget-object p0, Lcom/uc/crashsdk/a/f;->b:Landroid/os/HandlerThread;

    if-nez p0, :cond_4c

    .line 34
    invoke-static {}, Lcom/uc/crashsdk/a/f;->a()V

    .line 36
    :cond_4c
    sget-object p0, Lcom/uc/crashsdk/a/f;->e:Landroid/os/Handler;

    :goto_4e
    return-object p0
.end method

.method private static declared-synchronized a()V
    .registers 4

    const-class v0, Lcom/uc/crashsdk/a/f;

    monitor-enter v0

    .line 189
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/a/f;->b:Landroid/os/HandlerThread;

    if-nez v1, :cond_22

    .line 190
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CrashSDKBkgdHandler"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 192
    sput-object v1, Lcom/uc/crashsdk/a/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 193
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/uc/crashsdk/a/f;->b:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/uc/crashsdk/a/f;->e:Landroid/os/Handler;
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_24

    .line 195
    :cond_22
    monitor-exit v0

    return-void

    :catchall_24
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(I[Ljava/lang/Object;)V
    .registers 3

    const/16 v0, 0xa

    if-eq p0, v0, :cond_f

    .line 115
    sget-boolean p0, Lcom/uc/crashsdk/a/f;->a:Z

    if-eqz p0, :cond_9

    return-void

    :cond_9
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    .line 110
    :cond_f
    sget-boolean p0, Lcom/uc/crashsdk/a/f;->a:Z

    if-nez p0, :cond_1c

    if-eqz p1, :cond_16

    goto :goto_1c

    :cond_16
    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    .line 111
    aget-object p0, p1, p0

    check-cast p0, Ljava/lang/Runnable;

    sget-object p1, Lcom/uc/crashsdk/a/f;->i:Ljava/util/HashMap;

    monitor-enter p1

    :try_start_24
    invoke-virtual {p1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2d
    monitor-exit p1
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_32

    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    return-void

    :catchall_32
    move-exception p0

    :try_start_33
    monitor-exit p1
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    throw p0
.end method

.method public static a(Ljava/lang/Runnable;)V
    .registers 6

    if-nez p0, :cond_3

    return-void

    .line 132
    :cond_3
    sget-object v0, Lcom/uc/crashsdk/a/f;->i:Ljava/util/HashMap;

    monitor-enter v0

    .line 134
    :try_start_6
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 135
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_6 .. :try_end_d} :catchall_43

    if-nez v1, :cond_10

    return-void

    :cond_10
    const/4 v2, 0x1

    .line 140
    aget-object v3, v1, v2

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_28

    if-eq v3, v2, :cond_25

    const/4 v2, 0x2

    if-eq v3, v2, :cond_22

    goto :goto_2a

    .line 156
    :cond_22
    sget-object v4, Lcom/uc/crashsdk/a/f;->g:Landroid/os/Handler;

    goto :goto_2a

    .line 152
    :cond_25
    sget-object v4, Lcom/uc/crashsdk/a/f;->f:Landroid/os/Handler;

    goto :goto_2a

    .line 148
    :cond_28
    sget-object v4, Lcom/uc/crashsdk/a/f;->e:Landroid/os/Handler;

    :goto_2a
    if-eqz v4, :cond_34

    const/4 v2, 0x0

    .line 164
    aget-object v1, v1, v2

    check-cast v1, Ljava/lang/Runnable;

    .line 165
    invoke-virtual {v4, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 168
    :cond_34
    monitor-enter v0

    .line 169
    :try_start_35
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_3e

    .line 170
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    :cond_3e
    monitor-exit v0

    return-void

    :catchall_40
    move-exception p0

    monitor-exit v0
    :try_end_42
    .catchall {:try_start_35 .. :try_end_42} :catchall_40

    throw p0

    :catchall_43
    move-exception p0

    .line 135
    :try_start_44
    monitor-exit v0
    :try_end_45
    .catchall {:try_start_44 .. :try_end_45} :catchall_43

    throw p0
.end method

.method public static a(ILjava/lang/Runnable;)Z
    .registers 4

    const-wide/16 v0, 0x0

    .line 121
    invoke-static {p0, p1, v0, v1}, Lcom/uc/crashsdk/a/f;->a(ILjava/lang/Runnable;J)Z

    move-result p0

    return p0
.end method

.method public static a(ILjava/lang/Runnable;J)Z
    .registers 10

    const/4 v0, 0x0

    if-nez p1, :cond_4

    return v0

    .line 76
    :cond_4
    invoke-static {p0}, Lcom/uc/crashsdk/a/f;->a(I)Landroid/os/Handler;

    move-result-object v1

    if-nez v1, :cond_b

    return v0

    .line 81
    :cond_b
    new-instance v2, Lcom/uc/crashsdk/a/e;

    const/16 v3, 0xa

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    aput-object p1, v5, v0

    invoke-direct {v2, v3, v5}, Lcom/uc/crashsdk/a/e;-><init>(I[Ljava/lang/Object;)V

    .line 85
    sget-object v3, Lcom/uc/crashsdk/a/f;->i:Ljava/util/HashMap;

    monitor-enter v3

    const/4 v5, 0x2

    :try_start_1b
    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v0

    .line 86
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    aput-object p0, v5, v4

    invoke-virtual {v3, p1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    monitor-exit v3
    :try_end_29
    .catchall {:try_start_1b .. :try_end_29} :catchall_2e

    .line 88
    invoke-virtual {v1, v2, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p0

    return p0

    :catchall_2e
    move-exception p0

    .line 87
    :try_start_2f
    monitor-exit v3
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    throw p0
.end method

.method private static declared-synchronized b()V
    .registers 4

    const-class v0, Lcom/uc/crashsdk/a/f;

    monitor-enter v0

    .line 198
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/a/f;->c:Landroid/os/HandlerThread;

    if-nez v1, :cond_21

    .line 199
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CrashSDKNormalHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 201
    sput-object v1, Lcom/uc/crashsdk/a/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 202
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/uc/crashsdk/a/f;->c:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/uc/crashsdk/a/f;->f:Landroid/os/Handler;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 204
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static b(Ljava/lang/Runnable;)Z
    .registers 3

    const/4 v0, 0x0

    if-nez p0, :cond_4

    return v0

    .line 180
    :cond_4
    sget-object v1, Lcom/uc/crashsdk/a/f;->i:Ljava/util/HashMap;

    monitor-enter v1

    .line 182
    :try_start_7
    invoke-virtual {v1, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Object;

    .line 183
    monitor-exit v1

    if-eqz p0, :cond_12

    const/4 p0, 0x1

    return p0

    :cond_12
    return v0

    :catchall_13
    move-exception p0

    monitor-exit v1
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_13

    throw p0
.end method

.method private static declared-synchronized c()V
    .registers 4

    const-class v0, Lcom/uc/crashsdk/a/f;

    monitor-enter v0

    .line 207
    :try_start_3
    sget-object v1, Lcom/uc/crashsdk/a/f;->d:Landroid/os/HandlerThread;

    if-nez v1, :cond_21

    .line 208
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "CrashSDKAnrHandler"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 210
    sput-object v1, Lcom/uc/crashsdk/a/f;->d:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 211
    new-instance v1, Landroid/os/Handler;

    sget-object v2, Lcom/uc/crashsdk/a/f;->d:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v1, Lcom/uc/crashsdk/a/f;->h:Landroid/os/Handler;
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_23

    .line 213
    :cond_21
    monitor-exit v0

    return-void

    :catchall_23
    move-exception v1

    monitor-exit v0

    throw v1
.end method
