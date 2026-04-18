.class public final Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initRecyclerView$1;
.super Landroid/view/ViewOutlineProvider;
.source "EditListElementsActivity.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $dp44:F


# direct methods
.method constructor <init>(F)V
    .registers 2

    iput p1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initRecyclerView$1;->$dp44:F

    .line 673
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 10

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outline"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 678
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 679
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/codemao/toolssdk/activity/edit_list_elements/EditListElementsActivity$initRecyclerView$1;->$dp44:F

    add-float/2addr v0, v1

    float-to-int v5, v0

    .line 680
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x40800000  # 4.0f

    invoke-static {p1, v0}, Lcom/codemao/toolssdk/utils/ToolsSDKImageUtils;->dp2px(Landroid/content/Context;F)F

    move-result v6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p2

    .line 675
    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
