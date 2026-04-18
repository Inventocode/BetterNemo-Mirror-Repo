.class public Lcom/qiniu/android/transaction/TransactionManager;
.super Ljava/lang/Object;
.source "TransactionManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qiniu/android/transaction/TransactionManager$Transaction;
    }
.end annotation


# static fields
.field private static final transactionManager:Lcom/qiniu/android/transaction/TransactionManager;


# instance fields
.field private time:J

.field private timer:Ljava/util/Timer;

.field private transactionList:Ljava/util/concurrent/ConcurrentLinkedQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentLinkedQueue<",
            "Lcom/qiniu/android/transaction/TransactionManager$Transaction;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .line 20
    new-instance v0, Lcom/qiniu/android/transaction/TransactionManager;

    invoke-direct {v0}, Lcom/qiniu/android/transaction/TransactionManager;-><init>()V

    sput-object v0, Lcom/qiniu/android/transaction/TransactionManager;->transactionManager:Lcom/qiniu/android/transaction/TransactionManager;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->transactionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    const-wide/16 v0, 0x0

    .line 16
    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->time:J

    return-void
.end method

.method static synthetic access$300(Lcom/qiniu/android/transaction/TransactionManager;)V
    .registers 1

    .line 11
    invoke-direct {p0}, Lcom/qiniu/android/transaction/TransactionManager;->timerAction()V

    return-void
.end method

.method private declared-synchronized createTimer()V
    .registers 8

    monitor-enter p0

    .line 105
    :try_start_1
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->timer:Ljava/util/Timer;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_1c

    if-eqz v0, :cond_7

    .line 106
    monitor-exit p0

    return-void

    .line 108
    :cond_7
    :try_start_7
    new-instance v1, Ljava/util/Timer;

    invoke-direct {v1}, Ljava/util/Timer;-><init>()V

    iput-object v1, p0, Lcom/qiniu/android/transaction/TransactionManager;->timer:Ljava/util/Timer;

    .line 109
    new-instance v2, Lcom/qiniu/android/transaction/TransactionManager$1;

    invoke-direct {v2, p0}, Lcom/qiniu/android/transaction/TransactionManager$1;-><init>(Lcom/qiniu/android/transaction/TransactionManager;)V

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x3e8

    invoke-virtual/range {v1 .. v6}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_1c

    .line 115
    monitor-exit p0

    return-void

    :catchall_1c
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static getInstance()Lcom/qiniu/android/transaction/TransactionManager;
    .registers 1

    .line 25
    sget-object v0, Lcom/qiniu/android/transaction/TransactionManager;->transactionManager:Lcom/qiniu/android/transaction/TransactionManager;

    return-object v0
.end method

.method private handleAllTransaction()V
    .registers 5

    .line 91
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->transactionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    .line 92
    invoke-direct {p0, v1}, Lcom/qiniu/android/transaction/TransactionManager;->handleTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V

    .line 93
    iget-wide v2, p0, Lcom/qiniu/android/transaction/TransactionManager;->time:J

    invoke-static {v1, v2, v3}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->access$100(Lcom/qiniu/android/transaction/TransactionManager$Transaction;J)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 94
    invoke-virtual {p0, v1}, Lcom/qiniu/android/transaction/TransactionManager;->removeTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V

    goto :goto_6

    :cond_21
    return-void
.end method

.method private handleTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    .registers 4

    .line 100
    iget-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->time:J

    invoke-static {p1, v0, v1}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->access$200(Lcom/qiniu/android/transaction/TransactionManager$Transaction;J)V

    return-void
.end method

.method private timerAction()V
    .registers 5

    .line 123
    iget-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->time:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->time:J

    .line 124
    invoke-direct {p0}, Lcom/qiniu/android/transaction/TransactionManager;->handleAllTransaction()V

    return-void
.end method


# virtual methods
.method public addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 58
    :cond_3
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->transactionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-direct {p0}, Lcom/qiniu/android/transaction/TransactionManager;->createTimer()V

    return-void
.end method

.method public existTransactionsForName(Ljava/lang/String;)Z
    .registers 5

    .line 43
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->transactionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    if-nez p1, :cond_18

    .line 44
    iget-object v2, v1, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->name:Ljava/lang/String;

    if-eqz v2, :cond_24

    :cond_18
    if-eqz p1, :cond_6

    iget-object v1, v1, Lcom/qiniu/android/transaction/TransactionManager$Transaction;->name:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 45
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    :cond_24
    const/4 p1, 0x1

    goto :goto_27

    :cond_26
    const/4 p1, 0x0

    :goto_27
    return p1
.end method

.method public removeTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    .registers 3

    if-nez p1, :cond_3

    return-void

    .line 67
    :cond_3
    iget-object v0, p0, Lcom/qiniu/android/transaction/TransactionManager;->transactionList:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentLinkedQueue;->remove(Ljava/lang/Object;)Z

    return-void
.end method
