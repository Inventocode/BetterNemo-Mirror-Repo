.class public final Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "ImagePreviewAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;",
        ">;"
    }
.end annotation


# instance fields
.field private onItemClickListener:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;

.field private selectIndex:I


# direct methods
.method public static synthetic $r8$lambda$d1JIyJj-63ZV9iHwGBumRyXZEII(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;Landroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->onBindData$lambda$0(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "list"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 27
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_img_preview:I

    const/4 v2, 0x0

    aput v1, v0, v2

    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 23
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    const-wide/high16 v0, 0x4028000000000000L  # 12.0

    invoke-static {p1, v0, v1}, Lcom/codemao/toolssdk/view/indicator/buildins/UIUtil;->dip2px(Landroid/content/Context;D)I

    return-void
.end method

.method private static final onBindData$lambda$0(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;Landroid/view/View;)V
    .registers 4

    const-string p3, "this$0"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "$item"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    iget p3, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->selectIndex:I

    if-ne p3, p1, :cond_f

    return-void

    .line 53
    :cond_f
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->selectIndex:I

    .line 54
    iget-object p3, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->onItemClickListener:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;

    if-eqz p3, :cond_18

    invoke-interface {p3, p1, p2}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;->onItemClick(ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    .line 55
    :cond_18
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void
.end method


# virtual methods
.method public final getSelectIndex()I
    .registers 2

    .line 21
    iget v0, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->selectIndex:I

    return v0
.end method

.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V
    .registers 8

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    sget v0, Lcom/codemao/toolssdk/R$id;->ivImage:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 31
    invoke-static {}, Lcom/codemao/toolssdk/image_selector/ISNav;->getInstance()Lcom/codemao/toolssdk/image_selector/ISNav;

    move-result-object v1

    iget-object v2, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3, v0}, Lcom/codemao/toolssdk/image_selector/ISNav;->displayImage(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 33
    sget v1, Lcom/codemao/toolssdk/R$id;->LayoutImage:I

    invoke-virtual {p1, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    const/16 v2, 0xc

    .line 34
    invoke-static {v1, v2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->clipViewCornerByDp(Landroid/view/View;I)V

    .line 36
    sget v1, Lcom/codemao/toolssdk/R$id;->vSelected:I

    invoke-virtual {p1, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v1

    .line 37
    iget v2, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->selectIndex:I

    if-ne v2, p2, :cond_3b

    const/4 v2, 0x0

    .line 38
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_40

    :cond_3b
    const/16 v2, 0x8

    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    :goto_40
    invoke-virtual {p3}, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;->getSelected()Z

    move-result v1

    if-eqz v1, :cond_4c

    const/high16 v1, 0x3f800000  # 1.0f

    .line 44
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    goto :goto_52

    :cond_4c
    const v1, 0x3e4ccccd  # 0.2f

    .line 46
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 49
    :goto_52
    new-instance v0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setOnItemViewClickListener(Landroid/view/View$OnClickListener;)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 15
    check-cast p3, Lcom/codemao/toolssdk/image_selector/bean/PreviewImage;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/image_selector/bean/PreviewImage;)V

    return-void
.end method

.method public final setOnItemClickListener(Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;)V
    .registers 2

    .line 22
    iput-object p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->onItemClickListener:Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter$OnItemClickListener;

    return-void
.end method

.method public final setSelectIndex(I)V
    .registers 2

    .line 21
    iput p1, p0, Lcom/codemao/toolssdk/image_selector/adapter/ImagePreviewAdapter;->selectIndex:I

    return-void
.end method
