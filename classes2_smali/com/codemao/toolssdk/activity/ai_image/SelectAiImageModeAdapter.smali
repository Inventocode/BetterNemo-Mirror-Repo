.class public final Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "SelectAiImageModeAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;",
            ">;"
        }
    .end annotation
.end field

.field private isEnable:Z

.field private itemWidth:I


# direct methods
.method public static synthetic $r8$lambda$Ecft-AzGQ00FHGl_Y9y1CU61OAY(Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->onBindData$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$MkBAIgHKvPKWatMEQkArnRVuKQ0(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->onBindData$lambda$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 24
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_select_ai_image_mode:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 21
    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 20
    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->dataList:Ljava/util/List;

    return-void
.end method

.method private static final onBindData$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;ILandroid/view/View;)V
    .registers 9

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-boolean p3, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->isEnable:Z

    if-nez p3, :cond_f

    return-void

    .line 78
    :cond_f
    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result p3

    if-eqz p3, :cond_16

    return-void

    .line 79
    :cond_16
    iget-object p3, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->dataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_1e
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3a

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    .line 80
    invoke-virtual {v3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result v4

    if-eqz v4, :cond_38

    .line 81
    invoke-virtual {v3, v0}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->setSelect(Z)V

    .line 82
    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_38
    move v1, v2

    goto :goto_1e

    :cond_3a
    const/4 p3, 0x1

    .line 85
    invoke-virtual {p1, p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->setSelect(Z)V

    .line 86
    invoke-virtual {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method private static final onBindData$lambda$1(Landroid/view/View;Landroid/animation/ValueAnimator;)V
    .registers 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type kotlin.Int"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    int-to-float p1, p1

    .line 100
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method


# virtual methods
.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V
    .registers 13

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object v0

    .line 35
    sget v1, Lcom/codemao/toolssdk/R$id;->iv_content:I

    invoke-virtual {p1, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 36
    sget v2, Lcom/codemao/toolssdk/R$id;->cl_content:I

    invoke-virtual {p1, v2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v2

    .line 37
    iget v3, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->itemWidth:I

    int-to-float v3, v3

    const/high16 v4, 0x40c00000  # 6.0f

    mul-float v3, v3, v4

    const/high16 v4, 0x43360000  # 182.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    iput v3, v5, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 39
    iget-object v5, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    const/high16 v6, 0x41700000  # 15.0f

    invoke-static {v5, v6}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v5

    .line 40
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    iget v7, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->itemWidth:I

    iput v7, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    const/4 v6, 0x0

    .line 41
    invoke-virtual {v0, v6, v5, v6, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    .line 43
    iget v8, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->itemWidth:I

    int-to-float v8, v8

    div-float/2addr v8, v4

    const/high16 v4, 0x43800000  # 256.0f

    mul-float v8, v8, v4

    float-to-int v4, v8

    add-int/2addr v4, v3

    add-int/2addr v4, v5

    .line 42
    iput v4, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 44
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 45
    sget v3, Lcom/codemao/toolssdk/R$id;->tv_title:I

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    move-result-object v3

    .line 47
    sget v4, Lcom/codemao/toolssdk/R$id;->iv_foreground:I

    .line 48
    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result v5

    if-eqz v5, :cond_71

    sget v5, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_select_mode_sel:I

    goto :goto_73

    :cond_71
    sget v5, Lcom/codemao/toolssdk/R$drawable;->toolsdk_icon_select_mode_nor:I

    .line 46
    :goto_73
    invoke-virtual {v3, v4, v5}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 50
    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result v3

    if-eqz v3, :cond_97

    .line 51
    iget-object v3, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bumptech/glide/RequestManager;->asGif()Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getGifUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    new-instance v4, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$onBindData$1;

    invoke-direct {v4, v1}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$onBindData$1;-><init>(Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestBuilder;->into(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    goto :goto_a8

    .line 72
    :cond_97
    iget-object v3, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v3

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 74
    :goto_a8
    iget-object v1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v1

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSmallImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v1

    sget v3, Lcom/codemao/toolssdk/R$id;->iv_small_image:I

    invoke-virtual {p1, v3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {v1, p1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    const/16 p1, 0x14

    .line 75
    invoke-static {v2, p1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 76
    new-instance p1, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0, p3, p2}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$$ExternalSyntheticLambda1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;I)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 88
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;->getSelect()Z

    move-result p2

    if-eqz p2, :cond_d9

    const/high16 p2, -0x3ee00000  # -10.0f

    goto :goto_da

    :cond_d9
    const/4 p2, 0x0

    :goto_da
    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    .line 89
    invoke-virtual {v0}, Landroid/view/View;->getTranslationY()F

    move-result p2

    float-to-int p2, p2

    .line 91
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    instance-of p3, p3, Landroid/animation/ValueAnimator;

    if-eqz p3, :cond_f9

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    const-string v1, "null cannot be cast to non-null type android.animation.ValueAnimator"

    invoke-static {p3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p3, Landroid/animation/ValueAnimator;

    invoke-virtual {p3}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_f9
    if-eq p2, p1, :cond_11a

    const/4 p3, 0x2

    new-array p3, p3, [I

    aput p2, p3, v6

    const/4 p2, 0x1

    aput p1, p3, p2

    .line 95
    invoke-static {p3}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 96
    invoke-virtual {v2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const-wide/16 p2, 0xc8

    .line 97
    invoke-virtual {p1, p2, p3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 98
    new-instance p2, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$$ExternalSyntheticLambda0;

    invoke-direct {p2, v0}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 102
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    :cond_11a
    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 20
    check-cast p3, Lcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/ModelSelectAiImageModel;)V

    return-void
.end method

.method public final setEnable(Z)V
    .registers 2

    .line 27
    iput-boolean p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->isEnable:Z

    return-void
.end method

.method public final setItemWidth(I)V
    .registers 2

    .line 109
    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectAiImageModeAdapter;->itemWidth:I

    return-void
.end method
