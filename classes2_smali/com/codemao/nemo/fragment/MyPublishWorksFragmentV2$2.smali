.class Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "MyPublishWorksFragmentV2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->initRecyclerView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 7

    .line 82
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 83
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 87
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-ltz p2, :cond_4e

    .line 88
    iget-object p3, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    iget-object p3, p3, Lcom/codemao/nemo/fragment/BaseRecyclerViewFragment;->datas:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_1b

    goto :goto_4e

    .line 91
    :cond_1b
    iget-object p3, p0, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2$2;->this$0:Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;

    invoke-static {p3}, Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;->access$100(Lcom/codemao/nemo/fragment/MyPublishWorksFragmentV2;)Z

    move-result p3

    const/4 p4, 0x0

    if-eqz p3, :cond_41

    .line 92
    rem-int/lit8 p2, p2, 0x2

    const/high16 p3, 0x41f00000  # 30.0f

    const/high16 v0, 0x41200000  # 10.0f

    if-nez p2, :cond_2f

    const/high16 v1, 0x41f00000  # 30.0f

    goto :goto_31

    :cond_2f
    const/high16 v1, 0x41200000  # 10.0f

    :goto_31
    invoke-static {v1}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result v1

    if-nez p2, :cond_39

    const/high16 p3, 0x41200000  # 10.0f

    :cond_39
    invoke-static {p3}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, v1, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_4e

    :cond_41
    const/high16 p2, 0x41a00000  # 20.0f

    .line 94
    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p3

    invoke-static {p2}, Lcom/codemao/nemo/util/ScreenUtils;->dp2px(F)I

    move-result p2

    invoke-virtual {p1, p3, p4, p2, p4}, Landroid/graphics/Rect;->set(IIII)V

    :cond_4e
    :goto_4e
    return-void
.end method
