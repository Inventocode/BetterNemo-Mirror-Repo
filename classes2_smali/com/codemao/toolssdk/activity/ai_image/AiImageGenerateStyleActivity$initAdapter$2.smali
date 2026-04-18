.class public final Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "AiImageGenerateStyleActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;->initAdapter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field private final dp2:I

.field private final marginLeftRight:I

.field private final marginMiddle:I

.field private final marginTop:I


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity;)V
    .registers 3

    .line 268
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 v0, 0x41800000  # 16.0f

    .line 269
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginTop:I

    const/high16 v0, 0x40000000  # 2.0f

    .line 270
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->dp2:I

    const/high16 v0, 0x40c00000  # 6.0f

    .line 271
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result v0

    iput v0, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginMiddle:I

    const/high16 v0, 0x41400000  # 12.0f

    .line 272
    invoke-static {p1, v0}, Lcom/codemao/toolssdk/image_selector/utils/DisplayUtils;->dip2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginLeftRight:I

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

    .line 279
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    const-string p3, "null cannot be cast to non-null type androidx.recyclerview.widget.RecyclerView.LayoutParams"

    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->getViewLayoutPosition()I

    move-result p2

    if-nez p2, :cond_2f

    .line 281
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginLeftRight:I

    iget p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginTop:I

    iget p4, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->dp2:I

    invoke-virtual {p1, p2, p3, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_36

    .line 285
    :cond_2f
    iget p2, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginLeftRight:I

    iget p3, p0, Lcom/codemao/toolssdk/activity/ai_image/AiImageGenerateStyleActivity$initAdapter$2;->marginMiddle:I

    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_36
    return-void
.end method
