.class public Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;
.super Ljava/lang/Object;
.source "DnsPrefetchTransaction.java"


# static fields
.field private static isDnsLoaded:Z = false


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static declared-synchronized addDnsCheckAndPrefetchTransaction(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)Z
    .registers 8

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 38
    :try_start_3
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_3f

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 39
    monitor-exit v0

    return v2

    :cond_10
    if-eqz p1, :cond_3d

    .line 42
    :try_start_12
    iget-object v1, p1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    if-eqz v1, :cond_3d

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1d

    goto :goto_3d

    .line 46
    :cond_1d
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v1

    .line 47
    iget-object v3, p1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->existTransactionsForName(Ljava/lang/String;)Z

    move-result v3
    :try_end_27
    .catchall {:try_start_12 .. :try_end_27} :catchall_3f

    if-eqz v3, :cond_2b

    .line 48
    monitor-exit v0

    return v2

    .line 51
    :cond_2b
    :try_start_2b
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    iget-object v4, p1, Lcom/qiniu/android/storage/UpToken;->token:Ljava/lang/String;

    new-instance v5, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$2;

    invoke-direct {v5, p0, p1}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$2;-><init>(Lcom/qiniu/android/common/Zone;Lcom/qiniu/android/storage/UpToken;)V

    invoke-direct {v3, v4, v2, v5}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 57
    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_3a
    .catchall {:try_start_2b .. :try_end_3a} :catchall_3f

    const/4 p0, 0x1

    .line 58
    monitor-exit v0

    return p0

    .line 43
    :cond_3d
    :goto_3d
    monitor-exit v0

    return v2

    :catchall_3f
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addDnsCheckAndPrefetchTransaction([Ljava/lang/String;)Z
    .registers 7

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 62
    :try_start_3
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_2d

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 63
    monitor-exit v0

    return v2

    :cond_10
    if-eqz p0, :cond_2b

    .line 66
    :try_start_12
    array-length v1, p0

    if-nez v1, :cond_16

    goto :goto_2b

    .line 70
    :cond_16
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v1

    .line 71
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    const/4 v4, 0x0

    new-instance v5, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;

    invoke-direct {v5, p0}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$3;-><init>([Ljava/lang/String;)V

    invoke-direct {v3, v4, v2, v5}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 77
    invoke-virtual {v1, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_28
    .catchall {:try_start_12 .. :try_end_28} :catchall_2d

    const/4 p0, 0x1

    .line 78
    monitor-exit v0

    return p0

    .line 67
    :cond_2b
    :goto_2b
    monitor-exit v0

    return v2

    :catchall_2d
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized addDnsLocalLoadTransaction()Z
    .registers 6

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 15
    :try_start_3
    sget-boolean v1, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->isDnsLoaded:Z
    :try_end_5
    .catchall {:try_start_3 .. :try_end_5} :catchall_2e

    const/4 v2, 0x0

    if-eqz v1, :cond_a

    .line 16
    monitor-exit v0

    return v2

    .line 19
    :cond_a
    :try_start_a
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_12
    .catchall {:try_start_a .. :try_end_12} :catchall_2e

    if-nez v1, :cond_16

    .line 20
    monitor-exit v0

    return v2

    :cond_16
    const/4 v1, 0x1

    .line 23
    :try_start_17
    sput-boolean v1, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;->isDnsLoaded:Z

    .line 25
    new-instance v3, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    const-string v4, "loadDns"

    new-instance v5, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$1;

    invoke-direct {v5}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$1;-><init>()V

    invoke-direct {v3, v4, v2, v5}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;ILjava/lang/Runnable;)V

    .line 32
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_2c
    .catchall {:try_start_17 .. :try_end_2c} :catchall_2e

    .line 33
    monitor-exit v0

    return v1

    :catchall_2e
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized setDnsCheckWhetherCachedValidTransactionAction()Z
    .registers 7

    const-class v0, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction;

    monitor-enter v0

    .line 83
    :try_start_3
    invoke-static {}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->getInstance()Lcom/qiniu/android/http/dns/DnsPrefetcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/qiniu/android/http/dns/DnsPrefetcher;->isDnsOpen()Z

    move-result v1
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_32

    const/4 v2, 0x0

    if-nez v1, :cond_10

    .line 84
    monitor-exit v0

    return v2

    :cond_10
    :try_start_10
    const-string v1, "dnsCheckWhetherCachedValidTransaction"

    .line 88
    invoke-static {}, Lcom/qiniu/android/transaction/TransactionManager;->getInstance()Lcom/qiniu/android/transaction/TransactionManager;

    move-result-object v3

    .line 89
    invoke-virtual {v3, v1}, Lcom/qiniu/android/transaction/TransactionManager;->existTransactionsForName(Ljava/lang/String;)Z

    move-result v4
    :try_end_1a
    .catchall {:try_start_10 .. :try_end_1a} :catchall_32

    if-eqz v4, :cond_1e

    .line 90
    monitor-exit v0

    return v2

    .line 93
    :cond_1e
    :try_start_1e
    new-instance v2, Lcom/qiniu/android/transaction/TransactionManager$Transaction;

    const/16 v4, 0xa

    const/16 v5, 0x78

    new-instance v6, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$4;

    invoke-direct {v6}, Lcom/qiniu/android/http/dns/DnsPrefetchTransaction$4;-><init>()V

    invoke-direct {v2, v1, v4, v5, v6}, Lcom/qiniu/android/transaction/TransactionManager$Transaction;-><init>(Ljava/lang/String;IILjava/lang/Runnable;)V

    .line 99
    invoke-virtual {v3, v2}, Lcom/qiniu/android/transaction/TransactionManager;->addTransaction(Lcom/qiniu/android/transaction/TransactionManager$Transaction;)V
    :try_end_2f
    .catchall {:try_start_1e .. :try_end_2f} :catchall_32

    const/4 v1, 0x1

    .line 100
    monitor-exit v0

    return v1

    :catchall_32
    move-exception v1

    monitor-exit v0

    throw v1
.end method
