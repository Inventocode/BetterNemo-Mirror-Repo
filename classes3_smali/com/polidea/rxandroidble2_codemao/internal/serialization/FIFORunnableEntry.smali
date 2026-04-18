.class Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;
.super Ljava/lang/Object;
.source "FIFORunnableEntry.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;",
        ">;"
    }
.end annotation


# static fields
.field private static final SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field final operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation<",
            "TT;>;"
        }
    .end annotation
.end field

.field final operationResultObserver:Lio/reactivex/ObservableEmitter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final seqNum:J


# direct methods
.method static constructor <clinit>()V
    .registers 3

    .line 18
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v1, 0x0

    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method constructor <init>(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;Lio/reactivex/ObservableEmitter;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation<",
            "TT;>;",
            "Lio/reactivex/ObservableEmitter<",
            "TT;>;)V"
        }
    .end annotation

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    sget-object v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->SEQUENCE:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->getAndIncrement()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->seqNum:J

    .line 25
    iput-object p1, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    .line 26
    iput-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    return-void
.end method


# virtual methods
.method public compareTo(Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;)I
    .registers 6

    .line 30
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    iget-object v1, p1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    invoke-interface {v0, v1}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    if-nez v0, :cond_1d

    .line 31
    iget-object v1, p1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    iget-object v2, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    if-eq v1, v2, :cond_1d

    .line 32
    iget-wide v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->seqNum:J

    iget-wide v2, p1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->seqNum:J

    cmp-long p1, v0, v2

    if-gez p1, :cond_1b

    const/4 p1, -0x1

    const/4 v0, -0x1

    goto :goto_1d

    :cond_1b
    const/4 p1, 0x1

    const/4 v0, 0x1

    :cond_1d
    :goto_1d
    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .registers 2

    .line 16
    check-cast p1, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;

    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->compareTo(Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;)I

    move-result p1

    return p1
.end method

.method public run(Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;Lio/reactivex/Scheduler;)V
    .registers 4

    .line 39
    iget-object v0, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operationResultObserver:Lio/reactivex/ObservableEmitter;

    invoke-interface {v0}, Lio/reactivex/ObservableEmitter;->isDisposed()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 40
    iget-object p2, p0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;->operation:Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;

    invoke-static {p2}, Lcom/polidea/rxandroidble2_codemao/internal/logger/LoggerUtil;->logOperationSkippedBecauseDisposedWhenAboutToRun(Lcom/polidea/rxandroidble2_codemao/internal/operations/Operation;)V

    .line 41
    invoke-virtual {p1}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;->release()V

    return-void

    .line 51
    :cond_11
    new-instance v0, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry$1;-><init>(Lcom/polidea/rxandroidble2_codemao/internal/serialization/FIFORunnableEntry;Lcom/polidea/rxandroidble2_codemao/internal/serialization/QueueSemaphore;Lio/reactivex/Scheduler;)V

    invoke-virtual {p2, v0}, Lio/reactivex/Scheduler;->scheduleDirect(Ljava/lang/Runnable;)Lio/reactivex/disposables/Disposable;

    return-void
.end method
