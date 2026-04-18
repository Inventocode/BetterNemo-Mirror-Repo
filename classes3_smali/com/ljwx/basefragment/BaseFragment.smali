.class public Lcom/ljwx/basefragment/BaseFragment;
.super Lcom/ljwx/basefragment/BaseToolsFragment;
.source "BaseFragment.kt"

# interfaces
.implements Lcom/ljwx/baseapp/event/ISendLocalEvent;
.implements Lcom/ljwx/baseapp/page/IPageDialogTips;
.implements Lcom/ljwx/baseapp/page/IPageProcessStep;
.implements Lcom/ljwx/baseapp/page/IPageStartPage;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBaseFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BaseFragment.kt\ncom/ljwx/basefragment/BaseFragment\n+ 2 FragmentExtension.kt\ncom/ljwx/basefragment/FragmentExtensionKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,385:1\n24#2,12:386\n1855#3,2:398\n*S KotlinDebug\n*F\n+ 1 BaseFragment.kt\ncom/ljwx/basefragment/BaseFragment\n*L\n276#1:386,12\n379#1:398,2\n*E\n"
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final argumentIsConditionType$delegate:Lkotlin/Lazy;

.field private final argumentsDataId$delegate:Lkotlin/Lazy;

.field private final argumentsFromType$delegate:Lkotlin/Lazy;

.field private broadcastReceivers:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/content/BroadcastReceiver;",
            ">;"
        }
    .end annotation
.end field

.field private hidePopBottom:I

.field private isLazyInitialized:Z

.field private keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

.field private final layoutResID:I

.field private mScreenHeight:I


