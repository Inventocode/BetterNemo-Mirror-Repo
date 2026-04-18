.class public final Lcom/ljwx/baseapp/vm/GlobalDataRepository;
.super Ljava/lang/Object;
.source "GlobalDataRepository.kt"


# static fields
.field public static final INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

.field private static final TAG:Ljava/lang/String;

.field private static final configInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;",
            ">;"
        }
    .end annotation
.end field

.field private static final userInfo:Landroidx/lifecycle/MutableLiveData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/lifecycle/MutableLiveData<",
            "Lcom/ljwx/baseapp/infochange/IBaseUserInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    invoke-direct {v0}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->INSTANCE:Lcom/ljwx/baseapp/vm/GlobalDataRepository;

    .line 12
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-[Global"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->TAG:Ljava/lang/String;

    .line 14
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->userInfo:Landroidx/lifecycle/MutableLiveData;

    .line 15
    new-instance v0, Landroidx/lifecycle/MutableLiveData;

    invoke-direct {v0}, Landroidx/lifecycle/MutableLiveData;-><init>()V

    sput-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->configInfo:Landroidx/lifecycle/MutableLiveData;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getTAG()Ljava/lang/String;
    .registers 2

    .line 12
    sget-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public final observeConfigInfo(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/ljwx/baseapp/infochange/IBaseConfigInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    sget-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->configInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final observeUserInfo(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/lifecycle/LifecycleOwner;",
            "Landroidx/lifecycle/Observer<",
            "Lcom/ljwx/baseapp/infochange/IBaseUserInfo;",
            ">;)V"
        }
    .end annotation

    const-string v0, "owner"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "添加观察者"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    sget-object v0, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->userInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {v0, p1, p2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public final postUserInfo(Lcom/ljwx/baseapp/infochange/IBaseUserInfo;Ljava/lang/Integer;)V
    .registers 3

    if-eqz p1, :cond_5

    .line 28
    invoke-interface {p1, p2}, Lcom/ljwx/baseapp/infochange/IBaseUserInfo;->setInfoChangeType(Ljava/lang/Integer;)V

    .line 29
    :cond_5
    sget-object p2, Lcom/ljwx/baseapp/vm/GlobalDataRepository;->userInfo:Landroidx/lifecycle/MutableLiveData;

    invoke-virtual {p2, p1}, Landroidx/lifecycle/MutableLiveData;->postValue(Ljava/lang/Object;)V

    return-void
.end method
