.class public Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;
.super Landroidx/fragment/app/Fragment;
.source "CreativeRxLifeFragment.java"


# instance fields
.field protected final mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 20
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 22
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    return-void
.end method


# virtual methods
.method public bindRxLifeCycle()Lcom/codemao/creativecenter/base/LifeCycleTransformer;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/codemao/creativecenter/base/LifeCycleTransformer<",
            "Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;",
            "TK;>;"
        }
    .end annotation

    .line 97
    new-instance v0, Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    iget-object v1, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DESTORY:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/base/LifeCycleTransformer;-><init>(Lio/reactivex/subjects/BehaviorSubject;Ljava/lang/Object;)V

    return-object v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 3

    .line 46
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    iget-object p1, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->ACTIVITY_CREATE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 3

    .line 26
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 27
    iget-object p1, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->ATTACH:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 32
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    iget-object p1, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->CREATE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    .line 40
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->CREATE_VIEW:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 41
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 3

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DESTORY:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 83
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onDestroyView()V
    .registers 3

    .line 76
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DESTORY_VIEW:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 77
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    return-void
.end method

.method public onDetach()V
    .registers 3

    .line 88
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->DETACH:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 89
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    return-void
.end method

.method public onPause()V
    .registers 3

    .line 64
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->PAUSE:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 65
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    return-void
.end method

.method public onResume()V
    .registers 3

    .line 58
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 59
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->RESUME:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStart()V
    .registers 3

    .line 52
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 53
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->START:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public onStop()V
    .registers 3

    .line 70
    iget-object v0, p0, Lcom/codemao/creativecenter/base/CreativeRxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;->STOP:Lcom/codemao/creativecenter/base/CreativeFragmentLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 71
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    return-void
.end method
