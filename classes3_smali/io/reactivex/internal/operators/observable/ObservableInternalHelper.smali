.class public final Lio/reactivex/internal/operators/observable/ObservableInternalHelper;
.super Ljava/lang/Object;
.source "ObservableInternalHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;,
        Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnError;,
        Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnNext;
    }
.end annotation


# direct methods
.method public static observerOnComplete(Lio/reactivex/Observer;)Lio/reactivex/functions/Action;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "TT;>;)",
            "Lio/reactivex/functions/Action;"
        }
    .end annotation

    .line 134
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnComplete;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static observerOnError(Lio/reactivex/Observer;)Lio/reactivex/functions/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 130
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnError;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnError;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method

.method public static observerOnNext(Lio/reactivex/Observer;)Lio/reactivex/functions/Consumer;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/reactivex/Observer<",
            "TT;>;)",
            "Lio/reactivex/functions/Consumer<",
            "TT;>;"
        }
    .end annotation

    .line 126
    new-instance v0, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnNext;

    invoke-direct {v0, p0}, Lio/reactivex/internal/operators/observable/ObservableInternalHelper$ObserverOnNext;-><init>(Lio/reactivex/Observer;)V

    return-object v0
.end method
