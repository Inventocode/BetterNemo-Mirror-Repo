.class public final Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;
.super Ljava/lang/Object;
.source "RecommendStaggeredCardDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
        ">;"
    }
.end annotation


# instance fields
.field private i10:I

.field private i25:I

.field private final screenWidth:I

.field private final workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;


# direct methods
.method public static synthetic $r8$lambda$P6xaH53mRayvccTxUG6x2-TGQi4(Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;Landroid/widget/ImageView;Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->convert$lambda$0(Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;Landroid/widget/ImageView;Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$keoOmA0kWh-SlRis2Rom72G6WHI(Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->convert$lambda$1(Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V
    .registers 2

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    .line 26
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->getScreenWidth()I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->screenWidth:I

    const/high16 p1, 0x41200000  # 10.0f

    .line 27
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->i10:I

    const/high16 p1, 0x41c80000  # 25.0f

    .line 28
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->i25:I

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;Landroid/widget/ImageView;Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Landroid/view/View;)V
    .registers 6

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    iget-object p0, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    if-eqz p0, :cond_19

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getWorkId()J

    move-result-wide v0

    invoke-interface {p0, p1, p3, v0, v1}, Lcom/codemao/nemo/adapter/RecommendItemCallBack;->toWorkDetail(Landroid/widget/ImageView;Ljava/lang/String;J)V

    :cond_19
    return-void
.end method

.method private static final convert$lambda$1(Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 5

    const-string p2, "$data"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getCourseId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setCoursePackageId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "推荐页-点击公开课入口"

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 63
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getCourseId()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_31

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/activity/CourseActivity;->startActivity(Landroid/content/Context;J)V

    :cond_31
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget v0, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->screenWidth:I

    iget v1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->i25:I

    const/4 v2, 0x2

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->i10:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x4

    const v1, 0x7f0a047b

    .line 40
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    iput v0, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    const v3, 0x7f0a0481

    .line 41
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    iput v0, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v0, 0x0

    if-eqz p2, :cond_38

    .line 43
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    goto :goto_39

    :cond_38
    move-object p2, v0

    :goto_39
    instance-of p3, p2, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

    if-eqz p3, :cond_40

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;

    goto :goto_41

    :cond_40
    move-object p2, v0

    :goto_41
    if-nez p2, :cond_44

    return-void

    :cond_44
    const p3, 0x7f0a0447

    .line 44
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    .line 45
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p3}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 46
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getCourseImgUrl()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f0a0389

    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    invoke-static {v4, v6}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCrouseBanner(Ljava/lang/String;Landroid/widget/ImageView;)V

    const v4, 0x7f0a0923

    .line 47
    invoke-virtual {p1, v4}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v4

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 49
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getWorksList()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x0

    if-eqz v4, :cond_7c

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_7d

    :cond_7c
    const/4 v4, 0x0

    :goto_7d
    if-lt v4, v2, :cond_ba

    .line 50
    invoke-virtual {p1, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 51
    invoke-virtual {p1, v3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 52
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getWorksList()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_94

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    goto :goto_95

    :cond_94
    move-object v3, v0

    .line 53
    :goto_95
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;->getWorksList()Ljava/util/List;

    move-result-object v4

    if-eqz v4, :cond_a2

    const/4 v0, 0x1

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;

    :cond_a2
    if-eqz v3, :cond_ae

    const-string v4, "firstWorkInfoView"

    .line 54
    invoke-static {v1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-static {v3, v1, v4}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    :cond_ae
    if-eqz v0, :cond_ba

    const-string v1, "secondWorkInfoView"

    .line 55
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    invoke-static {v0, v2, v1}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V

    .line 58
    :cond_ba
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p3, p2}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate;Landroid/widget/ImageView;Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    invoke-virtual {p1, v5}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getView(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    .line 60
    new-instance v0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;

    invoke-direct {v0, p2, p1}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegate$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/nemo/bean/viewmodel/BigCardPadViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01e2

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 35
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;->getType()Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    move-result-object p1

    goto :goto_10

    :cond_f
    const/4 p1, 0x0

    :goto_10
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCardPad:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
