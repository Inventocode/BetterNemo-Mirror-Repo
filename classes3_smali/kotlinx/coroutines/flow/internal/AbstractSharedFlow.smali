.class public abstract Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;
.super Ljava/lang/Object;
.source "AbstractSharedFlow.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot<",
        "*>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nAbstractSharedFlow.kt\nKotlin\n*S Kotlin\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n+ 2 Synchronized.kt\nkotlinx/coroutines/internal/SynchronizedKt\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Arrays.kt\nkotlin/collections/ArraysKt___ArraysKt\n*L\n1#1,102:1\n20#2:103\n20#2:104\n20#2:106\n1#3:105\n13536#4,2:107\n*S KotlinDebug\n*F\n+ 1 AbstractSharedFlow.kt\nkotlinx/coroutines/flow/internal/AbstractSharedFlow\n*L\n32#1:103\n47#1:104\n78#1:106\n97#1:107,2\n*E\n"
.end annotation


# instance fields
.field private _subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlinx/coroutines/flow/MutableStateFlow<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private nCollectors:I

.field private nextIndex:I

.field private slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TS;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$getNCollectors(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)I
    .registers 1

    .line 22
    iget p0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return p0
.end method

.method public static final synthetic access$getSlots(Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 1

    .line 22
    iget-object p0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object p0
.end method


# virtual methods
.method protected final allocateSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation

    .line 20
    monitor-enter p0

    .line 48
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v0

    const/4 v1, 0x2

    if-nez v0, :cond_f

    .line 49
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v0

    iput-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    goto :goto_29

    .line 50
    :cond_f
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v2

    array-length v3, v0

    if-lt v2, v3, :cond_29

    .line 51
    array-length v2, v0

    mul-int/lit8 v2, v2, 0x2

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "java.util.Arrays.copyOf(this, newSize)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v1, v0

    check-cast v1, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    iput-object v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    check-cast v0, [Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    .line 56
    :cond_29
    :goto_29
    iget v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 59
    :cond_2b
    aget-object v2, v0, v1

    if-nez v2, :cond_35

    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    move-result-object v2

    aput-object v2, v0, v1

    :cond_35
    add-int/lit8 v1, v1, 0x1

    .line 61
    array-length v3, v0

    if-lt v1, v3, :cond_3b

    const/4 v1, 0x0

    .line 62
    :cond_3b
    invoke-virtual {v2, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->allocateLocked(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    .line 64
    iput v1, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 65
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 66
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;
    :try_end_4d
    .catchall {:try_start_1 .. :try_end_4d} :catchall_55

    .line 67
    monitor-exit p0

    if-nez v0, :cond_51

    goto :goto_54

    .line 70
    :cond_51
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/StateFlowKt;->increment(Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    :goto_54
    return-object v2

    :catchall_55
    move-exception v0

    .line 67
    monitor-exit p0

    throw v0
.end method

.method protected abstract createSlot()Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TS;"
        }
    .end annotation
.end method

.method protected abstract createSlotArray(I)[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)[TS;"
        }
    .end annotation
.end method

.method protected final freeSlot(Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)V"
        }
    .end annotation

    .line 20
    monitor-enter p0

    .line 79
    :try_start_1
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    iput v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    .line 80
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->_subscriptionCount:Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 82
    invoke-virtual {p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->getNCollectors()I

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_14

    iput v3, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nextIndex:I

    .line 83
    :cond_14
    invoke-virtual {p1, p0}, Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;->freeLocked(Ljava/lang/Object;)[Lkotlin/coroutines/Continuation;

    move-result-object p1
    :try_end_18
    .catchall {:try_start_1 .. :try_end_18} :catchall_36

    monitor-exit p0

    .line 90
    array-length v2, p1

    :goto_1a
    if-ge v3, v2, :cond_2f

    aget-object v4, p1, v3

    add-int/lit8 v3, v3, 0x1

    if-nez v4, :cond_23

    goto :goto_1a

    :cond_23
    sget-object v5, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    sget-object v6, Lkotlin/Result;->Companion:Lkotlin/Result$Companion;

    invoke-static {v5}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Lkotlin/coroutines/Continuation;->resumeWith(Ljava/lang/Object;)V

    goto :goto_1a

    :cond_2f
    if-nez v0, :cond_32

    goto :goto_35

    .line 92
    :cond_32
    invoke-static {v0, v1}, Lkotlinx/coroutines/flow/StateFlowKt;->increment(Lkotlinx/coroutines/flow/MutableStateFlow;I)V

    :goto_35
    return-void

    :catchall_36
    move-exception p1

    .line 83
    monitor-exit p0

    throw p1
.end method

.method protected final getNCollectors()I
    .registers 2

    .line 26
    iget v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->nCollectors:I

    return v0
.end method

.method protected final getSlots()[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TS;"
        }
    .end annotation

    .line 24
    iget-object v0, p0, Lkotlinx/coroutines/flow/internal/AbstractSharedFlow;->slots:[Lkotlinx/coroutines/flow/internal/AbstractSharedFlowSlot;

    return-object v0
.end method
