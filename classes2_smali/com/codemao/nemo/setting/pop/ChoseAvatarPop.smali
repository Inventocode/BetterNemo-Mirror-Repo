.class public final Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;
.super Lcom/nemo/commonui/xpopup/core/BottomPopupView;
.source "ChoseAvatarPop.kt"

# interfaces
.implements Lcom/codemao/nemo/setting/listener/IAvatarPop;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChoseAvatarPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChoseAvatarPop.kt\ncom/codemao/nemo/setting/pop/ChoseAvatarPop\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,148:1\n1851#2,2:149\n*S KotlinDebug\n*F\n+ 1 ChoseAvatarPop.kt\ncom/codemao/nemo/setting/pop/ChoseAvatarPop\n*L\n128#1:149,2\n*E\n"
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mAdapter$delegate:Lkotlin/Lazy;

.field private final mAvatarDatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mHeight:I

.field private final mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;


# direct methods
.method public static synthetic $r8$lambda$5axQBV7QpVJfvHulU979ZswN0k4(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->onCreate$lambda$1(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$HYU73wOJaQMXKZvKy9vgAYLzOMU(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->onCreate$lambda$0(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILjava/util/ArrayList;Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;",
            "Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mAvatarDatas"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findViewCache:Ljava/util/Map;

    .line 29
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;-><init>(Landroid/content/Context;)V

    .line 28
    iput p2, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mHeight:I

    iput-object p3, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mAvatarDatas:Ljava/util/ArrayList;

    .line 29
    iput-object p4, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    .line 35
    new-instance p2, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;

    invoke-direct {p2, p1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$mAdapter$2;-><init>(Landroid/content/Context;Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMAvatarDatas$p(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)Ljava/util/ArrayList;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mAvatarDatas:Ljava/util/ArrayList;

    return-object p0
.end method

.method private final getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/giu/xzz/adapter/rv/RVBaseAdapter<",
            "Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;",
            ">;"
        }
    .end annotation

    .line 35
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object v0
.end method

.method private final hasSelected()Z
    .registers 3

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mAvatarDatas:Ljava/util/ArrayList;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    .line 129
    iget-boolean v1, v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_18
    const/4 v0, 0x0

    return v0
.end method

.method private final initRv()V
    .registers 6

    .line 71
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 72
    sget v1, Lcom/codemao/nemo/R$id;->rv_avatar_choose:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$initRv$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$initRv$1;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 95
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-direct {v2, v3, v4}, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;)V

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 97
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 99
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 100
    instance-of v1, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v1, :cond_56

    .line 101
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_56
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 51
    :cond_c
    sget p1, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_1b

    return-void

    .line 54
    :cond_1b
    iget-object p0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-interface {p0}, Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;->onCommit()V

    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 57
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 60
    :cond_c
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findViewCache:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    if-nez v1, :cond_1d

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1c

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1d

    :cond_1c
    const/4 v1, 0x0

    :cond_1d
    :goto_1d
    return-object v1
.end method

.method public changeChose(IZ)V
    .registers 4

    if-ltz p1, :cond_46

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mAvatarDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_b

    goto :goto_46

    .line 112
    :cond_b
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    if-eqz p2, :cond_2a

    .line 114
    sget p1, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    .line 118
    :cond_2a
    sget p1, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->hasSelected()Z

    move-result v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 119
    invoke-virtual {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->hasSelected()Z

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_46
    :goto_46
    return-void
.end method

.method protected doAfterShow()V
    .registers 1

    .line 65
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BottomPopupView;->doAfterShow()V

    .line 67
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->applyFull()V

    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02d2

    return v0
.end method

.method protected onCreate()V
    .registers 4

    .line 40
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 42
    sget v0, Lcom/codemao/nemo/R$id;->cl_root:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 43
    iget v1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mHeight:I

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 45
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->initRv()V

    .line 46
    sget v0, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 47
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    sget v0, Lcom/codemao/nemo/R$id;->iv_downward:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 137
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-interface {v0}, Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;->onDismiss()V

    .line 138
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method protected onDragListener(IFZ)V
    .registers 5

    .line 142
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-interface {v0, p1, p2, p3}, Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;->onDrag(IFZ)V

    return-void
.end method

.method protected onTouchOutListener(FF)V
    .registers 4

    .line 146
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-interface {v0, p1, p2}, Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;->onTouchOut(FF)V

    return-void
.end method

.method public previewLocal(Ljava/lang/String;)V
    .registers 3

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
