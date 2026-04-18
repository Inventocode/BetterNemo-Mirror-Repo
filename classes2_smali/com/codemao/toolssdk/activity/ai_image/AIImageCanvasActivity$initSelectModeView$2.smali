.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AIImageCanvasActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initSelectModeView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final dp16:I

.field private final dp6:I

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    .line 492
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 v0, 0x41800000  # 16.0f

    .line 493
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp16:I

    const/high16 v0, 0x40c00000  # 6.0f

    .line 494
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp6:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 6

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p3, "state"

    invoke-static {p4, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 501
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2e

    .line 503
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp16:I

    iget p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp6:I

    invoke-virtual {p1, p2, p3, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_49

    .line 506
    :cond_2e
    iget-object p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {p4}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getSelectModeDataList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object p4

    invoke-interface {p4}, Ljava/util/List;->size()I

    move-result p4

    add-int/lit8 p4, p4, -0x1

    if-ne p2, p4, :cond_44

    .line 507
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp6:I

    iget p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp16:I

    invoke-virtual {p1, p2, p3, p4, p3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_49

    .line 511
    :cond_44
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initSelectModeView$2;->dp6:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_49
    return-void
.end method
