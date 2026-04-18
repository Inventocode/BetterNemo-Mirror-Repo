.class public Lkotlinx/coroutines/channels/LinkedListChannel;
.super Lkotlinx/coroutines/channels/AbstractChannel;
.source "LinkedListChannel.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/AbstractChannel<",
        "TE;>;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLinkedListChannel.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LinkedListChannel.kt\nkotlinx/coroutines/channels/LinkedListChannel\n+ 2 InlineList.kt\nkotlinx/coroutines/internal/InlineList\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,77:1\n35#2,11:78\n1#3:89\n*S KotlinDebug\n*F\n+ 1 LinkedListChannel.kt\nkotlinx/coroutines/channels/LinkedListChannel\n*L\n64#1:78,11\n*E\n"
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-TE;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method protected final isBufferAlwaysEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected final isBufferEmpty()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected offerInternal(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 29
    :cond_0
    invoke-super {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->offerInternal(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 31
    sget-object v1, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_SUCCESS:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v1, :cond_9

    return-object v1

    .line 32
    :cond_9
    sget-object v2, Lkotlinx/coroutines/channels/AbstractChannelKt;->OFFER_FAILED:Lkotlinx/coroutines/internal/Symbol;

    if-ne v0, v2, :cond_19

    .line 33
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractSendChannel;->sendBuffered(Ljava/lang/Object;)Lkotlinx/coroutines/channels/ReceiveOrClosed;

    move-result-object v0

    if-nez v0, :cond_14

    return-object v1

    .line 35
    :cond_14
    instance-of v1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz v1, :cond_0

    return-object v0

    .line 39
    :cond_19
    instance-of p1, v0, Lkotlinx/coroutines/channels/Closed;

    if-eqz p1, :cond_1e

    return-object v0

    :cond_1e
    const-string p1, "Invalid offerInternal result "

    .line 40
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->stringPlus(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
