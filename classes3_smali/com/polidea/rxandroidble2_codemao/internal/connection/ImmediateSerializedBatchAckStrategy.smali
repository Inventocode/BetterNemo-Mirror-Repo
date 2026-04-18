.class public Lcom/polidea/rxandroidble2_codemao/internal/connection/ImmediateSerializedBatchAckStrategy;
.super Ljava/lang/Object;
.source "ImmediateSerializedBatchAckStrategy.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;)",
            "Lio/reactivex/Observable<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    return-object p1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 2

    .line 7
    invoke-virtual {p0, p1}, Lcom/polidea/rxandroidble2_codemao/internal/connection/ImmediateSerializedBatchAckStrategy;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
