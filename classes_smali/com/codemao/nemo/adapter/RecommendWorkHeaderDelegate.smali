.class public final Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;
.super Ljava/lang/Object;
.source "RecommendWorkHeaderDelegate.kt"

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
.field private final i16:I

.field private final workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;


# direct methods
.method public static synthetic $r8$lambda$1oI03LO3V5CTnBVyzHwunUERVn0(Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;->convert$lambda$0(Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/codemao/nemo/adapter/RecommendItemCallBack;)V
    .registers 2

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    const/high16 p1, 0x41800000  # 16.0f

    .line 15
    invoke-static {p1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;->i16:I

    return-void
.end method

.method private static final convert$lambda$0(Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;Landroid/view/View;)V
    .registers 6

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$holder"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$data"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    iget-object p0, p0, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;->workCallBack:Lcom/codemao/nemo/adapter/RecommendItemCallBack;

    if-eqz p0, :cond_25

    const p3, 0x7f0a0447

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p1

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->getWorkId()J

    move-result-wide v0

    invoke-interface {p0, p1, p3, v0, v1}, Lcom/codemao/nemo/adapter/RecommendItemCallBack;->toWorkDetail(Landroid/widget/ImageView;Ljava/lang/String;J)V

    :cond_25
    return-void
.end method


# virtual methods
.method public convert(Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Ljava/util/List;I)V
    .registers 7
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
    instance-of p3, p2, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    if-eqz p3, :cond_17

    move-object v0, p2

    check-cast v0, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;

    :cond_17
    if-nez v0, :cond_1a

    return-void

    .line 27
    :cond_1a
    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->getImageUrl()Ljava/lang/String;

    move-result-object p2

    const p3, 0x7f0a0447

    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getImageView(I)Landroid/widget/ImageView;

    move-result-object p3

    invoke-static {p2, p3}, Lcom/codemao/nemo/util/GlideUtils;->loadWorkCover(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 28
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance p3, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate$$ExternalSyntheticLambda0;

    invoke-direct {p3, p0, p1, v0}, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;)V

    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const p2, 0x7f0a0923

    .line 29
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p3

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/viewmodel/BigCardViewModel;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const p3, 0x7f0a07f6

    .line 30
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41800000  # 16.0f

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 31
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41d80000  # 27.0f

    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    invoke-virtual {p1, p2}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p2

    iget v0, p0, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;->i16:I

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 34
    invoke-virtual {p1, p3}, Lcom/giu/xzz/adapter/rv/holder/RVBaseViewHolder;->getTextView(I)Landroid/widget/TextView;

    move-result-object p1

    iget p2, p0, Lcom/codemao/nemo/adapter/RecommendWorkHeaderDelegate;->i16:I

    invoke-virtual {p1, p2, v1, v1, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    return-void
.end method

.method public getItemViewLayoutId()I
    .registers 2

    const v0, 0x7f0d01e9

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
    sget-object p2, Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;->BigCard:Lcom/codemao/nemo/bean/viewmodel/RecommendItemType;

    if-ne p1, p2, :cond_16

    const/4 p1, 0x1

    goto :goto_17

    :cond_16
    const/4 p1, 0x0

    :goto_17
    return p1
.end method
