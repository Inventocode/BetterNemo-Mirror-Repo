.class public Lcom/sdk/d/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Executor;


# static fields
.field public static final c:Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final b:Ljava/util/concurrent/ThreadPoolExecutor;


# direct methods
.method public static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/sdk/d/d$a;

    invoke-direct {v0}, Lcom/sdk/d/d$a;-><init>()V

    sput-object v0, Lcom/sdk/d/d;->c:Ljava/util/concurrent/ThreadFactory;

    return-void
.end method

.method public constructor <init>(I)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v6, Lcom/sdk/d/f;

    invoke-direct {v6}, Lcom/sdk/d/f;-><init>()V

    new-instance v8, Ljava/util/concurrent/ThreadPoolExecutor;

    sget-object v5, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v7, Lcom/sdk/d/d;->c:Ljava/util/concurrent/ThreadFactory;

    const/16 v2, 0x100

    const-wide/16 v3, 0x1

    move-object v0, v8

    move v1, p1

    invoke-direct/range {v0 .. v7}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;)V

    iput-object v8, p0, Lcom/sdk/d/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    return-void
.end method


# virtual methods
.method public execute(Ljava/lang/Runnable;)V
    .registers 3

    iget-object v0, p0, Lcom/sdk/d/d;->b:Ljava/util/concurrent/ThreadPoolExecutor;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ThreadPoolExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
