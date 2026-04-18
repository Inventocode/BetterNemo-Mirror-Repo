.class public final Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;
.super Ljava/lang/Object;
.source "RealConnectionPool.kt"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lokhttp3/internal/connection/RealConnectionPool;-><init>(IJLjava/util/concurrent/TimeUnit;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lokhttp3/internal/connection/RealConnectionPool;


# direct methods
.method constructor <init>(Lokhttp3/internal/connection/RealConnectionPool;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    iput-object p1, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;->this$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    .line 46
    :goto_0
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;->this$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lokhttp3/internal/connection/RealConnectionPool;->cleanup(J)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_11

    return-void

    .line 49
    :cond_11
    :try_start_11
    iget-object v2, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;->this$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-static {v2, v0, v1}, Lokhttp3/internal/Util;->lockAndWaitNanos(Ljava/lang/Object;J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_11 .. :try_end_16} :catch_17

    goto :goto_0

    .line 52
    :catch_17
    iget-object v0, p0, Lokhttp3/internal/connection/RealConnectionPool$cleanupRunnable$1;->this$0:Lokhttp3/internal/connection/RealConnectionPool;

    invoke-virtual {v0}, Lokhttp3/internal/connection/RealConnectionPool;->evictAll()V

    goto :goto_0
.end method
