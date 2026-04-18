.class public Lcn/codemao/android/account/net/RetryWithDelay;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Lio/reactivex/Flowable<",
        "+",
        "Ljava/lang/Throwable;",
        ">;",
        "Lorg/reactivestreams/Publisher<",
        "*>;>;"
    }
.end annotation


# instance fields
.field private maxRetries:I

.field private retryCount:I

.field private retryDelayMillis:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->maxRetries:I

    const/16 v0, 0x3e8

    .line 16
    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryDelayMillis:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryCount:I

    return-void
.end method

.method public constructor <init>(II)V
    .registers 4

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0xa

    .line 15
    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->maxRetries:I

    const/16 v0, 0x3e8

    .line 16
    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryDelayMillis:I

    const/4 v0, 0x0

    .line 17
    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryCount:I

    .line 25
    iput p1, p0, Lcn/codemao/android/account/net/RetryWithDelay;->maxRetries:I

    .line 26
    iput p2, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryDelayMillis:I

    return-void
.end method

.method static synthetic access$000(Lcn/codemao/android/account/net/RetryWithDelay;)I
    .registers 1

    .line 12
    iget p0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryCount:I

    return p0
.end method

.method static synthetic access$004(Lcn/codemao/android/account/net/RetryWithDelay;)I
    .registers 2

    .line 12
    iget v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryCount:I

    return v0
.end method

.method static synthetic access$100(Lcn/codemao/android/account/net/RetryWithDelay;)I
    .registers 1

    .line 12
    iget p0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->maxRetries:I

    return p0
.end method

.method static synthetic access$200(Lcn/codemao/android/account/net/RetryWithDelay;)I
    .registers 1

    .line 12
    iget p0, p0, Lcn/codemao/android/account/net/RetryWithDelay;->retryDelayMillis:I

    return p0
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 12
    check-cast p1, Lio/reactivex/Flowable;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/RetryWithDelay;->apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Flowable<",
            "+",
            "Ljava/lang/Throwable;",
            ">;)",
            "Lorg/reactivestreams/Publisher<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 31
    new-instance v0, Lcn/codemao/android/account/net/RetryWithDelay$1;

    invoke-direct {v0, p0}, Lcn/codemao/android/account/net/RetryWithDelay$1;-><init>(Lcn/codemao/android/account/net/RetryWithDelay;)V

    .line 32
    invoke-virtual {p1, v0}, Lio/reactivex/Flowable;->flatMap(Lio/reactivex/functions/Function;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
