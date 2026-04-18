.class Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/BaseItemAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MoveInfo"
.end annotation


# instance fields
.field public fromX:I

.field public fromY:I

.field public holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

.field public toX:I

.field public toY:I


# direct methods
.method private constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 6

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 80
    iput p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->fromX:I

    .line 81
    iput p3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->fromY:I

    .line 82
    iput p4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->toX:I

    .line 83
    iput p5, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->toY:I

    return-void
.end method

.method synthetic constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/codemao/creativecenter/customview/BaseItemAnimator$1;)V
    .registers 7

    .line 74
    invoke-direct/range {p0 .. p5}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method
