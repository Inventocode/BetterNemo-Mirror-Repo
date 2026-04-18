.class public final Lcom/jakewharton/rx/ReplayingShare;
.super Ljava/lang/Object;
.source "ReplayingShare.java"

# interfaces
.implements Lio/reactivex/ObservableTransformer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jakewharton/rx/ReplayingShare$LastSeenObserver;,
        Lcom/jakewharton/rx/ReplayingShare$LastSeenObservable;,
        Lcom/jakewharton/rx/ReplayingShare$LastSeen;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/reactivex/ObservableTransformer<",
        "TT;TT;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/jakewharton/rx/ReplayingShare;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/jakewharton/rx/ReplayingShare<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final defaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 40
    new-instance v0, Lcom/jakewharton/rx/ReplayingShare;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/jakewharton/rx/ReplayingShare;-><init>(Ljava/lang/Object;)V

    sput-object v0, Lcom/jakewharton/rx/ReplayingShare;->INSTANCE:Lcom/jakewharton/rx/ReplayingShare;

    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/jakewharton/rx/ReplayingShare;->defaultValue:Ljava/lang/Object;

    return-void
.end method

.method public static instance()Lcom/jakewharton/rx/ReplayingShare;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/jakewharton/rx/ReplayingShare<",
            "TT;>;"
        }
    .end annotation

    .line 46
    sget-object v0, Lcom/jakewharton/rx/ReplayingShare;->INSTANCE:Lcom/jakewharton/rx/ReplayingShare;

    return-object v0
.end method


# virtual methods
.method public apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observable<",
            "TT;>;)",
            "Lio/reactivex/Observable<",
            "TT;>;"
        }
    .end annotation

    .line 69
    new-instance v0, Lcom/jakewharton/rx/ReplayingShare$LastSeen;

    iget-object v1, p0, Lcom/jakewharton/rx/ReplayingShare;->defaultValue:Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/jakewharton/rx/ReplayingShare$LastSeen;-><init>(Ljava/lang/Object;)V

    .line 70
    new-instance v1, Lcom/jakewharton/rx/ReplayingShare$LastSeenObservable;

    invoke-virtual {p1, v0}, Lio/reactivex/Observable;->doOnEach(Lio/reactivex/Observer;)Lio/reactivex/Observable;

    move-result-object p1

    invoke-virtual {p1}, Lio/reactivex/Observable;->share()Lio/reactivex/Observable;

    move-result-object p1

    invoke-direct {v1, p1, v0}, Lcom/jakewharton/rx/ReplayingShare$LastSeenObservable;-><init>(Lio/reactivex/Observable;Lcom/jakewharton/rx/ReplayingShare$LastSeen;)V

    return-object v1
.end method

.method public bridge synthetic apply(Lio/reactivex/Observable;)Lio/reactivex/ObservableSource;
    .registers 2

    .line 38
    invoke-virtual {p0, p1}, Lcom/jakewharton/rx/ReplayingShare;->apply(Lio/reactivex/Observable;)Lio/reactivex/Observable;

    move-result-object p1

    return-object p1
.end method
