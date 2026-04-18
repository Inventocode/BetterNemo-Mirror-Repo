.class public final Lcom/codemao/nemo/adapter/RecommendThemeDelegate;
.super Ljava/lang/Object;
.source "RecommendThemeDelegate.kt"

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


# direct methods
.method public static synthetic $r8$lambda$yP5VIQcCPaS3_INtjp14lddPynM(Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/codemao/nemo/adapter/RecommendThemeDelegate;->convert$lambda$0(Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Landroid/view/View;)V
    .registers 10

    const-string p2, "$data"

    invoke-static {p0, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "$holder"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p2

    if-eqz p2, :cond_11

    return-void

    .line 33
    :cond_11
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    .line 34
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->getSubjectId()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setThemeId(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object p2

    .line 35
    invoke-virtual {p2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object p2

    const-string/jumbo v0, "推荐页-点击主题banner"

    .line 31
    invoke-static {v0, p2}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 39
    invoke-virtual {p1}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 40
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->getSubjectId()J

    move-result-wide p1

    long-to-int v2, p1

    .line 41
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->getSubjectName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x0

    const-string/jumbo v4, "推荐页"

    const-string v5, ""

    .line 38
    invoke-static/range {v1 .. v6}, Lcom/codemao/nemo/activity/ThemeDetailActivity;->goThemeDetail(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;)V

    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)V"
        }
    .end annotation

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz p2, :cond_f

    .line 26
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;

    goto :goto_10

    :cond_f
    move-object p2, v0

    :goto_10
    instance-of p3, p2, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    if-eqz p3, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;

    :cond_17
    if-nez v0, :cond_1a

    return-void

    .line 27
    :cond_1a
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;->getImgUrl()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0a0726

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCoverE(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 28
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/codemao/nemo/adapter/RecommendThemeDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p3, v0, p1}, Lcom/codemao/nemo/adapter/RecommendThemeDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/bean/viewmodel/BannerViewModel;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01d1

    return v0
.end method

.method public isForViewType(Ljava/util/List;I)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/codemao/nemo/bean/viewmodel/RecommendViewModel;",
            ">;I)Z"
        }
    .end annotation

    if-eqz p1, :cond_f

    .line 22
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
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->Banner:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
