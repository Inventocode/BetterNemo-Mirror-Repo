.class public abstract Lcom/sdk/d/c;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sdk/d/c$c;,
        Lcom/sdk/d/c$e;,
        Lcom/sdk/d/c$d;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Progress:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field public static final g:Lcom/sdk/d/c$d;

.field public static final h:Ljava/util/concurrent/Executor;


# instance fields
.field public final a:Lcom/sdk/d/c$e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sdk/d/c$e<",
            "TParams;TResult;>;"
        }
    .end annotation
.end field

.field public final b:Ljava/util/concurrent/FutureTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/FutureTask<",
            "TResult;>;"
        }
    .end annotation
.end field

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final d:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public volatile e:Z

.field public f:Ljava/lang/Boolean;


# direct methods
.method public static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/sdk/d/c$d;

    invoke-direct {v0}, Lcom/sdk/d/c$d;-><init>()V

    sput-object v0, Lcom/sdk/d/c;->g:Lcom/sdk/d/c$d;

    new-instance v0, Lcom/sdk/d/d;

    const/4 v1, 0x5

    invoke-direct {v0, v1}, Lcom/sdk/d/d;-><init>(I)V

    sput-object v0, Lcom/sdk/d/c;->h:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/sdk/d/c;->d:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sdk/d/c;->e:Z

    sget-boolean v0, Lcom/sdk/f/c;->c:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/sdk/d/c;->f:Ljava/lang/Boolean;

    new-instance v0, Lcom/sdk/d/c$a;

    invoke-direct {v0, p0}, Lcom/sdk/d/c$a;-><init>(Lcom/sdk/d/c;)V

    iput-object v0, p0, Lcom/sdk/d/c;->a:Lcom/sdk/d/c$e;

    new-instance v1, Lcom/sdk/d/c$b;

    invoke-direct {v1, p0, v0}, Lcom/sdk/d/c$b;-><init>(Lcom/sdk/d/c;Ljava/util/concurrent/Callable;)V

    iput-object v1, p0, Lcom/sdk/d/c;->b:Ljava/util/concurrent/FutureTask;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TResult;)TResult;"
        }
    .end annotation

    sget-object v0, Lcom/sdk/d/c;->g:Lcom/sdk/d/c$d;

    new-instance v1, Lcom/sdk/d/c$c;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-direct {v1, p0, v3}, Lcom/sdk/d/c$c;-><init>(Lcom/sdk/d/c;[Ljava/lang/Object;)V

    invoke-virtual {v0, v2, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-object p1
.end method

.method public final varargs a([Ljava/lang/Object;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TProgress;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/sdk/d/c;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_17

    sget-object v0, Lcom/sdk/d/c;->g:Lcom/sdk/d/c$d;

    new-instance v1, Lcom/sdk/d/c$c;

    invoke-direct {v1, p0, p1}, Lcom/sdk/d/c$c;-><init>(Lcom/sdk/d/c;[Ljava/lang/Object;)V

    const/4 p1, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    :cond_17
    return-void
.end method
