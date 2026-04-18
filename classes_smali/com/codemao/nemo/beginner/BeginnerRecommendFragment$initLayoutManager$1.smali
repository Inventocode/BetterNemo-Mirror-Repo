.class public final Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$1;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "BeginnerRecommendFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->initLayoutManager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    .line 82
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 9

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 84
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 85
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-eqz p2, :cond_22

    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    goto :goto_23

    :cond_22
    const/4 p2, -0x1

    :goto_23
    if-ltz p2, :cond_97

    .line 86
    iget-object p3, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p3}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3}, Ljava/util/Vector;->size()I

    move-result p3

    if-lt p2, p3, :cond_32

    goto :goto_97

    .line 89
    :cond_32
    iget-object p3, p0, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment$initLayoutManager$1;->this$0:Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;

    invoke-static {p3}, Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;->access$getDatas$p$s-1061460774(Lcom/codemao/nemo/beginner/BeginnerRecommendFragment;)Ljava/util/Vector;

    move-result-object p3

    invoke-virtual {p3, p2}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/codemao/nemo/bean/RecommendListData;

    invoke-virtual {p3}, Lcom/codemao/nemo/bean/RecommendListData;->getType()I

    move-result p3

    const/4 p4, 0x6

    if-ne p3, p4, :cond_97

    .line 90
    invoke-static {}, Lcom/codemao/nemo/util/ScreenUtils;->isLargePad()Z

    move-result p3

    const/high16 p4, 0x41a00000  # 20.0f

    if-eqz p3, :cond_7e

    .line 91
    rem-int/lit8 p3, p2, 0x2

    const/4 v0, 0x1

    if-nez p3, :cond_54

    const/4 p3, 0x1

    goto :goto_55

    :cond_54
    const/4 p3, 0x0

    :goto_55
    const/high16 v1, 0x41f00000  # 30.0f

    const/high16 v2, 0x41200000  # 10.0f

    if-eqz p3, :cond_5e

    const/high16 v3, 0x41f00000  # 30.0f

    goto :goto_60

    :cond_5e
    const/high16 v3, 0x41200000  # 10.0f

    .line 92
    :goto_60
    invoke-static {v3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v3

    iput v3, p1, Landroid/graphics/Rect;->left:I

    if-eqz p3, :cond_6a

    const/high16 v1, 0x41200000  # 10.0f

    .line 93
    :cond_6a
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-eqz p2, :cond_75

    if-eq p2, v0, :cond_75

    goto :goto_77

    :cond_75
    const/high16 p4, 0x41200000  # 10.0f

    .line 94
    :goto_77
    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    goto :goto_97

    .line 96
    :cond_7e
    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 97
    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_8f

    const/high16 p2, 0x41000000  # 8.0f

    goto :goto_91

    :cond_8f
    const/high16 p2, 0x41700000  # 15.0f

    .line 98
    :goto_91
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_97
    :goto_97
    return-void
.end method
