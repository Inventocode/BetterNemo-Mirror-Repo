.class public final Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;
.super Ljava/lang/Object;
.source "BeginnerRecommendDelegate.kt"

# interfaces
.implements Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/giu/xzz/adapter/rv/delegate/ItemViewDelegate<",
        "Lcom/codemao/nemo/bean/RecommendListData<",
        "Lcom/codemao/nemo/bean/BeginnerRecommendBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final isPad:Z

.field private final mActivity:Landroid/app/Activity;


# direct methods
.method public static synthetic $r8$lambda$qJxxlrfMZ7icb0RjgX9AY5idsJY(Lcom/codemao/nemo/bean/BeginnerRecommendBean;Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;->convert$lambda$0(Lcom/codemao/nemo/bean/BeginnerRecommendBean;Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "mActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;->mActivity:Landroid/app/Activity;

    .line 26
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;->isPad:Z

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/bean/BeginnerRecommendBean;Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;Landroid/view/View;)V
    .registers 5

    const-string p2, "this$0"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-static {}, Lcom/codemao/nemo/util/SystemUtil;->getChannel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setChannel(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "萌新必看页-点击作品卡片"

    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 62
    iget-object p1, p1, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;->mActivity:Landroid/app/Activity;

    invoke-static {p1, p0}, Lcom/codemao/nemo/activity/NewBeeWorkPlayActivity;->gotoPlay(Landroid/app/Activity;Lcom/codemao/nemo/bean/BeginnerRecommendBean;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetTextI18n",
            "UseCompatLoadingForDrawables"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendListData<",
            "Lcom/codemao/nemo/bean/BeginnerRecommendBean;",
            ">;>;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/RecommendListData;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/RecommendListData;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/BeginnerRecommendBean;

    .line 41
    sget-object p3, Lcom/nemo/commonui/NemoUIConfigManager;->INSTANCE:Lcom/nemo/commonui/NemoUIConfigManager;

    invoke-virtual {p3}, Lcom/nemo/commonui/NemoUIConfigManager;->getLowAnimationLevel()Z

    move-result p3

    if-eqz p3, :cond_23

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkPreviewUrl()Ljava/lang/String;

    move-result-object p3

    goto :goto_27

    :cond_23
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getCourseGifUrl()Ljava/lang/String;

    move-result-object p3

    :goto_27
    const v0, 0x7f0a0447

    .line 42
    invoke-virtual {p1, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object v0

    .line 41
    invoke-static {p3, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCoverNewBee(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 44
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getLabelList()Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_74

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getLabelList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/4 v0, 0x2

    if-lt p3, v0, :cond_74

    const p3, 0x7f0a08ea

    .line 45
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getLabelList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const p3, 0x7f0a08eb

    .line 46
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getLabelList()Ljava/util/List;

    move-result-object v1

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const p3, 0x7f0a08ec

    .line 47
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getLabelList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, p3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    :cond_74
    const p3, 0x7f0a0912

    .line 50
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getAuthorNickname()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const p3, 0x7f0a0911

    .line 51
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getAuthorDescribe()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->setText(ILjava/lang/String;)Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;

    const p3, 0x7f0a0858

    .line 52
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 53
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getAuthorFansCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a0876

    .line 55
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    .line 56
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/BeginnerRecommendBean;->getWorkLikedCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 59
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p3, p2, p0}, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/bean/BeginnerRecommendBean;Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;)V

    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    .line 29
    iget-boolean v0, p0, Lcom/codemao/nemo/adapter/BeginnerRecommendDelegate;->isPad:Z

    if-eqz v0, :cond_8

    const v0, 0x7f0d0190

    goto :goto_b

    :cond_8
    const v0, 0x7f0d018f

    :goto_b
    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/nemo/bean/RecommendListData<",
            "Lcom/codemao/nemo/bean/BeginnerRecommendBean;",
            ">;>;I)Z"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_13

    .line 33
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/bean/RecommendListData;

    if-eqz p1, :cond_13

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/RecommendListData;->getType()I

    move-result p1

    const/4 p2, 0x6

    if-ne p1, p2, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method
