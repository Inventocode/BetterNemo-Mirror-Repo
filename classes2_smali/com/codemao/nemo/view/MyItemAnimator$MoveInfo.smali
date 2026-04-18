.class Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;
.super Ljava/lang/Object;
.source "MyItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/view/MyItemAnimator;
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
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 6

    .line 659
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 660
    iput-object p1, p0, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 661
    iput p2, p0, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->fromX:I

    .line 662
    iput p3, p0, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->fromY:I

    .line 663
    iput p4, p0, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->toX:I

    .line 664
    iput p5, p0, Lcom/codemao/nemo/view/MyItemAnimator$MoveInfo;->toY:I

    return-void
.end method
