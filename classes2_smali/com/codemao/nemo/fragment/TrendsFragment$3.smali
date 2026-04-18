.class Lcom/codemao/nemo/fragment/TrendsFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "TrendsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/TrendsFragment;->setHeader()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

.field final synthetic val$isPad:Z

.field final synthetic val$p10:I

.field final synthetic val$p27:I


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/TrendsFragment;ZII)V
    .registers 5

    .line 165
    iput-object p1, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    iput-boolean p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$isPad:Z

    iput p3, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p27:I

    iput p4, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p10:I

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 168
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 169
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 173
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 174
    iget-boolean p3, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$isPad:Z

    const/4 p4, 0x0

    if-eqz p3, :cond_3a

    if-nez p2, :cond_1c

    .line 176
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p27:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 177
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_60

    .line 178
    :cond_1c
    iget-object p3, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_33

    .line 179
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p27:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 180
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p10:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_60

    .line 182
    :cond_33
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p10:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 183
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_60

    :cond_3a
    if-nez p2, :cond_43

    .line 187
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p27:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 188
    iput p4, p1, Landroid/graphics/Rect;->right:I

    goto :goto_60

    .line 189
    :cond_43
    iget-object p3, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->this$0:Lcom/codemao/nemo/fragment/TrendsFragment;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/TrendsFragment;->access$100(Lcom/codemao/nemo/fragment/TrendsFragment;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_5a

    .line 190
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p27:I

    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 191
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p10:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    goto :goto_60

    .line 193
    :cond_5a
    iget p2, p0, Lcom/codemao/nemo/fragment/TrendsFragment$3;->val$p10:I

    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 194
    iput p4, p1, Landroid/graphics/Rect;->right:I

    :goto_60
    return-void
.end method
