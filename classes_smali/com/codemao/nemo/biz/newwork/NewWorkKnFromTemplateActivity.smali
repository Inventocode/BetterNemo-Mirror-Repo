.class public final Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;
.super Lcom/ljwx/baseactivity/BaseMVVMActivity;
.source "NewWorkKnFromTemplateActivity.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/ljwx/baseactivity/BaseMVVMActivity<",
        "Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;",
        "Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;",
        ">;"
    }
.end annotation


# instance fields
.field private final DEFAULT_SPAN_NUM:I

.field private final PAD_SPAN_NUM:I

.field private final adapter$delegate:Lkotlin/Lazy;

.field private advancedIndex:I

.field private final isPad:Z

.field private final itemType$delegate:Lkotlin/Lazy;

.field private mSpanNum:I

.field private final recyclerView$delegate:Lkotlin/Lazy;

.field private final titleAnimator$delegate:Lkotlin/Lazy;

.field private final titleIconBase$delegate:Lkotlin/Lazy;

.field private final titleIconUp$delegate:Lkotlin/Lazy;

.field private final titleType$delegate:Lkotlin/Lazy;


# direct methods
.method public static synthetic $r8$lambda$31fjxN4nJ2ZhzHT0aMWBqP1LvAM(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ag-TQUuZb-PC32ee9dI-mLTs8pA(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$jEn4UBBj5c9h98wByp6dUNtngZo(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->commonStep3ObserveData$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    .line 29
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const v0, 0x7f0d0055

    .line 30
    invoke-direct {p0, v0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;-><init>(I)V

    .line 39
    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconBase$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconBase$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleIconBase$delegate:Lkotlin/Lazy;

    .line 40
    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconUp$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleIconUp$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleIconUp$delegate:Lkotlin/Lazy;

    .line 41
    sget-object v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleAnimator$2;->INSTANCE:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleAnimator$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleAnimator$delegate:Lkotlin/Lazy;

    .line 43
    sget-object v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;->INSTANCE:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$itemType$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->itemType$delegate:Lkotlin/Lazy;

    .line 49
    sget-object v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleType$2;->INSTANCE:Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$titleType$2;

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleType$delegate:Lkotlin/Lazy;

    .line 56
    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$adapter$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->adapter$delegate:Lkotlin/Lazy;

    .line 60
    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerView$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerView$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerView$delegate:Lkotlin/Lazy;

    .line 62
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result v0

    iput-boolean v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->isPad:Z

    const/4 v0, 0x4

    .line 63
    iput v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->PAD_SPAN_NUM:I

    const/4 v0, 0x2

    .line 64
    iput v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->DEFAULT_SPAN_NUM:I

    .line 65
    iput v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->mSpanNum:I

    return-void
.end method

.method public static final synthetic access$getAdapter(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getAdapter()Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getAdvancedIndex$p(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->advancedIndex:I

    return p0
.end method

.method public static final synthetic access$getItemType(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getItemType()Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getMBinding(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;
    .registers 1

    .line 29
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->getMBinding()Landroidx/databinding/ViewDataBinding;

    move-result-object p0

    check-cast p0, Lcom/codemao/nemo/databinding/ActivityNewWorkTemplateListBinding;

    return-object p0
.end method

.method public static final synthetic access$getMSpanNum$p(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)I
    .registers 1

    .line 29
    iget p0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->mSpanNum:I

    return p0
.end method

.method public static final synthetic access$getStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Z
    .registers 1

    .line 29
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->getStateLoadingDataSucceeded()Z

    move-result p0

    return p0
.end method

.method public static final synthetic access$getTitleType(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
    .registers 1

    .line 29
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleType()Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$recyclerCompatPad$changeTitle(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Lkotlin/jvm/internal/Ref$ObjectRef;ZII)V
    .registers 5

    .line 29
    invoke-static {p0, p1, p2, p3, p4}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad$changeTitle(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Lkotlin/jvm/internal/Ref$ObjectRef;ZII)V

    return-void
.end method

.method public static final synthetic access$setAdvancedIndex$p(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;I)V
    .registers 2

    .line 29
    iput p1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->advancedIndex:I

    return-void
.end method

.method public static final synthetic access$setStateLoadingDataSucceeded(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Z)V
    .registers 2

    .line 29
    invoke-virtual {p0, p1}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->setStateLoadingDataSucceeded(Z)V

    return-void
.end method

.method private static final commonStep2InitView$lambda$0(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Landroid/view/View;)V
    .registers 5

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->showStateLoading()V

    const-wide/16 v0, 0x0

    const/4 p1, 0x1

    const/4 v2, 0x0

    .line 78
    invoke-static {p0, v0, v1, p1, v2}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->onLoadData$default(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;JILjava/lang/Object;)V

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$1(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 117
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private static final commonStep3ObserveData$lambda$2(Lkotlin/jvm/functions/Function1;Ljava/lang/Object;)V
    .registers 3

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 121
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private final getAdapter()Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;
    .registers 2

    .line 56
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->adapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    return-object v0
.end method

.method private final getItemType()Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding<",
            "Lcom/codemao/nemo/bean/KnTemplateListItem;",
            ">;"
        }
    .end annotation

    .line 43
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->itemType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    return-object v0
.end method

.method private final getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;
    .registers 2

    .line 60
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerView$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method private final getTitleAnimator()Landroid/animation/AnimatorSet;
    .registers 2

    .line 41
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleAnimator$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method private final getTitleIconBase()Landroid/widget/ImageView;
    .registers 2

    .line 39
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleIconBase$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTitleIconUp()Landroid/widget/ImageView;
    .registers 2

    .line 40
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleIconUp$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    return-object v0
.end method

.method private final getTitleType()Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 49
    iget-object v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->titleType$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;

    return-object v0
.end method

.method public static synthetic onLoadData$default(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;JILjava/lang/Object;)V
    .registers 5

    and-int/lit8 p3, p3, 0x1

    if-eqz p3, :cond_6

    const-wide/16 p1, 0x0

    .line 108
    :cond_6
    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->onLoadData(J)V

    return-void
.end method

.method private final recyclerCompatPad(Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;)V
    .registers 5

    .line 156
    iget-boolean v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->isPad:Z

    if-eqz v0, :cond_8

    .line 157
    iget v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->PAD_SPAN_NUM:I

    iput v0, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->mSpanNum:I

    .line 159
    :cond_8
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    iget v1, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->mSpanNum:I

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 160
    new-instance v1, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;

    invoke-direct {v1, p1, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$1;-><init>(Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/GridLayoutManager;->setSpanSizeLookup(Landroidx/recyclerview/widget/GridLayoutManager$SpanSizeLookup;)V

    .line 170
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 171
    new-instance p1, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconBase()Landroid/widget/ImageView;

    move-result-object v1

    iput-object v1, p1, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 205
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v1

    new-instance v2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;

    invoke-direct {v2, v0, p0, p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$recyclerCompatPad$2;-><init>(Lcom/codemao/nemo/view/WrapGridLayoutmanager;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    return-void
.end method

.method private static final recyclerCompatPad$changeAnimation(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;ZLandroid/view/View;Landroid/view/View;)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;",
            "Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;",
            "Z",
            "Landroid/view/View;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 173
    iget-object v0, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    :cond_9
    const-string/jumbo v0, "滑动"

    const-string/jumbo v1, "执行动画"

    .line 176
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput-object p3, p0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/high16 p0, -0x3d380000  # -100.0f

    const/high16 v0, 0x42c80000  # 100.0f

    if-eqz p2, :cond_1d

    const/high16 v1, -0x3d380000  # -100.0f

    goto :goto_1f

    :cond_1d
    const/high16 v1, 0x42c80000  # 100.0f

    :goto_1f
    if-eqz p2, :cond_23

    const/high16 p0, 0x42c80000  # 100.0f

    :cond_23
    const/4 p2, 0x2

    new-array v0, p2, [F

    const/4 v2, 0x0

    aput v1, v0, v2

    const/4 v1, 0x1

    const/4 v3, 0x0

    aput v3, v0, v1

    const-string v4, "translationY"

    .line 180
    invoke-static {p3, v4, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    new-array v5, p2, [F

    aput v3, v5, v2

    aput p0, v5, v1

    .line 181
    invoke-static {p4, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p0

    new-array v3, p2, [F

    .line 182
    fill-array-data v3, :array_7c

    const-string v4, "alpha"

    invoke-static {p3, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p3

    new-array v3, p2, [F

    .line 183
    fill-array-data v3, :array_84

    invoke-static {p4, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p4

    .line 184
    invoke-direct {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleAnimator()Landroid/animation/AnimatorSet;

    move-result-object v3

    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->end()V

    .line 185
    invoke-direct {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleAnimator()Landroid/animation/AnimatorSet;

    move-result-object v3

    const-wide/16 v4, 0xc8

    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 186
    invoke-direct {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleAnimator()Landroid/animation/AnimatorSet;

    move-result-object v3

    const/4 v4, 0x4

    new-array v4, v4, [Landroid/animation/Animator;

    aput-object v0, v4, v2

    aput-object p3, v4, v1

    aput-object p0, v4, p2

    const/4 p0, 0x3

    aput-object p4, v4, p0

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 187
    invoke-direct {p1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleAnimator()Landroid/animation/AnimatorSet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/AnimatorSet;->start()V

    return-void

    :array_7c
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_84
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private static final recyclerCompatPad$changeTitle(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;Lkotlin/jvm/internal/Ref$ObjectRef;ZII)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroid/view/View;",
            ">;ZII)V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    const-string v1, "titleIconUp"

    const-string v2, "titleIconBase"

    if-eqz p2, :cond_33

    .line 192
    iget p2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->advancedIndex:I

    iget v3, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->mSpanNum:I

    sub-int/2addr p2, v3

    if-le p4, p2, :cond_21

    .line 193
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconUp()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconBase()Landroid/widget/ImageView;

    move-result-object p4

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p3, p2, p4}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad$changeAnimation(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;ZLandroid/view/View;Landroid/view/View;)V

    goto :goto_5a

    .line 195
    :cond_21
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconBase()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconUp()Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, v0, p2, p3}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad$changeAnimation(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;ZLandroid/view/View;Landroid/view/View;)V

    goto :goto_5a

    .line 198
    :cond_33
    iget p2, p0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->advancedIndex:I

    if-le p4, p2, :cond_49

    .line 199
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconUp()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconBase()Landroid/widget/ImageView;

    move-result-object p4

    invoke-static {p4, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, p3, p2, p4}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad$changeAnimation(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;ZLandroid/view/View;Landroid/view/View;)V

    goto :goto_5a

    .line 201
    :cond_49
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconBase()Landroid/widget/ImageView;

    move-result-object p2

    invoke-static {p2, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleIconUp()Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, p0, v0, p2, p3}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad$changeAnimation(Lkotlin/jvm/internal/Ref$ObjectRef;Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;ZLandroid/view/View;Landroid/view/View;)V

    :goto_5a
    return-void
.end method


# virtual methods
.method public commonStep2InitView()V
    .registers 4

    .line 75
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep2InitView()V

    .line 76
    new-instance v0, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    const/4 v1, 0x3

    const v2, 0x7f0a08bd

    invoke-virtual {p0, v1, v2, v0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->addStateLayoutClick(IILandroid/view/View$OnClickListener;)V

    .line 80
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getAdapter()Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->recyclerCompatPad(Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;)V

    .line 81
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getRecyclerView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getAdapter()Lcom/ljwx/recyclerview/adapter/MultipleTypeAdapter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 87
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getItemType()Lcom/ljwx/recyclerview/itemtype/ItemTypeBinding;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep2InitView$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep2InitView$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    invoke-virtual {v0, v1}, Lcom/ljwx/recyclerview/itemtype/ItemTypeLayout;->setOnItemClick(Lkotlin/jvm/functions/Function2;)V

    return-void
.end method

.method public commonStep3ObserveData()V
    .registers 4

    .line 116
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->commonStep3ObserveData()V

    .line 117
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getAdvanceIndex()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$1;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    new-instance v2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$$ExternalSyntheticLambda2;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 121
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {v0}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->getTemplateListMergeData()Landroidx/lifecycle/MutableLiveData;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$commonStep3ObserveData$2;-><init>(Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;)V

    new-instance v2, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function1;)V

    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    return-void
.end method

.method public commonStep5RequestData(Z)V
    .registers 4

    .line 103
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseActivity;->commonStep5RequestData(Z)V

    .line 104
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseStateRefreshActivity;->showStateLoading()V

    const-wide/16 v0, 0x0

    .line 105
    invoke-virtual {p0, v0, v1}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->onLoadData(J)V

    return-void
.end method

.method public enableRefresh()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 70
    invoke-super {p0, p1}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->onCreate(Landroid/os/Bundle;)V

    .line 71
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseActivity;->enableCommonSteps()V

    return-void
.end method

.method protected onDestroy()V
    .registers 2

    .line 258
    invoke-super {p0}, Lcom/ljwx/baseactivity/BaseBindingActivity;->onDestroy()V

    .line 259
    invoke-direct {p0}, Lcom/codemao/nemo/biz/newwork/NewWorkKnFromTemplateActivity;->getTitleAnimator()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    return-void
.end method

.method public final onLoadData(J)V
    .registers 3

    .line 112
    invoke-virtual {p0}, Lcom/ljwx/baseactivity/BaseMVVMActivity;->getMViewModel()Lcom/ljwx/baseapp/vm/BaseViewModel;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/newwork/data/KnTemplateListVM;->mergeRequest()V

    return-void
.end method
