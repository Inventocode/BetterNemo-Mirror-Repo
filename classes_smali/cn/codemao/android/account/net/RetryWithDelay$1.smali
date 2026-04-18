.class Lcn/codemao/android/account/net/RetryWithDelay$1;
.super Ljava/lang/Object;
.source "RetryWithDelay.java"

# interfaces
.implements Lio/reactivex/functions/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/codemao/android/account/net/RetryWithDelay;->apply(Lio/reactivex/Flowable;)Lorg/reactivestreams/Publisher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/reactivex/functions/Function<",
        "Ljava/lang/Throwable;",
        "Lorg/reactivestreams/Publisher<",
        "*>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/codemao/android/account/net/RetryWithDelay;


# direct methods
.method constructor <init>(Lcn/codemao/android/account/net/RetryWithDelay;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcn/codemao/android/account/net/RetryWithDelay$1;->this$0:Lcn/codemao/android/account/net/RetryWithDelay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {p0, p1}, Lcn/codemao/android/account/net/RetryWithDelay$1;->apply(Ljava/lang/Throwable;)Lorg/reactivestreams/Publisher;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/Throwable;)Lorg/reactivestreams/Publisher;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Lorg/reactivestreams/Publisher<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcn/codemao/android/account/net/RetryWithDelay$1;->this$0:Lcn/codemao/android/account/net/RetryWithDelay;

    invoke-static {v0}, Lcn/codemao/android/account/net/RetryWithDelay;->access$004(Lcn/codemao/android/account/net/RetryWithDelay;)I

    move-result v0

    iget-object v1, p0, Lcn/codemao/android/account/net/RetryWithDelay$1;->this$0:Lcn/codemao/android/account/net/RetryWithDelay;

    invoke-static {v1}, Lcn/codemao/android/account/net/RetryWithDelay;->access$100(Lcn/codemao/android/account/net/RetryWithDelay;)I

    move-result v1

    if-gt v0, v1, :cond_24

    .line 39
    iget-object p1, p0, Lcn/codemao/android/account/net/RetryWithDelay$1;->this$0:Lcn/codemao/android/account/net/RetryWithDelay;

    invoke-static {p1}, Lcn/codemao/android/account/net/RetryWithDelay;->access$200(Lcn/codemao/android/account/net/RetryWithDelay;)I

    move-result p1

    iget-object v0, p0, Lcn/codemao/android/account/net/RetryWithDelay$1;->this$0:Lcn/codemao/android/account/net/RetryWithDelay;

    invoke-static {v0}, Lcn/codemao/android/account/net/RetryWithDelay;->access$000(Lcn/codemao/android/account/net/RetryWithDelay;)I

    move-result v0

    mul-int p1, p1, v0

    int-to-long v0, p1

    sget-object p1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-static {v0, v1, p1}, Lio/reactivex/Flowable;->timer(JLjava/util/concurrent/TimeUnit;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1

    .line 42
    :cond_24
    invoke-static {p1}, Lio/reactivex/Flowable;->error(Ljava/lang/Throwable;)Lio/reactivex/Flowable;

    move-result-object p1

    return-object p1
.end method
