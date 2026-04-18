.class public abstract Lcom/ljwx/baseapp/vm/model/BaseDataRepository;
.super Ljava/lang/Object;
.source "BaseDataRepository.kt"

# interfaces
.implements Lcom/ljwx/baseapp/vm/model/IBaseDataRepository;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/ljwx/baseapp/vm/model/BaseDataRepository$Companion;,
        Lcom/ljwx/baseapp/vm/model/BaseDataRepository$QuickObserver;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Server:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/ljwx/baseapp/vm/model/IBaseDataRepository<",
        "TServer;>;"
    }
.end annotation


# static fields
.field private static globalObserverOnError:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Throwable;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field private static globalResponseFail:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/String;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

.field private pageDataOffset:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-[repository"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->TAG:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getGlobalObserverOnError$cp()Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 8
    sget-object v0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->globalObserverOnError:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method public static final synthetic access$getGlobalResponseFail$cp()Lkotlin/jvm/functions/Function2;
    .registers 1

    .line 8
    sget-object v0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->globalResponseFail:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method


# virtual methods
.method public autoClear(Lio/reactivex/disposables/Disposable;)V
    .registers 5

    const-string v0, "disposable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "添加Rx2自动取消"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

    if-nez v0, :cond_1b

    .line 61
    new-instance v0, Lio/reactivex/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

    .line 63
    :cond_1b
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_22

    invoke-virtual {v0, p1}, Lio/reactivex/disposables/CompositeDisposable;->add(Lio/reactivex/disposables/Disposable;)Z

    :cond_22
    return-void
.end method

.method protected final getMApiServer()Ljava/lang/Object;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TServer;"
        }
    .end annotation

    .line 41
    invoke-interface {p0}, Lcom/ljwx/baseapp/vm/model/IBaseDataRepository;->createServer()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected final getPageDataOffset()I
    .registers 2

    .line 35
    iget v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->pageDataOffset:I

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .registers 2

    .line 32
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public increaseOffset(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 48
    iget v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->pageDataOffset:I

    if-eqz p1, :cond_9

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    add-int/2addr v0, p1

    iput v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->pageDataOffset:I

    .line 49
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "当前offset值:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->pageDataOffset:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onRxCleared()V
    .registers 4

    .line 83
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "执行Rx自动取消"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->mCompositeDisposable2:Lio/reactivex/disposables/CompositeDisposable;

    if-eqz v0, :cond_12

    invoke-virtual {v0}, Lio/reactivex/disposables/CompositeDisposable;->clear()V

    :cond_12
    return-void
.end method

.method public refreshOffset(Z)V
    .registers 2

    if-eqz p1, :cond_4

    const/4 p1, 0x0

    goto :goto_6

    .line 44
    :cond_4
    iget p1, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->pageDataOffset:I

    :goto_6
    iput p1, p0, Lcom/ljwx/baseapp/vm/model/BaseDataRepository;->pageDataOffset:I

    return-void
.end method