# direct methods
.method public static synthetic $r8$lambda$VJNz4smIP0pVtqIDWOx3doPtoFo(Lcom/ljwx/basefragment/BaseFragment;)V
    .registers 1

    invoke-static {p0}, Lcom/ljwx/basefragment/BaseFragment;->onViewCreated$lambda$0(Lcom/ljwx/basefragment/BaseFragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$a-MXZJwuzjwuPFsllSuwSnIPlCk(Lcom/ljwx/basefragment/BaseFragment;II)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/ljwx/basefragment/BaseFragment;->setKeyboardHeightListener$lambda$6(Lcom/ljwx/basefragment/BaseFragment;II)V

    return-void
.end method

.method public constructor <init>()V
    .registers 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lcom/ljwx/basefragment/BaseFragment;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    .line 36
    invoke-direct {p0}, Lcom/ljwx/basefragment/BaseToolsFragment;-><init>()V

    .line 35
    iput p1, p0, Lcom/ljwx/basefragment/BaseFragment;->layoutResID:I

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "-[fragment"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseFragment;->TAG:Ljava/lang/String;

    const/4 p1, -0x1

    .line 49
    iput p1, p0, Lcom/ljwx/basefragment/BaseFragment;->mScreenHeight:I

    .line 60
    new-instance p1, Lcom/ljwx/basefragment/BaseFragment$argumentsFromType$2;

    invoke-direct {p1, p0}, Lcom/ljwx/basefragment/BaseFragment$argumentsFromType$2;-><init>(Lcom/ljwx/basefragment/BaseFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseFragment;->argumentsFromType$delegate:Lkotlin/Lazy;

    .line 64
    sget-object p1, Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;->INSTANCE:Lcom/ljwx/basefragment/BaseFragment$argumentIsConditionType$2;

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseFragment;->argumentIsConditionType$delegate:Lkotlin/Lazy;

    .line 66
    new-instance p1, Lcom/ljwx/basefragment/BaseFragment$argumentsDataId$2;

    invoke-direct {p1, p0}, Lcom/ljwx/basefragment/BaseFragment$argumentsDataId$2;-><init>(Lcom/ljwx/basefragment/BaseFragment;)V

    invoke-static {p1}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/ljwx/basefragment/BaseFragment;->argumentsDataId$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .registers 4

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_6

    .line 35
    sget p1, Lcom/ljwx/baseapp/R$layout;->baseapp_state_layout_empty:I

    :cond_6
    invoke-direct {p0, p1}, Lcom/ljwx/basefragment/BaseFragment;-><init>(I)V

    return-void
.end method

.method private static final onViewCreated$lambda$0(Lcom/ljwx/basefragment/BaseFragment;)V
    .registers 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object p0, p0, Lcom/ljwx/basefragment/BaseFragment;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz p0, :cond_c

    invoke-virtual {p0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->start()V

    :cond_c
    return-void
.end method

.method private static final setKeyboardHeightListener$lambda$6(Lcom/ljwx/basefragment/BaseFragment;II)V
    .registers 8

    const-string p2, "this$0"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 301
    sget-object p2, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "keyboardHeightListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    iget v0, p0, Lcom/ljwx/basefragment/BaseFragment;->mScreenHeight:I

    const/4 v1, 0x0

    if-gtz v0, :cond_28

    .line 304
    iput p1, p0, Lcom/ljwx/basefragment/BaseFragment;->hidePopBottom:I

    const/4 v3, 0x0

    goto :goto_3e

    .line 306
    :cond_28
    iget v2, p0, Lcom/ljwx/basefragment/BaseFragment;->hidePopBottom:I

    if-le p1, v2, :cond_35

    sub-int v3, p1, v2

    div-int/lit8 v4, v0, 0x4

    if-le v3, v4, :cond_35

    sub-int v3, p1, v2

    goto :goto_36

    :cond_35
    const/4 v3, 0x0

    :goto_36
    mul-int/lit8 v4, v0, 0x3

    .line 309
    div-int/lit8 v4, v4, 0x5

    if-le v3, v4, :cond_3e

    sub-int v3, p1, v2

    :cond_3e
    :goto_3e
    if-gtz v0, :cond_4f

    .line 314
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->keyboardHeightRootView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4b

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    goto :goto_4d

    :cond_4b
    const/16 v0, 0x7d0

    :goto_4d
    iput v0, p0, Lcom/ljwx/basefragment/BaseFragment;->mScreenHeight:I

    .line 316
    :cond_4f
    iget v0, p0, Lcom/ljwx/basefragment/BaseFragment;->hidePopBottom:I

    invoke-virtual {p0, p1, v0}, Lcom/ljwx/basefragment/BaseFragment;->isKeyboardShow(II)Z

    move-result p1

    if-eqz p1, :cond_65

    .line 317
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object p1

    const-string v0, "keyboardHeightListener,判定键盘弹出"

    invoke-virtual {p2, p1, v0}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    .line 318
    invoke-virtual {p0, p1, v3}, Lcom/ljwx/basefragment/BaseFragment;->onKeyboardHeightChange(ZI)V

    goto :goto_68

    .line 320
    :cond_65
    invoke-virtual {p0, v1, v1}, Lcom/ljwx/basefragment/BaseFragment;->onKeyboardHeightChange(ZI)V

    :goto_68
    return-void
.end method


# virtual methods
.method public commonStep1InitData()V
    .registers 1

    return-void
.end method

.method public commonStep2InitView()V
    .registers 1

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 1

    return-void
.end method

.method public commonStep4SetViewListener()V
    .registers 1

    return-void
.end method

.method public commonStep5RequestData(Z)V
    .registers 2

    return-void
.end method

.method public createKeyboardHeightProvider()V
    .registers 3

    .line 294
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-nez v0, :cond_d

    new-instance v0, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;-><init>(Landroid/app/Activity;)V

    :cond_d
    iput-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    return-void
.end method

.method public enableCommonSteps()V
    .registers 4

    .line 248
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep1InitData()V

    .line 249
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep2InitView()V

    .line 250
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep3ObserveData()V

    .line 251
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->commonStep4SetViewListener()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 252
    invoke-static {p0, v0, v1, v2}, Lcom/ljwx/baseapp/page/IPageProcessStep$DefaultImpls;->commonStep5RequestData$default(Lcom/ljwx/baseapp/page/IPageProcessStep;ZILjava/lang/Object;)V

    return-void
.end method

.method public enableKeyboardHeightListener()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getLayoutRes()I
    .registers 2

    .line 85
    iget v0, p0, Lcom/ljwx/basefragment/BaseFragment;->layoutResID:I

    return v0
.end method

.method public getTAG()Ljava/lang/String;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public isKeyboardShow(II)Z
    .registers 3

    sub-int/2addr p1, p2

    .line 326
    iget p2, p0, Lcom/ljwx/basefragment/BaseFragment;->mScreenHeight:I

    div-int/lit8 p2, p2, 0x4

    if-le p1, p2, :cond_9

    const/4 p1, 0x1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    return p1
.end method

.method public keyboardHeightRootView()Landroid/view/View;
    .registers 2

    .line 297
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public lazyInit()V
    .registers 4

    .line 243
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "触发懒加载"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 4

    .line 75
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 76
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "生命周期onActivityCreated"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 5

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 70
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onAttach"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    check-cast p1, Landroidx/appcompat/app/AppCompatActivity;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 4

    .line 80
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 81
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "生命周期onCreate"

    invoke-virtual {p1, v0, v1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const-string p3, "inflater"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 93
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object p3

    const-string v0, "生命周期onCreateView"

    invoke-virtual {p1, p3, v0}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getLayoutRes()I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .registers 4

    .line 377
    invoke-super {p0}, Lcom/ljwx/basefragment/BaseToolsFragment;->onDestroy()V

    .line 378
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "执行onDestroy"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->broadcastReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_32

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_32

    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_32

    .line 398
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_22
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 380
    invoke-virtual {p0, v1}, Lcom/ljwx/basefragment/BaseFragment;->unregisterLocalEvent(Ljava/lang/String;)V

    goto :goto_22

    .line 382
    :cond_32
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz v0, :cond_39

    invoke-virtual {v0}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->close()V

    :cond_39
    return-void
.end method

.method public onDestroyView()V
    .registers 4

    .line 365
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 366
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "执行onDestroyView"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 367
    iput-boolean v0, p0, Lcom/ljwx/basefragment/BaseFragment;->isLazyInitialized:Z

    return-void
.end method

.method public onDetach()V
    .registers 4

    .line 371
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDetach()V

    .line 372
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "执行onDetach"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onHiddenChanged(Z)V
    .registers 6

    .line 355
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 356
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "生命周期onHiddenChanged,hidden:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onKeyboardHeightChange(ZI)V
    .registers 3

    return-void
.end method

.method public onLowMemory()V
    .registers 4

    .line 360
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onLowMemory()V

    .line 361
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onLowMemory"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onPause()V
    .registers 4

    .line 339
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 340
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onPause"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz v0, :cond_16

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->setKeyboardHeightListener(Lcom/ljwx/baseapp/keyboard/KeyboardHeightCallback;)V

    :cond_16
    return-void
.end method

.method public onResume()V
    .registers 4

    .line 107
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 108
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onResume"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    iget-boolean v0, p0, Lcom/ljwx/basefragment/BaseFragment;->isLazyInitialized:Z

    if-nez v0, :cond_1e

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isHidden()Z

    move-result v0

    if-nez v0, :cond_1e

    .line 110
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->lazyInit()V

    const/4 v0, 0x1

    .line 111
    iput-boolean v0, p0, Lcom/ljwx/basefragment/BaseFragment;->isLazyInitialized:Z

    .line 113
    :cond_1e
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableKeyboardHeightListener()Z

    move-result v0

    if-eqz v0, :cond_27

    .line 114
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->setKeyboardHeightListener()V

    :cond_27
    return-void
.end method

.method public onStart()V
    .registers 4

    .line 345
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStart()V

    .line 346
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onStart"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .registers 4

    .line 350
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onStop()V

    .line 351
    sget-object v0, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v1

    const-string v2, "生命周期onStop"

    invoke-virtual {v0, v1, v2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 98
    invoke-super {p0, p1, p2}, Lcom/ljwx/basefragment/BaseToolsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 99
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object p2

    const-string v0, "生命周期onViewCreated"

    invoke-virtual {p1, p2, v0}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->enableKeyboardHeightListener()Z

    move-result p1

    if-eqz p1, :cond_2a

    .line 101
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->createKeyboardHeightProvider()V

    .line 102
    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->keyboardHeightRootView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_2a

    new-instance p2, Lcom/ljwx/basefragment/BaseFragment$$ExternalSyntheticLambda1;

    invoke-direct {p2, p0}, Lcom/ljwx/basefragment/BaseFragment$$ExternalSyntheticLambda1;-><init>(Lcom/ljwx/basefragment/BaseFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    :cond_2a
    return-void
.end method

.method public registerLocalEvent(Ljava/lang/String;Lkotlin/jvm/functions/Function4;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function4<",
            "-",
            "Ljava/lang/String;",
            "-",
            "Ljava/lang/Long;",
            "-",
            "Ljava/lang/String;",
            "-",
            "Landroid/content/Intent;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "observer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-nez p1, :cond_8

    return-void

    .line 203
    :cond_8
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 204
    new-instance v1, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;

    invoke-direct {v1, p0, v0, p2, p1}, Lcom/ljwx/basefragment/BaseFragment$registerLocalEvent$receiver$1;-><init>(Lcom/ljwx/basefragment/BaseFragment;Landroid/content/IntentFilter;Lkotlin/jvm/functions/Function4;Ljava/lang/String;)V

    .line 218
    iget-object p2, p0, Lcom/ljwx/basefragment/BaseFragment;->broadcastReceivers:Ljava/util/HashMap;

    if-nez p2, :cond_1b

    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    :cond_1b
    iput-object p2, p0, Lcom/ljwx/basefragment/BaseFragment;->broadcastReceivers:Ljava/util/HashMap;

    .line 219
    invoke-virtual {p2, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/BroadcastReceiver;

    .line 220
    sget-object p2, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "注册事件广播:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v2, p1}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    if-eqz p1, :cond_4a

    .line 222
    invoke-static {p1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object p1

    invoke-virtual {p1, v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    :cond_4a
    return-void
.end method

.method public sendLocalEvent(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;)V
    .registers 4

    .line 227
    sget-object p3, Lcom/ljwx/baseapp/util/LocalEventUtils;->INSTANCE:Lcom/ljwx/baseapp/util/LocalEventUtils;

    invoke-virtual {p3, p1, p2}, Lcom/ljwx/baseapp/util/LocalEventUtils;->sendAction(Ljava/lang/String;Ljava/lang/Long;)V

    return-void
.end method

.method public setKeyboardHeightListener()V
    .registers 3

    .line 300
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->keyboardHighProvider:Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;

    if-eqz v0, :cond_c

    new-instance v1, Lcom/ljwx/basefragment/BaseFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/ljwx/basefragment/BaseFragment$$ExternalSyntheticLambda0;-><init>(Lcom/ljwx/basefragment/BaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/baseapp/keyboard/KeyboardHeightProvider;->setKeyboardHeightListener(Lcom/ljwx/baseapp/keyboard/KeyboardHeightCallback;)V

    :cond_c
    return-void
.end method

.method public showDialogTips(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/String;ZLandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)Landroid/app/Dialog;
    .registers 11

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 p1, 0x0

    return-object p1

    .line 171
    :cond_8
    new-instance v0, Lcom/ljwx/basedialog/common/BaseDialogBuilder;

    invoke-direct {v0}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;-><init>()V

    .line 173
    invoke-virtual {v0, p5}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showCloseIcon(Ljava/lang/Boolean;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    if-eqz p1, :cond_15

    .line 175
    invoke-virtual {v0, p1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setTitle(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    .line 177
    :cond_15
    invoke-virtual {v0, p2}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setContent(Ljava/lang/CharSequence;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    if-nez p3, :cond_1c

    if-eqz p9, :cond_1f

    .line 180
    :cond_1c
    invoke-virtual {v0, p3, p9}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    :cond_1f
    if-nez p4, :cond_23

    if-eqz p8, :cond_26

    .line 184
    :cond_23
    invoke-virtual {v0, p4, p8}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)Lcom/ljwx/baseapp/dialog/IBaseDialogBuilder;

    .line 187
    :cond_26
    invoke-virtual {v0, p7}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->buttonsReversal(Z)V

    .line 188
    sget-object p1, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object p3

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p6, :cond_3b

    if-nez p2, :cond_3c

    const-string p2, "tag为空"

    goto :goto_3c

    :cond_3b
    move-object p2, p6

    :cond_3c
    :goto_3c
    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",dialog新创建"

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "requireContext()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Lcom/ljwx/basedialog/common/BaseDialogBuilder;->showDialog(Landroid/content/Context;)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public startActivity(Ljava/lang/Class;Ljava/lang/Integer;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    const-string p2, "clazz"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    if-eqz p2, :cond_17

    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_17
    return-void
.end method

.method public unregisterLocalEvent(Ljava/lang/String;)V
    .registers 8

    if-eqz p1, :cond_3f

    .line 232
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->broadcastReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_35

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_35

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_35

    .line 234
    sget-object v2, Lcom/ljwx/baseapp/util/BaseModuleLog;->INSTANCE:Lcom/ljwx/baseapp/util/BaseModuleLog;

    invoke-virtual {p0}, Lcom/ljwx/basefragment/BaseFragment;->getTAG()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "注销事件广播:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/ljwx/baseapp/util/BaseModuleLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 235
    invoke-static {v1}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroidx/localbroadcastmanager/content/LocalBroadcastManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/localbroadcastmanager/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 238
    :cond_35
    iget-object v0, p0, Lcom/ljwx/basefragment/BaseFragment;->broadcastReceivers:Ljava/util/HashMap;

    if-eqz v0, :cond_3f

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/BroadcastReceiver;

    :cond_3f
    return-void
.end method
