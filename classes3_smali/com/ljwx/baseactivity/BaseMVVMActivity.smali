.class public abstract Lcom/ljwx/baseactivity/BaseMVVMActivity;
.super Lcom/ljwx/baseactivity/BaseBindingActivity;
.source "BaseMVVMActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/ljwx/baseactivity/BaseBindingActivity<",
        "TBinding;>;"
    }
.end annotation


# instance fields
.field protected mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TViewModel;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$-9RsDDqusG6RNhffcorzJTizsSk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->initPopLoadingObserver$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$2ri5k0OZCw5wH8L4pJJZB6cMxMw(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$b7wZ3cIDht_eQ39vcqJ9-dGg5Pc(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->initPopLoadingObserver$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 2

    .line 14
    invoke-direct {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingActivity;-><init>(I)V

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 46
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initPopLoadingObserver$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initPopLoadingObserver$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public commonStep3ObserveData()V
    .registers 4

    .line 46
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getFinishActivity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity$commonStep3ObserveData$1;-><init>(Lcom/ljwx/baseactivity/BaseMVVMActivity;)V

    new-instance v2, Lcom/ljwx/baseactivity/BaseMVVMActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/ljwx/baseactivity/BaseMVVMActivity$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 51
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->scope(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    return-void
.end method

.method public createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 35
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 36
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.actualTypeArguments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<ViewModel of com.ljwx.baseactivity.BaseMVVMActivity>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Class;

    .line 37
    sget-object v1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "创建viewmodel"

    invoke-virtual {v1, v2, v3}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/BaseViewModel;

    return-object v0
.end method

.method protected final getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public initPopLoadingObserver()V
    .registers 4

    .line 26
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getPopLoadingShow()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$1;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$1;-><init>(Lcom/ljwx/baseactivity/BaseMVVMActivity;)V

    new-instance v2, Lcom/ljwx/baseactivity/BaseMVVMActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/ljwx/baseactivity/BaseMVVMActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 29
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getPopLoadingDismiss()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$2;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity$initPopLoadingObserver$2;-><init>(Lcom/ljwx/baseactivity/BaseMVVMActivity;)V

    new-instance v2, Lcom/ljwx/baseactivity/BaseMVVMActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/ljwx/baseactivity/BaseMVVMActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 19
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingActivity;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->setMViewModel(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    .line 21
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 22
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->initPopLoadingObserver()V

    return-void
.end method

.method public scope(Lcom/ljwx/baseapp/vm/BaseViewModel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewModel;)V"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method protected final setMViewModel(Lcom/ljwx/baseapp/vm/BaseViewModel;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TViewModel;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMActivity;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    return-void
.end method
