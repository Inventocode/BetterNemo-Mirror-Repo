.class public abstract Lcom/ljwx/baseactivity/BaseMVVMPadActivity;
.super Lcom/ljwx/baseactivity/BaseBindingPadActivity;
.source "BaseMVVMPadActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "BindingPad:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/ljwx/baseactivity/BaseBindingPadActivity<",
        "TBinding;TBindingPad;>;"
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
.method public static synthetic $r8$lambda$O9xbiBhMGUOFo-AYA8IJtINL644(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->initPopLoadingObserver$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$_BuuijKBaLRbTYWR9G9PF1tTIXk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->initPopLoadingObserver$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dR-K7qtKgJk1_SKnnQPB3kU55TQ(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;-><init>(II)V

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initPopLoadingObserver$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initPopLoadingObserver$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public commonStep3ObserveData()V
    .registers 4

    .line 48
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getFinishActivity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$commonStep3ObserveData$1;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$commonStep3ObserveData$1;-><init>(Lcom/ljwx/baseactivity/BaseMVVMPadActivity;)V

    new-instance v2, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 53
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->scope(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    return-void
.end method

.method public createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 38
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.actualTypeArguments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<ViewModel of com.ljwx.baseactivity.BaseMVVMPadActivity>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Class;

    .line 39
    sget-object v1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->getTAG()Ljava/lang/String;

    move-result-object v2

    const-string v3, "创建viewmodel"

    invoke-virtual {v1, v2, v3}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
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

    .line 18
    iget-object v0, p0, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

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

    .line 28
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getPopLoadingShow()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$initPopLoadingObserver$1;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$initPopLoadingObserver$1;-><init>(Lcom/ljwx/baseactivity/BaseMVVMPadActivity;)V

    new-instance v2, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 31
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getPopLoadingDismiss()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$initPopLoadingObserver$2;

    invoke-direct {v1, p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$initPopLoadingObserver$2;-><init>(Lcom/ljwx/baseactivity/BaseMVVMPadActivity;)V

    new-instance v2, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 21
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseBindingPadActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->setMViewModel(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    .line 23
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 24
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->initPopLoadingObserver()V

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

    .line 18
    iput-object p1, p0, Lcom/ljwx/baseactivity/BaseMVVMPadActivity;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    return-void
.end method
