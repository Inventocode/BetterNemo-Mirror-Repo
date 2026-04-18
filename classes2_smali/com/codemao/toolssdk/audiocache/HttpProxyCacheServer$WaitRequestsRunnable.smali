.class final Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;
.super Ljava/lang/Object;
.source "HttpProxyCacheServer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "WaitRequestsRunnable"
.end annotation


# instance fields
.field private final startSignal:Ljava/util/concurrent/CountDownLatch;

.field final synthetic this$0:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;


# direct methods
.method public constructor <init>(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;Ljava/util/concurrent/CountDownLatch;)V
    .registers 3

    .line 337
    iput-object p1, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;->this$0:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 338
    iput-object p2, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;->startSignal:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 343
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;->startSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 344
    iget-object v0, p0, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer$WaitRequestsRunnable;->this$0:Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;

    invoke-static {v0}, Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;->access$100(Lcom/codemao/toolssdk/audiocache/HttpProxyCacheServer;)V

    return-void
.end method
