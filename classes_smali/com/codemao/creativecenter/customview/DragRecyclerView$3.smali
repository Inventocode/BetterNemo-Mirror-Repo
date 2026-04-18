.class Lcom/codemao/creativecenter/customview/DragRecyclerView$3;
.super Landroid/view/ViewOutlineProvider;
.source "DragRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/DragRecyclerView;->clipViewCornerByDp(Landroid/view/View;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$pixel:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    .line 296
    iput p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$3;->val$pixel:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .registers 9

    .line 299
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    iget p1, p0, Lcom/codemao/creativecenter/customview/DragRecyclerView$3;->val$pixel:I

    int-to-float v5, p1

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    return-void
.end method
