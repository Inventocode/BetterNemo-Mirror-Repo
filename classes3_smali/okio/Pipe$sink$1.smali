.class public final Lokio/Pipe$sink$1;
.super Ljava/lang/Object;
.source "Pipe.kt"

# interfaces
.implements Lokio/Sink;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokio/Pipe;-><init>(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nPipe.kt\nKotlin\n*S Kotlin\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n+ 2 Pipe.kt\nokio/Pipe\n+ 3 Timeout.kt\nokio/Timeout\n*L\n1#1,216:1\n199#2:217\n200#2:248\n199#2:249\n200#2:280\n199#2:281\n200#2:312\n204#3,30:218\n204#3,30:250\n204#3,30:282\n*E\n*S KotlinDebug\n*F\n+ 1 Pipe.kt\nokio/Pipe$sink$1\n*L\n77#1:217\n77#1:248\n95#1:249\n95#1:280\n113#1:281\n113#1:312\n77#1,30:218\n95#1,30:250\n113#1,30:282\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lokio/Pipe;

.field private final timeout:Lokio/Timeout;


# direct methods
.method constructor <init>(Lokio/Pipe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 47
    iput-object p1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance p1, Lokio/Timeout;

    invoke-direct {p1}, Lokio/Timeout;-><init>()V

    iput-object p1, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 13

    .line 100
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v0

    monitor-enter v0

    .line 101
    :try_start_7
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$jvm()Z

    move-result v1
    :try_end_d
    .catchall {:try_start_7 .. :try_end_d} :catchall_ec

    if-eqz v1, :cond_11

    monitor-exit v0

    return-void

    .line 103
    :cond_11
    :try_start_11
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$jvm()Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1a

    goto :goto_4d

    .line 108
    :cond_1a
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_33

    goto :goto_3b

    :cond_33
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_3b
    :goto_3b
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lokio/Pipe;->setSinkClosed$jvm(Z)V

    .line 110
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_e4

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    const/4 v1, 0x0

    .line 111
    :goto_4d
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_4f
    .catchall {:try_start_11 .. :try_end_4f} :catchall_ec

    .line 100
    monitor-exit v0

    if-eqz v1, :cond_e3

    .line 113
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 199
    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 204
    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    .line 205
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 207
    invoke-virtual {v2}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_b6

    .line 208
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    .line 209
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_96

    .line 210
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 113
    :cond_96
    :try_start_96
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_99
    .catchall {:try_start_96 .. :try_end_99} :catchall_a6

    .line 215
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 217
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_e3

    :catchall_a6
    move-exception v1

    .line 215
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_b5

    .line 217
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_b5
    throw v1

    .line 221
    :cond_b6
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_c3

    .line 222
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 113
    :cond_c3
    :try_start_c3
    invoke-interface {v1}, Lokio/Sink;->close()V
    :try_end_c6
    .catchall {:try_start_c3 .. :try_end_c6} :catchall_d3

    .line 227
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_e3

    .line 229
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_e3

    :catchall_d3
    move-exception v1

    .line 227
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_e2

    .line 229
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_e2
    throw v1

    :cond_e3
    :goto_e3
    return-void

    .line 110
    :cond_e4
    :try_start_e4
    new-instance v1, Lkotlin/TypeCastException;

    const-string v2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {v1, v2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_ec
    .catchall {:try_start_e4 .. :try_end_ec} :catchall_ec

    :catchall_ec
    move-exception v1

    .line 100
    monitor-exit v0

    throw v1
.end method

.method public flush()V
    .registers 13

    .line 82
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v0

    monitor-enter v0

    .line 83
    :try_start_7
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$jvm()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_d3

    .line 85
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getFoldedSink$jvm()Lokio/Sink;

    move-result-object v1

    if-eqz v1, :cond_1a

    goto :goto_3c

    .line 90
    :cond_1a
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gtz v5, :cond_33

    goto :goto_3b

    .line 91
    :cond_33
    new-instance v1, Ljava/io/IOException;

    const-string v2, "source is closed"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_3b
    :goto_3b
    const/4 v1, 0x0

    .line 93
    :goto_3c
    sget-object v2, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_3e
    .catchall {:try_start_7 .. :try_end_3e} :catchall_df

    .line 82
    monitor-exit v0

    if-eqz v1, :cond_d2

    .line 95
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 199
    invoke-interface {v1}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v2

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 204
    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v3

    .line 205
    sget-object v5, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v2}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v5, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v5

    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v5, v6, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 207
    invoke-virtual {v2}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_a5

    .line 208
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    .line 209
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_85

    .line 210
    invoke-virtual {v2}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v2, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 95
    :cond_85
    :try_start_85
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_95

    .line 215
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 217
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_d2

    :catchall_95
    move-exception v1

    .line 215
    sget-object v7, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_a4

    .line 217
    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_a4
    throw v1

    .line 221
    :cond_a5
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v5

    if-eqz v5, :cond_b2

    .line 222
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 95
    :cond_b2
    :try_start_b2
    invoke-interface {v1}, Lokio/Sink;->flush()V
    :try_end_b5
    .catchall {:try_start_b2 .. :try_end_b5} :catchall_c2

    .line 227
    invoke-virtual {v2, v3, v4, v7}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_d2

    .line 229
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_d2

    :catchall_c2
    move-exception v1

    .line 227
    sget-object v5, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v3, v4, v5}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v0

    if-eqz v0, :cond_d1

    .line 229
    invoke-virtual {v2}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_d1
    throw v1

    :cond_d2
    :goto_d2
    return-void

    :cond_d3
    :try_start_d3
    const-string v1, "closed"

    .line 83
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_df
    .catchall {:try_start_d3 .. :try_end_df} :catchall_df

    :catchall_df
    move-exception v1

    .line 82
    monitor-exit v0

    throw v1
.end method

.method public timeout()Lokio/Timeout;
    .registers 2

    .line 116
    iget-object v0, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    return-object v0
.end method

.method public write(Lokio/Buffer;J)V
    .registers 16

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v0}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v0

    monitor-enter v0

    .line 54
    :try_start_c
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getSinkClosed$jvm()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_110

    :goto_16
    const-wide/16 v1, 0x0

    cmp-long v3, p2, v1

    if-lez v3, :cond_78

    .line 57
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getFoldedSink$jvm()Lokio/Sink;

    move-result-object v3

    if-eqz v3, :cond_25

    goto :goto_79

    .line 62
    :cond_25
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getSourceClosed$jvm()Z

    move-result v3

    if-nez v3, :cond_70

    .line 64
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getMaxBufferSize$jvm()J

    move-result-wide v3

    iget-object v5, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v5}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v5

    invoke-virtual {v5}, Lokio/Buffer;->size()J

    move-result-wide v5

    sub-long/2addr v3, v5

    cmp-long v5, v3, v1

    if-nez v5, :cond_4e

    .line 66
    iget-object v1, p0, Lokio/Pipe$sink$1;->timeout:Lokio/Timeout;

    iget-object v2, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v2}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokio/Timeout;->waitUntilNotified(Ljava/lang/Object;)V

    goto :goto_16

    .line 70
    :cond_4e
    invoke-static {v3, v4, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    .line 71
    iget-object v3, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v3}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v3

    invoke-virtual {v3, p1, v1, v2}, Lokio/Buffer;->write(Lokio/Buffer;J)V

    sub-long/2addr p2, v1

    .line 73
    iget-object v1, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    invoke-virtual {v1}, Lokio/Pipe;->getBuffer$jvm()Lokio/Buffer;

    move-result-object v1

    if-eqz v1, :cond_68

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_16

    :cond_68
    new-instance p1, Lkotlin/TypeCastException;

    const-string p2, "null cannot be cast to non-null type java.lang.Object"

    invoke-direct {p1, p2}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 62
    :cond_70
    new-instance p1, Ljava/io/IOException;

    const-string p2, "source is closed"

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_78
    const/4 v3, 0x0

    .line 75
    :goto_79
    sget-object v1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_7b
    .catchall {:try_start_c .. :try_end_7b} :catchall_11c

    .line 53
    monitor-exit v0

    if-eqz v3, :cond_10f

    .line 77
    iget-object v0, p0, Lokio/Pipe$sink$1;->this$0:Lokio/Pipe;

    .line 199
    invoke-interface {v3}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v1

    invoke-virtual {v0}, Lokio/Pipe;->sink()Lokio/Sink;

    move-result-object v0

    invoke-interface {v0}, Lokio/Sink;->timeout()Lokio/Timeout;

    move-result-object v0

    .line 204
    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v4

    .line 205
    sget-object v2, Lokio/Timeout;->Companion:Lokio/Timeout$Companion;

    invoke-virtual {v0}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v6

    invoke-virtual {v1}, Lokio/Timeout;->timeoutNanos()J

    move-result-wide v8

    invoke-virtual {v2, v6, v7, v8, v9}, Lokio/Timeout$Companion;->minTimeout(JJ)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v6, v7, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 207
    invoke-virtual {v1}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_e2

    .line 208
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    .line 209
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 210
    invoke-virtual {v1}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v8

    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v1, v8, v9}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 77
    :cond_c2
    :try_start_c2
    invoke-interface {v3, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_c5
    .catchall {:try_start_c2 .. :try_end_c5} :catchall_d2

    .line 215
    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 217
    invoke-virtual {v1, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    goto :goto_10f

    :catchall_d2
    move-exception p1

    .line 215
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 216
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_e1

    .line 217
    invoke-virtual {v1, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    :cond_e1
    throw p1

    .line 221
    :cond_e2
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result v6

    if-eqz v6, :cond_ef

    .line 222
    invoke-virtual {v0}, Lokio/Timeout;->deadlineNanoTime()J

    move-result-wide v6

    invoke-virtual {v1, v6, v7}, Lokio/Timeout;->deadlineNanoTime(J)Lokio/Timeout;

    .line 77
    :cond_ef
    :try_start_ef
    invoke-interface {v3, p1, p2, p3}, Lokio/Sink;->write(Lokio/Buffer;J)V
    :try_end_f2
    .catchall {:try_start_ef .. :try_end_f2} :catchall_ff

    .line 227
    invoke-virtual {v1, v4, v5, v2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p1

    if-eqz p1, :cond_10f

    .line 229
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    goto :goto_10f

    :catchall_ff
    move-exception p1

    .line 227
    sget-object p2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v4, v5, p2}, Lokio/Timeout;->timeout(JLjava/util/concurrent/TimeUnit;)Lokio/Timeout;

    .line 228
    invoke-virtual {v0}, Lokio/Timeout;->hasDeadline()Z

    move-result p2

    if-eqz p2, :cond_10e

    .line 229
    invoke-virtual {v1}, Lokio/Timeout;->clearDeadline()Lokio/Timeout;

    :cond_10e
    throw p1

    :cond_10f
    :goto_10f
    return-void

    :cond_110
    :try_start_110
    const-string p1, "closed"

    .line 54
    new-instance p2, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_11c
    .catchall {:try_start_110 .. :try_end_11c} :catchall_11c

    :catchall_11c
    move-exception p1

    .line 53
    monitor-exit v0

    throw p1
.end method
