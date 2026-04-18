.class Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ThemeDetailFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/ThemeDetailFragment;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

.field final synthetic val$i6:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/ThemeDetailFragment;I)V
    .registers 3

    .line 339
    iput-object p1, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    iput p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;->val$i6:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 8

    .line 342
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 343
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 347
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 348
    iget-object p3, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;->this$0:Lcom/codemao/nemo/fragment/ThemeDetailFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/ThemeDetailFragment;->access$900(Lcom/codemao/nemo/fragment/ThemeDetailFragment;)I

    move-result p3

    const/4 p4, 0x1

    if-ne p3, p4, :cond_30

    const/high16 p3, 0x41a00000  # 20.0f

    .line 349
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p4

    iput p4, p1, Landroid/graphics/Rect;->left:I

    .line 350
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-nez p2, :cond_59

    .line 352
    iget p2, p0, Lcom/codemao/nemo/fragment/ThemeDetailFragment$11;->val$i6:I

    mul-int/lit8 p3, p2, 0x2

    iput p3, p1, Landroid/graphics/Rect;->top:I

    .line 353
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_59

    .line 356
    :cond_30
    rem-int/lit8 p3, p2, 0x2

    const/high16 v0, 0x40f00000  # 7.5f

    const/high16 v1, 0x41700000  # 15.0f

    if-nez p3, :cond_3b

    const/high16 v2, 0x41700000  # 15.0f

    goto :goto_3d

    :cond_3b
    const/high16 v2, 0x40f00000  # 7.5f

    :goto_3d
    invoke-static {v2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v2

    iput v2, p1, Landroid/graphics/Rect;->left:I

    if-nez p3, :cond_46

    goto :goto_48

    :cond_46
    const/high16 v0, 0x41700000  # 15.0f

    .line 357
    :goto_48
    invoke-static {v0}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    iput p3, p1, Landroid/graphics/Rect;->right:I

    if-gt p2, p4, :cond_51

    goto :goto_53

    :cond_51
    const/high16 v1, 0x41200000  # 10.0f

    .line 358
    :goto_53
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->top:I

    :cond_59
    :goto_59
    return-void
.end method
