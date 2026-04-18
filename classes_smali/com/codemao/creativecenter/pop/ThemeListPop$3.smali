.class Lcom/codemao/creativecenter/pop/ThemeListPop$3;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "ThemeListPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/ThemeListPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field dp16:I

.field dp20:I

.field final synthetic this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/ThemeListPop;)V
    .registers 2

    .line 127
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    const/high16 p1, 0x41a00000  # 20.0f

    .line 128
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp20:I

    const/high16 p1, 0x41800000  # 16.0f

    .line 129
    invoke-static {p1}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp16:I

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 133
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 134
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    if-nez p2, :cond_a

    return-void

    .line 138
    :cond_a
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    if-gez p2, :cond_11

    return-void

    .line 142
    :cond_11
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$300(Lcom/codemao/creativecenter/pop/ThemeListPop;)Z

    move-result p3

    if-eqz p3, :cond_27

    .line 143
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_22

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp20:I

    goto :goto_24

    :cond_22
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp16:I

    :goto_24
    iput p2, p1, Landroid/graphics/Rect;->left:I

    return-void

    .line 146
    :cond_27
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$400(Lcom/codemao/creativecenter/pop/ThemeListPop;)Ljava/util/List;

    move-result-object p3

    if-eqz p3, :cond_64

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$400(Lcom/codemao/creativecenter/pop/ThemeListPop;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    if-lt p2, p3, :cond_3c

    goto :goto_64

    .line 149
    :cond_3c
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p3

    if-eqz p3, :cond_45

    iget p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp20:I

    goto :goto_47

    :cond_45
    iget p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp16:I

    :goto_47
    iput p3, p1, Landroid/graphics/Rect;->left:I

    .line 150
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->this$0:Lcom/codemao/creativecenter/pop/ThemeListPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/ThemeListPop;->access$400(Lcom/codemao/creativecenter/pop/ThemeListPop;)Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    if-ne p2, p3, :cond_64

    .line 151
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->isPad()Z

    move-result p2

    if-eqz p2, :cond_60

    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp20:I

    goto :goto_62

    :cond_60
    iget p2, p0, Lcom/codemao/creativecenter/pop/ThemeListPop$3;->dp16:I

    :goto_62
    iput p2, p1, Landroid/graphics/Rect;->right:I

    :cond_64
    :goto_64
    return-void
.end method
