.class public final Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;
.super Lcom/nemo/commonui/xpopup/core/CenterPopupView;
.source "ChoseAvatarPadPop.kt"

# interfaces
.implements Lcom/codemao/nemo/setting/listener/IAvatarPop;


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nChoseAvatarPadPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ChoseAvatarPadPop.kt\ncom/codemao/nemo/setting/pop/ChoseAvatarPadPop\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,165:1\n1851#2,2:166\n*S KotlinDebug\n*F\n+ 1 ChoseAvatarPadPop.kt\ncom/codemao/nemo/setting/pop/ChoseAvatarPadPop\n*L\n143#1:166,2\n*E\n"
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

.field private final mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;


# direct methods
.method public static synthetic $r8$lambda$QFfn9PO_o5dvzyhRdH2o8_JoxSA(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->onCreate$lambda$3(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$dTGcIgrmqKXTrvGoHuxhlfVnz2g(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->onCreate$lambda$2(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$lGy2ERNnDhr2B2L1HX-47X_EJ0g(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->onCreate$lambda$1(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
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

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findViewCache:Ljava/util/Map;

    .line 36
    invoke-direct {p0, p1}, Lcom/nemo/commonui/xpopup/core/CenterPopupView;-><init>(Landroid/content/Context;)V

    .line 35
    iput-object p2, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAvatarDatas:Ljava/util/ArrayList;

    .line 36
    iput-object p3, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    .line 42
    new-instance p2, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$mAdapter$2;

    invoke-direct {p2, p1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$mAdapter$2;-><init>(Landroid/content/Context;Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)V

    invoke-static {p2}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAdapter$delegate:Lkotlin/Lazy;

    return-void
.end method

.method public static final synthetic access$getMAvatarDatas$p(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)Ljava/util/ArrayList;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAvatarDatas:Ljava/util/ArrayList;

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

    .line 42
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAdapter$delegate:Lkotlin/Lazy;

    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    return-object v0
.end method

.method private final hasSelectedData()Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;
    .registers 4

    .line 143
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAvatarDatas:Ljava/util/ArrayList;

    .line 1851
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_17

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    .line 144
    iget-boolean v2, v1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v2, :cond_6

    return-object v1

    :cond_17
    const/4 v0, 0x0

    return-object v0
.end method

.method private final initRv()V
    .registers 6

    .line 91
    new-instance v0, Lcom/codemao/nemo/view/WrapGridLayoutmanager;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/view/WrapGridLayoutmanager;-><init>(Landroid/content/Context;I)V

    .line 92
    sget v1, Lcom/codemao/nemo/R$id;->rv_avatar_choose:I

    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    new-instance v3, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$initRv$1;

    invoke-direct {v3, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$initRv$1;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 102
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 104
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    new-instance v2, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-direct {v2, v3, v4}, Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate;-><init>(Landroid/content/Context;Lcom/codemao/nemo/adapter/UserAvatarChooseDelegate$ChooseCallback;)V

    invoke-virtual {v0, v2}, Lcom/giu/xzz/adapter/rv/RVBaseAdapter;->addItemViewDelegate(Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;)Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    .line 106
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 108
    invoke-virtual {p0, v1}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/coordinaterecylerView/LoadMoreRecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    .line 109
    instance-of v1, v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    if-eqz v1, :cond_56

    .line 110
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    :cond_56
    return-void
.end method

.method private static final onCreate$lambda$1(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V
    .registers 3

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result v0

    if-eqz v0, :cond_c

    return-void

    .line 69
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_13

    return-void

    .line 72
    :cond_13
    iget-object p0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-interface {p0}, Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;->onCommit()V

    return-void
.end method

.method private static final onCreate$lambda$2(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 76
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 79
    :cond_c
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method

.method private static final onCreate$lambda$3(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;Landroid/view/View;)V
    .registers 2

    const-string p1, "this$0"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_c

    return-void

    .line 85
    :cond_c
    invoke-virtual {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method


# virtual methods
.method public _$_findCachedViewById(I)Landroid/view/View;
    .registers 4

    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findViewCache:Ljava/util/Map;

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
    .registers 7

    if-ltz p1, :cond_ac

    .line 116
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAvatarDatas:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_c

    goto/16 :goto_ac

    .line 119
    :cond_c
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->getMAdapter()Lcom/giu/xzz/adapter/rv/RVBaseAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mAvatarDatas:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "mAvatarDatas[pos]"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    .line 121
    iget-boolean v0, p1, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->isSelected:Z

    if-eqz v0, :cond_33

    .line 122
    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    :cond_33
    const/4 p1, 0x0

    if-eqz p2, :cond_5e

    .line 125
    sget p2, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    invoke-virtual {p0, p2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 127
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    return-void

    .line 130
    :cond_5e
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->hasSelectedData()Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;

    move-result-object p2

    .line 131
    sget v0, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v2, 0x1

    if-eqz p2, :cond_6f

    const/4 v3, 0x1

    goto :goto_70

    :cond_6f
    const/4 v3, 0x0

    :goto_70
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 132
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz p2, :cond_7c

    const/4 p1, 0x1

    :cond_7c
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    if-eqz p2, :cond_ac

    .line 134
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getLocalResId()I

    move-result p1

    const/16 v0, -0x3e7

    if-ne p1, v0, :cond_9d

    .line 135
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, p2}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_ac

    .line 137
    :cond_9d
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LocalAndHttpImageUrlInfo;->getHttpUrl()Ljava/lang/String;

    move-result-object p1

    sget p2, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, p2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, p2, v2}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    :cond_ac
    :goto_ac
    return-void
.end method

.method protected getImplLayoutId()I
    .registers 2

    const v0, 0x7f0d02d3

    return v0
.end method

.method protected onCreate()V
    .registers 6

    .line 47
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onCreate()V

    .line 49
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_67

    .line 50
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_34

    .line 51
    sget v2, Lcom/codemao/nemo/R$id;->iv_avatar_frame:I

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 52
    sget v2, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/high16 v3, 0x40000000  # 2.0f

    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    goto :goto_58

    .line 54
    :cond_34
    sget v2, Lcom/codemao/nemo/R$id;->iv_avatar_frame:I

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    sget v3, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v3}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/codemao/nemo/view/RoundStrokeImageView;->setmStrokeWitdh(F)V

    .line 56
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getHead_frame_url()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    invoke-static {v3, v2}, Lcom/codemao/nemo/util/GlideUtils;->loadNoPlace(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 58
    :goto_58
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v2}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {v0, v2}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 62
    :cond_67
    invoke-direct {p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->initRv()V

    .line 63
    sget v0, Lcom/codemao/nemo/R$id;->btn_chose:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 64
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 65
    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$$ExternalSyntheticLambda2;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    sget v0, Lcom/codemao/nemo/R$id;->cl_pop_root:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    new-instance v1, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/codemao/nemo/R$id;->iv_close:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected onDismiss()V
    .registers 2

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->mListener:Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;

    invoke-interface {v0}, Lcom/codemao/nemo/setting/listener/AvatarChosePopListener;->onDismiss()V

    .line 162
    invoke-super {p0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->onDismiss()V

    return-void
.end method

.method public previewLocal(Ljava/lang/String;)V
    .registers 4

    const-string v0, "path"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 153
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1f

    .line 154
    invoke-static {}, Lcom/codemao/nemo/util/LocalUserHelper;->getUserInfo()Lcom/codemao/nemo/bean/LocalUserInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/LocalUserInfo;->getAvatar_url()Ljava/lang/String;

    move-result-object p1

    sget v0, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;)V

    goto :goto_2b

    .line 156
    :cond_1f
    sget v0, Lcom/codemao/nemo/R$id;->iv_user_avatar:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/setting/pop/ChoseAvatarPadPop;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/view/RoundStrokeImageView;

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/util/GlideUtils;->load(Ljava/lang/String;Landroid/widget/ImageView;Z)V

    :goto_2b
    return-void
.end method
