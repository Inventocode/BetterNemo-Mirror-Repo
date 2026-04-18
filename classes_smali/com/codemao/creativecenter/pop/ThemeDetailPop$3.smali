.class Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ThemeDetailPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeDetailPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dp3:I

.field dp4:I

.field dp6:I

.field dp8:I

.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)V
    .registers 2

    .line 130
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 p1, 0x41000000  # 8.0f

    .line 131
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp8:I

    const/high16 p1, 0x40c00000  # 6.0f

    .line 132
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp6:I

    const/high16 p1, 0x40800000  # 4.0f

    .line 133
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp4:I

    const/high16 p1, 0x40400000  # 3.0f

    .line 134
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp3:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 138
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 139
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 143
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-gez p2, :cond_11

    return-void

    .line 147
    :cond_11
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$000(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Z

    move-result p3

    if-eqz p3, :cond_41

    .line 148
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_22

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp4:I

    goto :goto_24

    :cond_22
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp3:I

    :goto_24
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 149
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_2f

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp4:I

    goto :goto_31

    :cond_2f
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp3:I

    :goto_31
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 150
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_3c

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp8:I

    goto :goto_3e

    :cond_3c
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp6:I

    :goto_3e
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 153
    :cond_41
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$100(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_7d

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeDetailPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeDetailPop;->access$100(Lcom/codemao/creativecenter/pop/ThemeDetailPop;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_56

    goto :goto_7d

    .line 156
    :cond_56
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_5f

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp4:I

    goto :goto_61

    :cond_5f
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp3:I

    :goto_61
    iput p2, p1, Landroid/graphics/Rect;->left:I

    .line 157
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_6c

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp4:I

    goto :goto_6e

    :cond_6c
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp3:I

    :goto_6e
    iput p2, p1, Landroid/graphics/Rect;->right:I

    .line 158
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_79

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp8:I

    goto :goto_7b

    :cond_79
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeDetailPop$3;->dp6:I

    :goto_7b
    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :cond_7d
    :goto_7d
    return-void
.end method
