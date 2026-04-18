.class public Lautodispose2/androidx/lifecycle/LifecycleEventsObservable_AutoDisposeLifecycleObserver_LifecycleAdapter;
.super Ljava/lang/Object;
.source "LifecycleEventsObservable_AutoDisposeLifecycleObserver_LifecycleAdapter.java"

# interfaces
.implements Landroidx/lifecycle/GeneratedAdapter;


# instance fields
.field final mReceiver:Lautodispose2/androidx/lifecycle/LifecycleEventsObservable$AutoDisposeLifecycleObserver;


# direct methods
.method constructor <init>(Lautodispose2/androidx/lifecycle/LifecycleEventsObservable$AutoDisposeLifecycleObserver;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iput-object p1, p0, Lautodispose2/androidx/lifecycle/LifecycleEventsObservable_AutoDisposeLifecycleObserver_LifecycleAdapter;->mReceiver:Lautodispose2/androidx/lifecycle/LifecycleEventsObservable$AutoDisposeLifecycleObserver;

    return-void
.end method


# virtual methods
.method public callMethods(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;ZLandroidx/lifecycle/MethodCallsLogger;)V
    .registers 6

    if-eqz p4, :cond_4

    const/4 v0, 0x1

    goto :goto_5

    :cond_4
    const/4 v0, 0x0

    :goto_5
    if-eqz p3, :cond_17

    if-eqz v0, :cond_12

    const/4 p3, 0x4

    const-string v0, "onStateChange"

    .line 22
    invoke-virtual {p4, v0, p3}, Landroidx/lifecycle/MethodCallsLogger;->approveCall(Ljava/lang/String;I)Z

    move-result p3

    if-eqz p3, :cond_17

    .line 23
    :cond_12
    iget-object p3, p0, Lautodispose2/androidx/lifecycle/LifecycleEventsObservable_AutoDisposeLifecycleObserver_LifecycleAdapter;->mReceiver:Lautodispose2/androidx/lifecycle/LifecycleEventsObservable$AutoDisposeLifecycleObserver;

    invoke-virtual {p3, p1, p2}, Lautodispose2/androidx/lifecycle/LifecycleEventsObservable$AutoDisposeLifecycleObserver;->onStateChange(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Lifecycle$Event;)V

    :cond_17
    return-void
.end method
