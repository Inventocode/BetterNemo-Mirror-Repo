.class public Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;
.super Landroidx/fragment/app/Fragment;
.source "RxLifeFragment.java"


# instance fields
.field protected final mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 23
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public bindRxLifeCycle()Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;
    .registers 4

    .line 94
    new-instance v0, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;

    iget-object v1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->DESTORY:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-direct {v0, v1, v2}, Lcom/giu/xzz/rx/lifecycle/transform/LifeCycleTransformer;-><init>(Lio/reactivex/subjects/BehaviorSubject;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 48
    iget-object p1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->ACTIVITY_CREATE:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 28
    iget-object p1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->ATTACH:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 33
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 34
    iget-object p1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->CREATE:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 41
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->CREATE_VIEW:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 42
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 83
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->DESTORY:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 84
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 77
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->DESTORY_VIEW:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 78
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 89
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->DETACH:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 90
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 65
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->PAUSE:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 66
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 59
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 60
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->RESUME:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 53
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 54
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->START:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 71
    iget-object v0, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->STOP:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 72
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
