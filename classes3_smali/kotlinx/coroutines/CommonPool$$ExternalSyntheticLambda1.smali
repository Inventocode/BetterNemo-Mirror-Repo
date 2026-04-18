.class public final synthetic Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/atomic/AtomicInteger;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .registers 3

    iget-object v0, p0, Lkotlinx/coroutines/CommonPool$$ExternalSyntheticLambda1;->f$0:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-static {v0, p1}, Lkotlinx/coroutines/CommonPool;->$r8$lambda$ERvPtt6BNpepqyLHHf5J6mHx7SQ(Ljava/util/concurrent/atomic/AtomicInteger;Ljava/lang/Runnable;)Ljava/lang/Thread;

    move-result-object p1

    return-object p1
.end method
