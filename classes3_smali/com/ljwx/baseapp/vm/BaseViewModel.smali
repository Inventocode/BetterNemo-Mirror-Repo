.class public abstract Lcom/ljwx/baseapp/vm/BaseViewModel;
.super Landroidx/lifecycle/ViewModel;
.source "BaseViewModel.kt"

# interfaces
.implements Lcom/ljwx/baseapp/vm/IBaseViewModel;
.implements Landroidx/lifecycle/DefaultLifecycleObserver;
.implements Lcom/ljwx/baseapp/event/ISendLocalEvent;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M:",
        "Lcom/ljwx/baseapp/vm/model/BaseDataRepository<",
        "*>;>",
        "Landroidx/lifecycle/ViewModel;",
        "Lcom/ljwx/baseapp/vm/IBaseViewModel<",
        "TM;>;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lcom/ljwx/baseapp/event/ISendLocalEvent;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final finishActivity:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

.field private final mDismissPopLoading:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mFinishActivity:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mRepository:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field

.field private final mShowPopLoading:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final popLoadingDismiss:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final popLoadingShow:Landroidx/lifecycle/LiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 4

    .line 20
    invoke-direct {p0}, Landroidx/lifecycle/ViewModel;-><init>()V

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-[VM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mShowPopLoading:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance v1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v1, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mDismissPopLoading:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance v2, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v2}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object v2, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mFinishActivity:Landroidx/lifecycle/MutableLiveData;

    .line 34
    iput-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->popLoadingShow:Landroidx/lifecycle/LiveData;

    .line 35
    iput-object v1, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->popLoadingDismiss:Landroidx/lifecycle/LiveData;

    .line 36
    iput-object v2, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->finishActivity:Landroidx/lifecycle/LiveData;

    .line 40
    invoke-interface {p0}, Lcom/ljwx/baseapp/vm/IBaseViewModel;->createRepository()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    iput-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mRepository:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    return-void
.end method


# virtual methods
.method public final getFinishActivity()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->finishActivity:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method protected final getMRepository()Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 25
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mRepository:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    return-object v0
.end method

.method public final getPopLoadingDismiss()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->popLoadingDismiss:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public final getPopLoadingShow()Landroidx/lifecycle/LiveData;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/lifecycle/LiveData<",
            "Lkotlin/Triple<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 34
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->popLoadingShow:Landroidx/lifecycle/LiveData;

    return-object v0
.end method

.method public getTAG()Ljava/lang/String;
    .registers 2

    .line 23
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCleared()V
    .registers 4

    .line 77
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 78
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mRepository:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->onRxCleared()V

    .line 79
    :cond_a
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->onRxCleared()V

    .line 80
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "onCleared执行"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onCreate(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onCreate(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onDestroy(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onDestroy(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 73
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onDestroy执行"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public synthetic onPause(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onPause(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public synthetic onResume(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onResume(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onRxCleared()V
    .registers 4

    .line 61
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "执行Rx自动取消"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseViewModel;->mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_12
    return-void
.end method

.method public synthetic onStart(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 2

    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStart(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    return-void
.end method

.method public onStop(Landroidx/lifecycle/LifecycleOwner;)V
    .registers 4

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    invoke-static {p0, p1}, Landroidx/lifecycle/DefaultLifecycleObserver$-CC;->$default$onStop(Landroidx/lifecycle/DefaultLifecycleObserver;Landroidx/lifecycle/LifecycleOwner;)V

    .line 68
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "onStop执行"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public sendLocalEvent(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 4

    .line 98
    sget-object p3, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    invoke-virtual {p3, p1, p2}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method
