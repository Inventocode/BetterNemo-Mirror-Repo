.class final Lautodispose2/androidx/lifecycle/LifecycleEventsObservable$AutoDisposeLifecycleObserver;
.super Lautodispose2/android/internal/MainThreadDisposable;
.source "LifecycleEventsObservable.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# virtual methods
.method onStateChange(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V
    .registers 4
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_ANY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 116
    invoke-virtual {p0}, Lautodispose2/android/internal/MainThreadDisposable;->isDisposed()Z

    move-result p1

    if-nez p1, :cond_d

    .line 117
    sget-object p1, Landroidx/lifecycle/Lifecycle$Event;->ON_CREATE:Landroidx/lifecycle/Lifecycle$Event;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_c

    throw v0

    .line 120
    :cond_c
    throw v0

    :cond_d
    return-void
.end method
