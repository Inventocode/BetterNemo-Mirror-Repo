.class public final Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;
.super Ljava/lang/Object;
.source "RecommendStaggeredCardDelegate.kt"


# direct methods
.method public static synthetic $r8$lambda$YOvSh8NLkpFeLAtb2uGXrkT4mGw(Lcom/codemao/nemo/adapter/RecommendItemCallBack;Landroid/view/View;Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt;->setupWorkLayout$lambda$0(Lcom/codemao/nemo/adapter/RecommendItemCallBack;Landroid/view/View;Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;)V

    return-void
.end method

.method public static final setupWorkLayout(Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V
    .registers 5

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 71
    new-instance v0, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;

    invoke-direct {v0, p2, p1, p0}, Lcom/codemao/nemo/adapter/RecommendStaggeredCardDelegateKt$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;Landroid/view/View;Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0923

    .line 74
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getWorkName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a0912

    .line 75
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getUserName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a08ac

    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getReadCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p2, 0x7f0a081d

    .line 77
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getPraisedCount()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/nemo/util/StringUtil;->getFormatNumOver10w(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 78
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getUserIconUrl()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a043c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadUserAvatar(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 79
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    const v0, 0x7f0a0447

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-static {p2, v0}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    const p2, 0x7f0a0771

    .line 81
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;

    .line 82
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getLabelStr()Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_9f

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result p2

    if-lez p2, :cond_9b

    const/4 p2, 0x1

    goto :goto_9c

    :cond_9b
    const/4 p2, 0x0

    :goto_9c
    if-ne p2, v0, :cond_9f

    goto :goto_a0

    :cond_9f
    const/4 v0, 0x0

    :goto_a0
    if-eqz v0, :cond_bb

    .line 83
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getLabelStr()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getLabelShadowColor()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->setMShadowColor(I)V

    .line 85
    invoke-virtual {p0}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getLabelColor()I

    move-result p0

    invoke-virtual {p1, p0}, Lcom/codemao/nemo/view/textview/RoundRectSolidTextView;->setMSolidColor(I)V

    .line 86
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_c0

    :cond_bb
    const/16 p0, 0x8

    .line 88
    invoke-virtual {p1, p0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_c0
    return-void
.end method

.method private static final setupWorkLayout$lambda$0(Lcom/codemao/nemo/adapter/RecommendItemCallBack;Landroid/view/View;Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;Landroid/view/View;)V
    .registers 6

    const-string p3, "$view"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p0, :cond_20

    const p3, 0x7f0a0447

    .line 71
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/WorkViewModel;->getWorkId()J

    move-result-wide v0

    invoke-interface {p0, p1, p3, v0, v1}, Lcom/codemao/nemo/adapter/RecommendItemCallBack;->toWorkDetail(Landroid/widget/ImageView;Ljava/lang/String;J)V

    :cond_20
    return-void
.end method
