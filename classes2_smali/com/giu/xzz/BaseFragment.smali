.class public abstract Lcom/giu/xzz/BaseFragment;
.super Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;
.source "BaseFragment.java"


# instance fields
.field protected compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

.field protected isUserInfoChanged:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;-><init>()V

    .line 31
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/giu/xzz/BaseFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    return-void
.end method


# virtual methods
.method protected abstract contentViewId()I
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 2

    .line 54
    invoke-super {p0, p1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 2

    .line 36
    invoke-super {p0, p1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onAttach(Landroid/content/Context;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 41
    invoke-super {p0, p1}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 4

    .line 47
    invoke-virtual {p0}, Lcom/giu/xzz/BaseFragment;->contentViewId()I

    move-result p2

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 48
    invoke-static {p0, p1}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    return-object p1
.end method

.method public onDestroy()V
    .registers 2

    .line 77
    iget-object v0, p0, Lcom/giu/xzz/BaseFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->isDisposed()Z

    move-result v0

    if-nez v0, :cond_d

    .line 78
    iget-object v0, p0, Lcom/giu/xzz/BaseFragment;->compositeDisposable:Lio/reactivex/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->dispose()V

    .line 80
    :cond_d
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .registers 2

    .line 59
    invoke-super {p0}, Lcom/giu/xzz/rx/lifecycle/RxLifeFragment;->onResume()V

    .line 60
    iget-boolean v0, p0, Lcom/giu/xzz/BaseFragment;->isUserInfoChanged:Z

    if-eqz v0, :cond_d

    const/4 v0, 0x0

    .line 61
    iput-boolean v0, p0, Lcom/giu/xzz/BaseFragment;->isUserInfoChanged:Z

    .line 62
    invoke-virtual {p0}, Lcom/giu/xzz/BaseFragment;->onUserInfoChanged()V

    :cond_d
    return-void
.end method

.method public onUserInfoChanged()V
    .registers 3

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "basefragment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onUserInfoChange"

    invoke-static {v1, v0}, Lcom/giu/xzz/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setUserInfoChanged(Z)V
    .registers 2

    .line 72
    iput-boolean p1, p0, Lcom/giu/xzz/BaseFragment;->isUserInfoChanged:Z

    return-void
.end method

.method public startActivity(Landroid/content/Intent;)V
    .registers 2

    .line 98
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
