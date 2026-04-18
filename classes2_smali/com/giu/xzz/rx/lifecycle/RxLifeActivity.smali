.class public Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RxLifeActivity.java"


# instance fields
.field protected final mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 17
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    .line 19
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer<",
            "Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;",
            "TK;>;"
        }
    .end annotation

    .line 68
    new-instance v0, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    iget-object v1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->DESTORY:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;-><init>(Lio/reactivex/subjects/BehaviorSubject;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 23
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 24
    iget-object p1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->CREATE:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 59
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->DESTORY:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 60
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 47
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->PAUSE:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 48
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    .line 35
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 36
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->RESTART:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 41
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 42
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->RESUME:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 29
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 30
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->START:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 53
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;->STOP:Lcom/giu/xzz/rx/lifecycle/event/ActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 54
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
