.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "AiImageGenerateStyleAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
        ">;"
    }
.end annotation


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            ">;"
        }
    .end annotation
.end field

.field private itemClickListener:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;


# direct methods
.method public static synthetic $r8$lambda$gYDI8-fyCygC_5jjJYuWaBh3Lf0(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->onBindData$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 16
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_ai_image_generate_style:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 13
    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 12
    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->dataList:Ljava/util/List;

    return-void
.end method

.method private static final onBindData$lambda$0(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;ILandroid/view/View;)V
    .registers 5

    const-string p3, "$item"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getSelect()Z

    move-result p3

    if-eqz p3, :cond_11

    return-void

    .line 37
    :cond_11
    iget-object p3, p1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->itemClickListener:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;

    if-eqz p3, :cond_1d

    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;

    invoke-direct {v0, p1, p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$onBindData$1$1;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;I)V

    invoke-interface {p3, p0, v0}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;->onItemClickListener(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lkotlin/jvm/functions/Function1;)V

    :cond_1d
    return-void
.end method


# virtual methods
.method public final getDataList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->dataList:Ljava/util/List;

    return-object v0
.end method

.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V
    .registers 6

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Lcom/codemao/toolssdk/R$id;->bg_select_v:I

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getSelect()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    .line 32
    sget v0, Lcom/codemao/toolssdk/R$id;->fl_content:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0xc

    .line 33
    invoke-static {v0, v1}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 35
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v1, p3, p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 50
    sget p2, Lcom/codemao/toolssdk/R$id;->imageV:I

    invoke-virtual {p1, p2}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    .line 51
    iget-object v0, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object v0

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getImageUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 52
    sget p2, Lcom/codemao/toolssdk/R$id;->textV:I

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;->getTitle()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setText(ILjava/lang/String;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 12
    check-cast p3, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleModel;)V

    return-void
.end method

.method public final setItemClickListener(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter;->itemClickListener:Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleAdapter$ItemClickListener;

    return-void
.end method
