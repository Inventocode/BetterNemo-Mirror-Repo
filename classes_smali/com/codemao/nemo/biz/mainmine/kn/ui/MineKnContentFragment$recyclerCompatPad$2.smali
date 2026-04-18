.class public final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MineKnContentFragment.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->recyclerCompatPad(Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic $adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $mainTabHeight:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;Lkotlin/jvm/internal/Ref$IntRef;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;",
            "Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter<",
            "Lcom/codemao/nemo/bean/KnWorkListItem;",
            ">;",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    iput-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->$mainTabHeight:Lkotlin/jvm/internal/Ref$IntRef;

    .line 326
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    const-string v0, "outRect"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "parent"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 333
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 334
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_1e

    return-void

    .line 335
    :cond_1e
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 336
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p3}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getMSpanNum$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)I

    move-result p3

    iget-object p4, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {p4}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getDEFAULT_SPAN_NUM$p(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)I

    move-result p4

    const/16 v0, 0x10

    if-ne p3, p4, :cond_40

    const/high16 p3, 0x41800000  # 16.0f

    .line 337
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-virtual {p1, p4, v0, p3, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5f

    .line 339
    :cond_40
    rem-int/lit8 p3, p2, 0x2

    const/high16 p4, 0x41700000  # 15.0f

    const/high16 v1, 0x40a00000  # 5.0f

    if-nez p3, :cond_54

    .line 340
    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    invoke-virtual {p1, p3, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_5f

    .line 342
    :cond_54
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {p4}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    invoke-virtual {p1, p3, v0, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 345
    :goto_5f
    iget-object p3, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->$adapter:Lcom/ljwx/recyclerview/quick/QuickLoadMoreAdapter;

    invoke-virtual {p3}, Landroidx/recyclerview/widget/ListAdapter;->getCurrentList()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-ne p2, p3, :cond_7b

    .line 347
    iget p2, p1, Landroid/graphics/Rect;->left:I

    .line 348
    iget p3, p1, Landroid/graphics/Rect;->top:I

    .line 349
    iget p4, p1, Landroid/graphics/Rect;->right:I

    .line 350
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$recyclerCompatPad$2;->$mainTabHeight:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr v0, v1

    .line 346
    invoke-virtual {p1, p2, p3, p4, v0}, Landroid/graphics/Rect;->set(IIII)V

    :cond_7b
    return-void
.end method
