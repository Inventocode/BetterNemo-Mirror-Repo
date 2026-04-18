.class public Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "EmptyClickRecyclerView.java"


# instance fields
.field private lastClickTime:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    const/4 v0, 0x0

    .line 28
    invoke-direct {p0, p1, p2, v0}, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 32
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0x0

    .line 21
    iput-wide p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;->lastClickTime:J

    .line 33
    new-instance p1, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;

    invoke-direct {p1, p0}, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView$1;-><init>(Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;)V

    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;)J
    .registers 3

    .line 20
    iget-wide v0, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;->lastClickTime:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;J)J
    .registers 3

    .line 20
    iput-wide p1, p0, Lcom/codemao/creativecenter/customview/EmptyClickRecyclerView;->lastClickTime:J

    return-wide p1
.end method
