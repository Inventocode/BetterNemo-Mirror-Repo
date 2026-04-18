.class Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "CreateDebugListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BaseViewHolder"
.end annotation


# instance fields
.field root:Landroid/widget/FrameLayout;

.field tvIndex:Landroid/widget/TextView;

.field tvValue:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter;Landroid/view/View;)V
    .registers 3

    .line 81
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 82
    sget p1, Lcom/codemao/creativecenter/R$id;->tv_index:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvIndex:Landroid/widget/TextView;

    .line 83
    sget p1, Lcom/codemao/creativecenter/R$id;->tv_value:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->tvValue:Landroid/widget/TextView;

    .line 84
    sget p1, Lcom/codemao/creativecenter/R$id;->root:I

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateDebugListAdapter$BaseViewHolder;->root:Landroid/widget/FrameLayout;

    return-void
.end method
