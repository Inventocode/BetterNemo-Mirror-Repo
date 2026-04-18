.class public abstract Lcom/ljwx/basefragment/BaseMVVMPadFragment;
.super Lcom/ljwx/basefragment/BaseBindingPadFragment;
.source "BaseMVVMPadFragment.kt"


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
        "Lcom/ljwx/basefragment/BaseBindingPadFragment<",
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

.field private final mViewModelScope$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$Cfcc0uj2baiyDWyj2MzYad53kc8(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eSfEW6C_is2Pzg0tswwznSxY-bk(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->initPopLoadingObserver$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qFGqVM-Hse8P3B8890BXBgG36ck(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->initPopLoadingObserver$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(II)V
    .registers 3

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/ljwx/basefragment/BaseBindingPadFragment;-><init>(II)V

    .line 19
    sget-object p1, Lcom/ljwx/basefragment/BaseMVVMPadFragment$mViewModelScope$2;->INSTANCE:Lcom/ljwx/basefragment/BaseMVVMPadFragment$mViewModelScope$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->mViewModelScope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initPopLoadingObserver$lambda$0(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final initPopLoadingObserver$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public commonStep3ObserveData()V
    .registers 4

    .line 69
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getFinishActivity()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/basefragment/BaseMVVMPadFragment$commonStep3ObserveData$1;

    invoke-direct {v1, p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$commonStep3ObserveData$1;-><init>(Lcom/ljwx/basefragment/BaseMVVMPadFragment;)V

    new-instance v2, Lcom/ljwx/basefragment/BaseMVVMPadFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, v1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$$ExternalSyntheticLambda0;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 74
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->scope(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    return-void
.end method

.method public createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 46
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.actualTypeArguments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<ViewModel of com.ljwx.basefragment.BaseMVVMPadFragment>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Class;

    .line 47
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->viewModelProviderFromFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 48
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModelScope()Lcom/ljwx/baseapp/vm/ViewModelScope;

    move-result-object v1

    .line 49
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->viewModelProviderFromFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 48
    invoke-virtual {v1, v2, v0}, Lcom/ljwx/baseapp/vm/ViewModelScope;->getFragmentScopeViewModel(Landroidx/fragment/app/Fragment;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/BaseViewModel;

    goto :goto_61

    .line 52
    :cond_3c
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->viewModelProviderFromActivity()Z

    move-result v1

    if-eqz v1, :cond_56

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModelScope()Lcom/ljwx/baseapp/vm/ViewModelScope;

    move-result-object v1

    .line 53
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "requireActivity()"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1, v2, v0}, Lcom/ljwx/baseapp/vm/ViewModelScope;->getActivityScopeViewModel(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/BaseViewModel;

    goto :goto_61

    .line 55
    :cond_56
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/BaseViewModel;

    :goto_61
    return-object v0
.end method

.method protected final getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 26
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method protected final getMViewModelScope()Lcom/ljwx/baseapp/vm/ViewModelScope;
    .registers 2

    .line 19
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->mViewModelScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/ViewModelScope;

    return-object v0
.end method

.method public initPopLoadingObserver()V
    .registers 4

    .line 36
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getPopLoadingShow()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/basefragment/BaseMVVMPadFragment$initPopLoadingObserver$1;

    invoke-direct {v1, p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$initPopLoadingObserver$1;-><init>(Lcom/ljwx/basefragment/BaseMVVMPadFragment;)V

    new-instance v2, Lcom/ljwx/basefragment/BaseMVVMPadFragment$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 39
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ljwx/baseapp/vm/BaseViewModel;->getPopLoadingDismiss()Landroidx/lifecycle/LiveData;

    move-result-object v0

    new-instance v1, Lcom/ljwx/basefragment/BaseMVVMPadFragment$initPopLoadingObserver$2;

    invoke-direct {v1, p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$initPopLoadingObserver$2;-><init>(Lcom/ljwx/basefragment/BaseMVVMPadFragment;)V

    new-instance v2, Lcom/ljwx/basefragment/BaseMVVMPadFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 29
    invoke-super {p0, p1}, Lcom/ljwx/basefragment/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->setMViewModel(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    .line 31
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 32
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->initPopLoadingObserver()V

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

    .line 26
    iput-object p1, p0, Lcom/ljwx/basefragment/BaseMVVMPadFragment;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    return-void
.end method

.method public viewModelProviderFromActivity()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public viewModelProviderFromFragment()Landroidx/fragment/app/Fragment;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method
