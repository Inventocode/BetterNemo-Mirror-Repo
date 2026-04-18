.class public final Lcom/codemao/nemo/view/divider/LatestItemDivider;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "LatestItemDivider.kt"


# instance fields
.field private final datas:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final isPad:Z

.field private final mListener:Lcom/codemao/nemo/view/divider/LatestItemListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Vector;Lcom/codemao/nemo/view/divider/LatestItemListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Vector<",
            "Lcom/codemao/nemo/bean/LatestWorkInfo;",
            ">;",
            "Lcom/codemao/nemo/view/divider/LatestItemListener;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "datas"

    invoke-static {p2, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "mListener"

    invoke-static {p3, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    iput-object p2, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->datas:Ljava/util/Vector;

    iput-object p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->mListener:Lcom/codemao/nemo/view/divider/LatestItemListener;

    .line 17
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->isPad:Z

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

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 21
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    :goto_23
    if-ltz p2, :cond_c5

    .line 22
    iget-object p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->datas:Ljava/util/Vector;

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    if-lt p2, p3, :cond_2f

    goto/16 :goto_c5

    .line 25
    :cond_2f
    iget-boolean p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->isPad:Z

    const/4 p4, 0x0

    const/high16 v0, 0x41a00000  # 20.0f

    if-eqz p3, :cond_a6

    .line 26
    iget-object p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->datas:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result p3

    if-eqz p3, :cond_4a

    .line 27
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 28
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto/16 :goto_c5

    .line 31
    :cond_4a
    iget-object p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->mListener:Lcom/codemao/nemo/view/divider/LatestItemListener;

    invoke-interface {p3}, Lcom/codemao/nemo/view/divider/LatestItemListener;->hasOtherNum()I

    move-result p3

    if-eqz p3, :cond_80

    .line 32
    iget-object p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->mListener:Lcom/codemao/nemo/view/divider/LatestItemListener;

    invoke-interface {p3}, Lcom/codemao/nemo/view/divider/LatestItemListener;->hasReworkInfo()Z

    move-result p3

    if-eqz p3, :cond_61

    const/16 p3, 0x8

    if-le p2, p3, :cond_61

    add-int/lit8 p3, p2, -0x1

    goto :goto_62

    :cond_61
    move p3, p2

    .line 35
    :goto_62
    iget-object p4, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->mListener:Lcom/codemao/nemo/view/divider/LatestItemListener;

    invoke-interface {p4}, Lcom/codemao/nemo/view/divider/LatestItemListener;->hasModuleInfo()Z

    move-result p4

    if-eqz p4, :cond_70

    const/16 p4, 0x11

    if-le p2, p4, :cond_70

    add-int/lit8 p3, p3, -0x1

    .line 38
    :cond_70
    iget-object p4, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->mListener:Lcom/codemao/nemo/view/divider/LatestItemListener;

    invoke-interface {p4}, Lcom/codemao/nemo/view/divider/LatestItemListener;->hasReworkInfo()Z

    move-result p4

    if-eqz p4, :cond_7f

    const/16 p4, 0x1a

    if-le p2, p4, :cond_7f

    add-int/lit8 p2, p3, -0x1

    goto :goto_80

    :cond_7f
    move p2, p3

    :cond_80
    :goto_80
    const/high16 p3, 0x41200000  # 10.0f

    .line 43
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->top:I

    .line 44
    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_99

    .line 45
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 46
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_c5

    .line 48
    :cond_99
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 49
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    goto :goto_c5

    .line 53
    :cond_a6
    iget-object p3, p0, Lcom/codemao/nemo/view/divider/LatestItemDivider;->datas:Ljava/util/Vector;

    invoke-virtual {p3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/nemo/bean/LatestWorkInfo;

    invoke-virtual {p2}, Lcom/codemao/nemo/bean/LatestWorkInfo;->isOther()Z

    move-result p2

    if-eqz p2, :cond_b9

    .line 54
    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 55
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_c5

    .line 57
    :cond_b9
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 58
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_c5
    :goto_c5
    return-void
.end method
