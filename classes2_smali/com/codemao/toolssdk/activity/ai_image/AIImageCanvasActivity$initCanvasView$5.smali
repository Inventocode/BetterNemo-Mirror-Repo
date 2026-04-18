.class public final Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AIImageCanvasActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->initCanvasView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final marginMiddle:I

.field private final marginTopBottom:I

.field final synthetic this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    .line 263
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 v0, 0x42100000  # 36.0f

    .line 264
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->marginTopBottom:I

    const/high16 v0, 0x41400000  # 12.0f

    .line 265
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->marginMiddle:I

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

    .line 272
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    const/4 p3, 0x0

    if-nez p2, :cond_2e

    .line 274
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->marginTopBottom:I

    iget p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->marginMiddle:I

    invoke-virtual {p1, p3, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_51

    :cond_2e
    const/4 p4, 0x1

    if-ne p2, p4, :cond_37

    .line 278
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->marginMiddle:I

    invoke-virtual {p1, p3, p2, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_51

    .line 281
    :cond_37
    iget-object v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->this$0:Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;

    invoke-static {v0}, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;->access$getDrawToolList$p(Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_45

    const-string v0, "drawToolList"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_45
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, p4

    if-ne p2, v0, :cond_51

    .line 282
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AIImageCanvasActivity$initCanvasView$5;->marginTopBottom:I

    invoke-virtual {p1, p3, p3, p3, p2}, Landroid/graphics/Rect;->set(IIII)V

    :cond_51
    :goto_51
    return-void
.end method
