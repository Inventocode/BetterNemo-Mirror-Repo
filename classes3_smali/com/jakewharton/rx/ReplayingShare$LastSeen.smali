.class final Lcom/jakewharton/rx/ReplayingShare$LastSeen;
.super Ljava/lang/Object;
.source "ReplayingShare.java"

# interfaces
.implements Lio/reactivex/Observer;
.implements Lorg/reactivestreams/Subscriber;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rx/ReplayingShare;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "LastSeen"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/Observer<",
        "TT;>;",
        "Lorg/reactivestreams/Subscriber<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field volatile value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->defaultValue:Ljava/lang/Object;

    .line 84
    iput-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->value:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onComplete()V
    .registers 2

    .line 96
    iget-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->defaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->value:Ljava/lang/Object;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .registers 2

    .line 92
    iget-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->defaultValue:Ljava/lang/Object;

    iput-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->value:Ljava/lang/Object;

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 88
    iput-object p1, p0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;->value:Ljava/lang/Object;

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .registers 2

    return-void
.end method

.method public onSubscribe(Lorg/reactivestreams/Subscription;)V
    .registers 2

    return-void
.end method
