.class public abstract Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;
.super Landroidx/lifecycle/AndroidViewModel;
.source "BaseAndroidViewModel.kt"

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
        "Landroidx/lifecycle/AndroidViewModel;",
        "Lcom/ljwx/baseapp/vm/IBaseViewModel<",
        "TM;>;",
        "Landroidx/lifecycle/DefaultLifecycleObserver;",
        "Lcom/ljwx/baseapp/event/ISendLocalEvent;"
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

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


# direct methods
.method public constructor <init>(Landroid/app/Application;)V
    .registers 4

    const-string v0, "application"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    invoke-direct {p0, p1}, Landroidx/lifecycle/AndroidViewModel;-><init>(Landroid/app/Application;)V

    .line 24
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-[mvvm"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->TAG:Ljava/lang/String;

    .line 31
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->mShowPopLoading:Landroidx/lifecycle/MutableLiveData;

    .line 32
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->mDismissPopLoading:Landroidx/lifecycle/MutableLiveData;

    .line 33
    new-instance p1, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {p1}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    iput-object p1, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->mFinishActivity:Landroidx/lifecycle/MutableLiveData;

    .line 39
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "创建repository"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    invoke-interface {p0}, Lcom/ljwx/baseapp/vm/IBaseViewModel;->createRepository()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    iput-object p1, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->mRepository:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    return-void
.end method


# virtual methods
.method public getTAG()Ljava/lang/String;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method protected onCleared()V
    .registers 4

    .line 77
    invoke-super {p0}, Landroidx/lifecycle/ViewModel;->onCleared()V

    .line 78
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->mRepository:Lcom/ljwx/baseapp/vm/model/BaseDataRepository;

    if-eqz v0, :cond_a

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->onRxCleared()V

    .line 79
    :cond_a
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->onRxCleared()V

    .line 80
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ViewModel的onCleared执行"

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

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleOwner的onDestroy执行"

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

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "执行Rx自动取消"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

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

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/BaseAndroidViewModel;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LifecycleOwner的onStop执行"

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
