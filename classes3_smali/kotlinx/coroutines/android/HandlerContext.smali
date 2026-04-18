.class public final Lkotlinx/coroutines/android/HandlerContext;
.super Lkotlinx/coroutines/android/HandlerDispatcher;
.source "HandlerDispatcher.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nHandlerDispatcher.kt\nKotlin\n*S Kotlin\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n+ 2 Runnable.kt\nkotlinx/coroutines/RunnableKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,194:1\n17#2:195\n1#3:196\n*E\n*S KotlinDebug\n*F\n+ 1 HandlerDispatcher.kt\nkotlinx/coroutines/android/HandlerContext\n*L\n136#1:195\n*E\n"
.end annotation


# instance fields
.field private volatile _immediate:Lkotlinx/coroutines/android/HandlerContext;

.field private final handler:Landroid/os/Handler;

.field private final immediate:Lkotlinx/coroutines/android/HandlerContext;

.field private final invokeImmediately:Z

.field private final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    .line 119
    invoke-direct {p0, p1, p2, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Handler;Ljava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 5

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_5

    const/4 p2, 0x0

    .line 118
    :cond_5
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Handler;Ljava/lang/String;Z)V
    .registers 5

    const/4 v0, 0x0

    .line 109
    invoke-direct {p0, v0}, Lkotlinx/coroutines/android/HandlerDispatcher;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    iput-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    iput-object p2, p0, Lkotlinx/coroutines/android/HandlerContext;->name:Ljava/lang/String;

    iput-boolean p3, p0, Lkotlinx/coroutines/android/HandlerContext;->invokeImmediately:Z

    if-eqz p3, :cond_d

    move-object v0, p0

    .line 122
    :cond_d
    iput-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->_immediate:Lkotlinx/coroutines/android/HandlerContext;

    .line 124
    iget-object p3, p0, Lkotlinx/coroutines/android/HandlerContext;->_immediate:Lkotlinx/coroutines/android/HandlerContext;

    if-eqz p3, :cond_14

    goto :goto_1e

    .line 125
    :cond_14
    new-instance p3, Lkotlinx/coroutines/android/HandlerContext;

    const/4 v0, 0x1

    invoke-direct {p3, p1, p2, v0}, Lkotlinx/coroutines/android/HandlerContext;-><init>(Landroid/os/Handler;Ljava/lang/String;Z)V

    iput-object p3, p0, Lkotlinx/coroutines/android/HandlerContext;->_immediate:Lkotlinx/coroutines/android/HandlerContext;

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    :goto_1e
    iput-object p3, p0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    return-void
.end method

.method public static final synthetic access$getHandler$p(Lkotlinx/coroutines/android/HandlerContext;)Landroid/os/Handler;
    .registers 1

    .line 105
    iget-object p0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public dispatch(Lkotlin/coroutines/CoroutineContext;Ljava/lang/Runnable;)V
    .registers 3

    .line 132
    iget-object p1, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 3

    .line 157
    instance-of v0, p1, Lkotlinx/coroutines/android/HandlerContext;

    if-eqz v0, :cond_e

    check-cast p1, Lkotlinx/coroutines/android/HandlerContext;

    iget-object p1, p1, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    if-ne p1, v0, :cond_e

    const/4 p1, 0x1

    goto :goto_f

    :cond_e
    const/4 p1, 0x0

    :goto_f
    return p1
.end method

.method public bridge synthetic getImmediate()Lkotlinx/coroutines/MainCoroutineDispatcher;
    .registers 2

    .line 105
    invoke-virtual {p0}, Lkotlinx/coroutines/android/HandlerContext;->getImmediate()Lkotlinx/coroutines/android/HandlerContext;

    move-result-object v0

    return-object v0
.end method

.method public getImmediate()Lkotlinx/coroutines/android/HandlerContext;
    .registers 2

    .line 124
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->immediate:Lkotlinx/coroutines/android/HandlerContext;

    return-object v0
.end method

.method public hashCode()I
    .registers 2

    .line 158
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isDispatchNeeded(Lkotlin/coroutines/CoroutineContext;)Z
    .registers 4

    .line 128
    iget-boolean p1, p0, Lkotlinx/coroutines/android/HandlerContext;->invokeImmediately:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_18

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object p1

    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v0

    if-eqz p1, :cond_17

    goto :goto_18

    :cond_17
    const/4 v0, 0x0

    :cond_18
    :goto_18
    return v0
.end method

.method public scheduleResumeAfterDelay(JLkotlinx/coroutines/CancellableContinuation;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lkotlinx/coroutines/CancellableContinuation<",
            "-",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 17
    new-instance v0, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;

    invoke-direct {v0, p0, p3}, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$$inlined$Runnable$1;-><init>(Lkotlinx/coroutines/android/HandlerContext;Lkotlinx/coroutines/CancellableContinuation;)V

    .line 139
    iget-object v1, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    const-wide v2, 0x3fffffffffffffffL  # 1.9999999999999998

    invoke-static {p1, p2, v2, v3}, Lkotlin/ranges/RangesKt;->coerceAtMost(JJ)J

    move-result-wide p1

    invoke-virtual {v1, v0, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 140
    new-instance p1, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1;

    invoke-direct {p1, p0, v0}, Lkotlinx/coroutines/android/HandlerContext$scheduleResumeAfterDelay$1;-><init>(Lkotlinx/coroutines/android/HandlerContext;Ljava/lang/Runnable;)V

    invoke-interface {p3, p1}, Lkotlinx/coroutines/CancellableContinuation;->invokeOnCancellation(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    .line 152
    invoke-virtual {p0}, Lkotlinx/coroutines/MainCoroutineDispatcher;->toStringInternalImpl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    goto :goto_27

    .line 153
    :cond_7
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->name:Ljava/lang/String;

    if-eqz v0, :cond_c

    goto :goto_12

    :cond_c
    iget-object v0, p0, Lkotlinx/coroutines/android/HandlerContext;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :goto_12
    iget-boolean v1, p0, Lkotlinx/coroutines/android/HandlerContext;->invokeImmediately:Z

    if-eqz v1, :cond_27

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ".immediate"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_27
    :goto_27
    return-object v0
.end method
