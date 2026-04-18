.class public Lcom/codemao/creativecenter/base/BaseCreativeActivity;
.super Lcom/nemo/commonui/BaseNemoUIActivity;
.source "BaseCreativeActivity.java"


# instance fields
.field protected final mSubject:Lio/reactivex/subjects/BehaviorSubject;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/BehaviorSubject<",
            "Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 12
    invoke-direct {p0}, Lcom/nemo/commonui/BaseNemoUIActivity;-><init>()V

    .line 14
    invoke-static {}, Lio/reactivex/subjects/BehaviorSubject;->create()Lio/reactivex/subjects/BehaviorSubject;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

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
            "Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;",
            "TK;>;"
        }
    .end annotation

    .line 65
    new-instance v0, Lcom/codemao/creativecenter/base/LifeCycleTransformer;

    iget-object v1, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v2, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->DESTORY:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-direct {v0, v1, v2}, Lcom/codemao/creativecenter/base/LifeCycleTransformer;-><init>(Lio/reactivex/subjects/BehaviorSubject;Ljava/lang/Object;)V

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 18
    invoke-super {p0, p1}, Lcom/nemo/commonui/BaseNemoUIActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    iget-object p1, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v0, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->CREATE:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {p1, v0}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 20
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->resetDisplayDensity(Landroid/content/Context;)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->DESTORY:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 57
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method protected onPause()V
    .registers 3

    .line 44
    iget-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->PAUSE:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 45
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    return-void
.end method

.method protected onRestart()V
    .registers 3

    .line 31
    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    .line 32
    iget-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->RESTART:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 33
    invoke-static {p0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->resetDisplayDensity(Landroid/content/Context;)V

    return-void
.end method

.method protected onResume()V
    .registers 3

    .line 38
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 39
    iget-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->RESUME:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStart()V
    .registers 3

    .line 25
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStart()V

    .line 26
    iget-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->START:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method protected onStop()V
    .registers 3

    .line 50
    iget-object v0, p0, Lcom/codemao/creativecenter/base/BaseCreativeActivity;->mSubject:Lio/reactivex/subjects/BehaviorSubject;

    sget-object v1, Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;->STOP:Lcom/codemao/creativecenter/base/CreativeActivityLifeCycleEvent;

    invoke-virtual {v0, v1}, Lio/reactivex/subjects/BehaviorSubject;->onNext(Ljava/lang/Object;)V

    .line 51
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onStop()V

    return-void
.end method
