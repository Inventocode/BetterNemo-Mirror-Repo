.class public abstract Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;
.super Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;
.source "BaseMVVMDialogFragment.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Binding:",
        "Landroidx/databinding/ViewDataBinding;",
        "ViewModel:",
        "Lcom/ljwx/baseapp/vm/BaseViewModel<",
        "*>;>",
        "Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment<",
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

.field private final mViewModelScope$delegate:Lkotlin/Lazy;


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 11
    invoke-direct {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseBindingDialogFragment;-><init>()V

    .line 15
    sget-object v0, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment$mViewModelScope$2;->INSTANCE:Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment$mViewModelScope$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->mViewModelScope$delegate:Lkotlin/Lazy;

    return-void
.end method

.method private final getMViewModelScope()Lcom/ljwx/baseapp/vm/ViewModelScope;
    .registers 2

    .line 15
    iget-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->mViewModelScope$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/ViewModelScope;

    return-object v0
.end method


# virtual methods
.method public createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.reflect.ParameterizedType"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 27
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const-string v1, "type.actualTypeArguments"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lkotlin/collections/ArraysKt;->getOrNull([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type java.lang.Class<ViewModel of com.ljwx.basedialog.dialogfragment.BaseMVVMDialogFragment>"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ljava/lang/Class;

    .line 28
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->useActivityScopeVM()Z

    move-result v1

    if-eqz v1, :cond_39

    invoke-direct {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->getMViewModelScope()Lcom/ljwx/baseapp/vm/ViewModelScope;

    move-result-object v1

    .line 29
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseDialogFragment;->getMActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    .line 28
    invoke-virtual {v1, v2, v0}, Lcom/ljwx/baseapp/vm/ViewModelScope;->getActivityScopeViewModel(Landroidx/fragment/app/FragmentActivity;Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/BaseViewModel;

    goto :goto_44

    .line 31
    :cond_39
    new-instance v1, Landroidx/lifecycle/ViewModelProvider;

    invoke-direct {v1, p0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    invoke-virtual {v1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/ljwx/baseapp/vm/BaseViewModel;

    :goto_44
    return-object v0
.end method

.method protected final getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TViewModel;"
        }
    .end annotation

    .line 13
    iget-object v0, p0, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    if-eqz v0, :cond_5

    return-object v0

    :cond_5
    const-string v0, "mViewModel"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 3

    .line 20
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->createViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->setMViewModel(Lcom/ljwx/baseapp/vm/BaseViewModel;)V

    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

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

    .line 13
    iput-object p1, p0, Lcom/ljwx/basedialog/dialogfragment/BaseMVVMDialogFragment;->mViewModel:Lcom/ljwx/baseapp/vm/BaseViewModel;

    return-void
.end method

.method public useActivityScopeVM()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
