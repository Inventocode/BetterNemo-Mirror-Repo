.class Lcom/umeng/commonsdk/framework/a$2;
.super Landroid/os/Handler;
.source "UMNetWorkSender.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/umeng/commonsdk/framework/a;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/umeng/commonsdk/framework/a;


# direct methods
.method constructor <init>(Lcom/umeng/commonsdk/framework/a;Landroid/os/Looper;)V
    .registers 3

    .line 261
    iput-object p1, p0, Lcom/umeng/commonsdk/framework/a$2;->a:Lcom/umeng/commonsdk/framework/a;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 264
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x111

    if-eq p1, v0, :cond_17

    const/16 v0, 0x112

    if-eq p1, v0, :cond_13

    const/16 v0, 0x200

    if-eq p1, v0, :cond_f

    goto :goto_31

    .line 284
    :cond_f
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->l()V

    goto :goto_31

    .line 288
    :cond_13
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->m()V

    goto :goto_31

    :cond_17
    const-string p1, "--->>> handleMessage: recv MSG_PROCESS_NEXT msg."

    .line 266
    invoke-static {p1}, Lcom/umeng/commonsdk/statistics/common/ULog;->d(Ljava/lang/String;)V

    .line 268
    :try_start_1c
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->j()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    const-wide/16 v0, 0x1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock(JLjava/util/concurrent/TimeUnit;)Z
    :try_end_27
    .catchall {:try_start_1c .. :try_end_27} :catchall_31

    .line 271
    :try_start_27
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->k()V
    :try_end_2a
    .catchall {:try_start_27 .. :try_end_2a} :catchall_2a

    .line 274
    :catchall_2a
    :try_start_2a
    invoke-static {}, Lcom/umeng/commonsdk/framework/a;->j()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V
    :try_end_31
    .catchall {:try_start_2a .. :try_end_31} :catchall_31

    :catchall_31
    :goto_31
    return-void
.end method
