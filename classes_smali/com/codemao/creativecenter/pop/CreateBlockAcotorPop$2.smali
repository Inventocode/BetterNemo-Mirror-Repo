.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "CreateBlockAcotorPop.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->init(ILcom/codemao/creativecenter/view/LocalBcmView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)V
    .registers 2

    .line 88
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .registers 5

    .line 91
    invoke-super {p0, p1, p2, p3, p4}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 92
    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->findContainingViewHolder(Landroid/view/View;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object p2

    const/high16 p3, 0x41000000  # 8.0f

    if-nez p2, :cond_18

    .line 94
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    return-void

    .line 97
    :cond_18
    invoke-virtual {p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result p2

    .line 99
    :try_start_1c
    iget-object p4, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p4}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object p4

    invoke-virtual {p4, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->getItemViewType(I)I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_37

    .line 100
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p4, 0x0

    invoke-static {p2, p4}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_50

    .line 102
    :cond_37
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I
    :try_end_43
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_43} :catch_44

    goto :goto_50

    .line 105
    :catch_44
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$2;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-virtual {p2}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p3}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p1, Landroid/graphics/Rect;->bottom:I

    :goto_50
    return-void
.end method
