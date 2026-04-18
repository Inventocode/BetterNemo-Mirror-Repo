.class public Lcom/codemao/nemo/view/banner/WeakHandler;
.super Ljava/lang/Object;
.source "WeakHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;,
        Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;,
        Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;
    }
.end annotation


# instance fields
.field private final mExec:Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;

.field private mLock:Ljava/util/concurrent/locks/Lock;

.field final mRunnables:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    .line 19
    new-instance v1, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    iput-object v1, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mRunnables:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    .line 32
    new-instance v0, Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;

    invoke-direct {v0}, Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mExec:Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;

    return-void
.end method

.method private wrapRunnable(Ljava/lang/Runnable;)Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;
    .registers 4

    const-string v0, "Runnable can\'t be null"

    .line 346
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 348
    new-instance v0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    iget-object v1, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mLock:Ljava/util/concurrent/locks/Lock;

    invoke-direct {v0, v1, p1}, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;-><init>(Ljava/util/concurrent/locks/Lock;Ljava/lang/Runnable;)V

    .line 349
    iget-object p1, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mRunnables:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->insertAfter(Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;)V

    .line 350
    iget-object p1, v0, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->wrapper:Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    return-object p1
.end method


# virtual methods
.method public final post(Ljava/lang/Runnable;)Z
    .registers 3

    .line 84
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mExec:Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    move-result p1

    return p1
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .registers 5

    .line 149
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mExec:Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;

    invoke-direct {p0, p1}, Lcom/codemao/nemo/view/banner/WeakHandler;->wrapRunnable(Ljava/lang/Runnable;)Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result p1

    return p1
.end method

.method public final removeCallbacks(Ljava/lang/Runnable;)V
    .registers 3

    .line 175
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mRunnables:Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;

    invoke-virtual {v0, p1}, Lcom/codemao/nemo/view/banner/WeakHandler$ChainedRef;->remove(Ljava/lang/Runnable;)Lcom/codemao/nemo/view/banner/WeakHandler$WeakRunnable;

    move-result-object p1

    if-eqz p1, :cond_d

    .line 177
    iget-object v0, p0, Lcom/codemao/nemo/view/banner/WeakHandler;->mExec:Lcom/codemao/nemo/view/banner/WeakHandler$ExecHandler;

    invoke-virtual {v0, p1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_d
    return-void
.end method
