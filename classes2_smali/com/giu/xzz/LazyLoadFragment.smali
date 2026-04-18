.class public abstract Lcom/giu/xzz/LazyLoadFragment;
.super Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;
.source "LazyLoadFragment.java"


# instance fields
.field protected bIsDataLoaded:Z

.field protected bIsViewCreated:Z


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 27
    invoke-direct {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract contentViewId()I
.end method

.method protected abstract getData()V
.end method

.method protected abstract initView(Landroid/view/View;)V
.end method

.method protected isNeedLoading()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method

.method protected loadData()V
    .registers 2

    .line 86
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/giu/xzz/utils/NetworkHelper;->isConnect(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 87
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->showError()V

    return-void

    .line 90
    :cond_e
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->getData()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    .line 35
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->contentViewId()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 36
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 37
    invoke-virtual {p0, p1}, Lcom/giu/xzz/LazyLoadFragment;->initView(Landroid/view/View;)V

    const/4 p2, 0x1

    .line 38
    iput-boolean p2, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsViewCreated:Z

    .line 39
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->isNeedLoading()Z

    move-result p3

    if-eqz p3, :cond_27

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getUserVisibleHint()Z

    move-result p3

    if-eqz p3, :cond_27

    iget-boolean p3, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsDataLoaded:Z

    if-nez p3, :cond_27

    .line 40
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->loadData()V

    .line 41
    iput-boolean p2, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsDataLoaded:Z

    :cond_27
    return-object p1
.end method

.method public onDestroyView()V
    .registers 2

    .line 52
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onDestroyView()V

    const/4 v0, 0x0

    .line 54
    iput-boolean v0, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsViewCreated:Z

    .line 55
    iput-boolean v0, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsDataLoaded:Z

    return-void
.end method

.method public setUserVisibleHint(Z)V
    .registers 3

    .line 60
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->setUserVisibleHint(Z)V

    .line 61
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->isNeedLoading()Z

    move-result v0

    if-eqz v0, :cond_19

    if-eqz p1, :cond_19

    iget-boolean v0, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsViewCreated:Z

    if-eqz v0, :cond_19

    iget-boolean v0, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsDataLoaded:Z

    if-nez v0, :cond_19

    .line 62
    invoke-virtual {p0}, Lcom/giu/xzz/LazyLoadFragment;->loadData()V

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/giu/xzz/LazyLoadFragment;->bIsDataLoaded:Z

    :cond_19
    if-eqz p1, :cond_23

    .line 66
    iget-object p1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->RESUME:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    goto :goto_2a

    .line 68
    :cond_23
    iget-object p1, p0, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;->PAUSE:Lcom/giu/xzz/rx/lifecycle/event/FragmentLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    :goto_2a
    return-void
.end method

.method protected abstract showError()V
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 2

    .line 113
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
