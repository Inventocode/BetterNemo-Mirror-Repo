.class public Lcom/codemao/creativecenter/customview/GridItemDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "GridItemDecoration.java"


# instance fields
.field private space:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 v0, 0x40000000  # 2.0f

    .line 23
    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/GridItemDecoration;->space:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 3

    .line 26
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    int-to-float p2, p2

    .line 27
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/customview/GridItemDecoration;->space:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 33
    iget p2, p0, Lcom/codemao/creativecenter/customview/GridItemDecoration;->space:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 34
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    .line 35
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 36
    iput p2, p1, Landroid/graphics/Rect;->top:I

    return-void
.end method
