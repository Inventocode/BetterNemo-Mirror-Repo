.class public Lcom/chuanglan/shanyan_sdk/utils/y;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/util/Timer;


# direct methods
.method public static declared-synchronized a()V
    .registers 2

    const-class v0, Lcom/chuanglan/shanyan_sdk/utils/y;

    monitor-enter v0

    :try_start_3
    sget-object v1, Lcom/chuanglan/shanyan_sdk/utils/y;->a:Ljava/util/Timer;

    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/util/Timer;->cancel()V

    const/4 v1, 0x0

    sput-object v1, Lcom/chuanglan/shanyan_sdk/utils/y;->a:Ljava/util/Timer;
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f

    :cond_d
    monitor-exit v0

    return-void

    :catchall_f
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static a(Ljava/lang/String;JIJJJ)V
    .registers 21

    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/y;->a:Ljava/util/Timer;

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    sput-object v0, Lcom/chuanglan/shanyan_sdk/utils/y;->a:Ljava/util/Timer;

    :cond_b
    sget-object v0, Lcom/chuanglan/shanyan_sdk/utils/y;->a:Ljava/util/Timer;

    new-instance v10, Lcom/chuanglan/shanyan_sdk/utils/y$1;

    move-object v1, v10

    move-object v2, p0

    move v3, p3

    move-wide v4, p4

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    invoke-direct/range {v1 .. v9}, Lcom/chuanglan/shanyan_sdk/utils/y$1;-><init>(Ljava/lang/String;IJJJ)V

    move-wide v1, p1

    invoke-virtual {v0, v10, p1, p2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method
