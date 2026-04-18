.class public final Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;
.super Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;
.source "SelectDrawToolsAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter<",
        "Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSelectDrawToolsAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SelectDrawToolsAdapter.kt\ncom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,86:1\n1#2:87\n*E\n"
.end annotation


# instance fields
.field private final dataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;",
            ">;"
        }
    .end annotation
.end field

.field private itemSelectListener:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;

.field private final unSelectedMarginRight:I


# direct methods
.method public static synthetic $r8$lambda$Yy8ySNJsGGpxsK7R-x2RLkruKXA(Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;ILandroid/view/View;)V
    .registers 4

    invoke-static {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->onBindData$lambda$2(Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;ILandroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;",
            ">;)V"
        }
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "dataList"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 15
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_select_draw_tool:I

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 16
    sget v1, Lcom/codemao/toolssdk/R$layout;->toolsdk_item_select_draw_color:I

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 12
    invoke-direct {p0, p1, p2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;-><init>(Landroid/content/Context;Ljava/util/List;[I)V

    .line 11
    iput-object p2, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->dataList:Ljava/util/List;

    .line 24
    iget-object p1, p0, Lcom/yuyh/easyadapter/recyclerview/EasyRVAdapter;->mContext:Landroid/content/Context;

    const/high16 p2, 0x41f80000  # 31.0f

    invoke-static {p1, p2}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->unSelectedMarginRight:I

    return-void
.end method

.method private static final onBindData$lambda$2(Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;ILandroid/view/View;)V
    .registers 10

    const-string p3, "$item"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "this$0"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 44
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getSelect()Z

    move-result p3

    if-eqz p3, :cond_11

    return-void

    .line 45
    :cond_11
    iget-object p3, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->dataList:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_19
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    add-int/lit8 v2, v1, 0x1

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    .line 46
    invoke-virtual {v4}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getSelect()Z

    move-result v5

    if-eqz v5, :cond_44

    if-gt v1, v3, :cond_39

    if-gt p2, v3, :cond_39

    .line 48
    invoke-virtual {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->setSelect(Z)V

    .line 49
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_44

    :cond_39
    const/4 v3, 0x2

    if-lt v1, v3, :cond_44

    if-lt p2, v3, :cond_44

    .line 51
    invoke-virtual {v4, v0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->setSelect(Z)V

    .line 52
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    :cond_44
    :goto_44
    move v1, v2

    goto :goto_19

    .line 56
    :cond_46
    invoke-virtual {p0, v3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->setSelect(Z)V

    .line 57
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 58
    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getType()I

    move-result p3

    if-ne p3, v3, :cond_5e

    .line 59
    iget-object p1, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->itemSelectListener:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getType()I

    move-result p0

    invoke-interface {p1, p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;->onDrawToolSelected(II)V

    goto :goto_71

    .line 61
    :cond_5e
    iget-object p1, p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->itemSelectListener:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;

    if-eqz p1, :cond_71

    invoke-virtual {p0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getColor()Ljava/lang/Integer;

    move-result-object p0

    if-eqz p0, :cond_6d

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    goto :goto_6e

    :cond_6d
    const/4 p0, -0x1

    :goto_6e
    invoke-interface {p1, p0}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;->onColorSelected(I)V

    :cond_71
    :goto_71
    return-void
.end method


# virtual methods
.method public getItemViewType(I)I
    .registers 3

    .line 67
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->dataList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    invoke-virtual {p1}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getType()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_10

    const/4 v0, 0x0

    :cond_10
    return v0
.end method

.method protected onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;)V
    .registers 7

    const-string v0, "item"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    invoke-virtual {p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_40

    .line 28
    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getImageRes()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_1d

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-eqz p1, :cond_1d

    sget v2, Lcom/codemao/toolssdk/R$id;->imageV:I

    invoke-virtual {p1, v2, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setImageResource(II)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_1d
    if-eqz p1, :cond_28

    .line 29
    sget v0, Lcom/codemao/toolssdk/R$id;->imageV:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/widget/ImageView;

    .line 30
    :cond_28
    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getSelect()Z

    move-result v0

    if-eqz v0, :cond_36

    if-nez v1, :cond_31

    goto :goto_66

    :cond_31
    const/4 v0, 0x0

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_66

    :cond_36
    if-nez v1, :cond_39

    goto :goto_66

    .line 33
    :cond_39
    iget v0, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->unSelectedMarginRight:I

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    goto :goto_66

    :cond_40
    if-eqz p1, :cond_4b

    .line 36
    sget v0, Lcom/codemao/toolssdk/R$id;->circle_color_view:I

    invoke-virtual {p1, v0}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getView(I)Landroid/view/View;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;

    .line 37
    :cond_4b
    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getColor()Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_5b

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    if-nez v1, :cond_58

    goto :goto_5b

    .line 38
    :cond_58
    invoke-virtual {v1, v0}, Lcom/codemao/toolssdk/view/simplecolor/CircleColorView;->setColor(I)V

    :cond_5b
    :goto_5b
    if-eqz p1, :cond_66

    .line 40
    sget v0, Lcom/codemao/toolssdk/R$id;->iv_select:I

    invoke-virtual {p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;->getSelect()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->setVisible(IZ)Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;

    :cond_66
    :goto_66
    if-eqz p1, :cond_76

    .line 43
    invoke-virtual {p1}, Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;->getItemView()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_76

    new-instance v0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3, p0, p2}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$$ExternalSyntheticLambda0;-><init>(Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_76
    return-void
.end method

.method public bridge synthetic onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILjava/lang/Object;)V
    .registers 4

    .line 11
    check-cast p3, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;

    invoke-virtual {p0, p1, p2, p3}, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->onBindData(Lcom/yuyh/easyadapter/recyclerview/EasyRVHolder;ILcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsModel;)V

    return-void
.end method

.method public final setItemSelectListener(Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;)V
    .registers 2

    .line 25
    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter;->itemSelectListener:Lcom/codemao/toolssdk/activity/ai_image/SelectDrawToolsAdapter$ItemSelectListener;

    return-void
.end method
