.class public abstract Lcom/codemao/creativecenter/customview/BaseItemAnimator;
.super Landroidx/recyclerview/widget/SimpleItemAnimator;
.source "BaseItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/customview/BaseItemAnimator$VpaListenerAdapter;,
        Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;,
        Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;
    }
.end annotation


# instance fields
.field protected mAddAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mAdditionsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mChangeAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mChangesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mMoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mMovesList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field private mPendingAdditions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingMoves:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPendingRemovals:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mRemoveAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 3

    .line 51
    invoke-direct {p0}, Landroidx/recyclerview/widget/SimpleItemAnimator;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 69
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 70
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 52
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 6

    .line 40
    invoke-direct/range {p0 .. p5}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/customview/BaseItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V
    .registers 2

    .line 40
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateChangeImpl(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V

    return-void
.end method

.method static synthetic access$300(Lcom/codemao/creativecenter/customview/BaseItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/customview/BaseItemAnimator;)Ljava/util/ArrayList;
    .registers 1

    .line 40
    iget-object p0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    return-object p0
.end method

.method private animateChangeImpl(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V
    .registers 7

    .line 323
    iget-object v0, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x0

    if-nez v0, :cond_7

    move-object v0, v1

    goto :goto_9

    .line 324
    :cond_7
    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 325
    :goto_9
    iget-object v2, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v2, :cond_f

    .line 326
    iget-object v1, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    :cond_f
    const/4 v2, 0x0

    if-eqz v0, :cond_47

    .line 328
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 329
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v3

    .line 328
    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 330
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 331
    iget v3, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->toX:I

    iget v4, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->fromX:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 332
    iget v3, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->toY:I

    iget v4, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->fromY:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 333
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    new-instance v4, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;

    invoke-direct {v4, p0, p1, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$5;-><init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 349
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_47
    if-eqz v1, :cond_76

    .line 352
    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 353
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    iget-object v4, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    const/high16 v3, 0x3f800000  # 1.0f

    .line 355
    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v2

    new-instance v3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;

    invoke-direct {v3, p0, p1, v0, v1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$6;-><init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/core/view/ViewPropertyAnimatorCompat;Landroid/view/View;)V

    invoke-virtual {v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 370
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_76
    return-void
.end method

.method private animateMoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)V
    .registers 13

    .line 255
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    sub-int v4, p4, p2

    sub-int v5, p5, p3

    const/4 p2, 0x0

    if-eqz v4, :cond_10

    .line 259
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationX(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    :cond_10
    if-eqz v5, :cond_19

    .line 262
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    .line 267
    :cond_19
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v6

    .line 268
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 269
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide p2

    invoke-virtual {v6, p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance p3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;

    move-object v1, p3

    move-object v2, p0

    move-object v3, p1

    invoke-direct/range {v1 .. v6}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$4;-><init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IILandroidx/core/view/ViewPropertyAnimatorCompat;)V

    invoke-virtual {p2, p3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 290
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method private endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;",
            ">;",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ")V"
        }
    .end annotation

    .line 375
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_22

    .line 376
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    .line 377
    invoke-direct {p0, v1, p2}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 378
    iget-object v2, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    iget-object v2, v1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-nez v2, :cond_1f

    .line 379
    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_22
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V
    .registers 3

    .line 386
    iget-object v0, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_7

    .line 387
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    .line 389
    :cond_7
    iget-object v0, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-eqz v0, :cond_e

    .line 390
    invoke-direct {p0, p1, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z

    :cond_e
    return-void
.end method

.method private endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 7

    .line 395
    iget-object v0, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, p2, :cond_a

    .line 396
    iput-object v2, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->newHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    goto :goto_11

    .line 397
    :cond_a
    iget-object v0, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v0, p2, :cond_27

    .line 398
    iput-object v2, p1, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    const/4 v3, 0x1

    .line 403
    :goto_11
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 404
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 405
    iget-object p1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 406
    invoke-virtual {p0, p2, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchChangeFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Z)V

    return v1

    :cond_27
    return v3
.end method

.method private resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 2

    .line 499
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    return-void
.end method


# virtual methods
.method public animateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 4

    .line 210
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 211
    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->prepareAnimateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 212
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 213
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract animateAddImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public animateChange(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 22

    move-object v6, p0

    move-object/from16 v1, p1

    move-object/from16 v0, p2

    if-ne v1, v0, :cond_17

    move-object v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    move/from16 v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 299
    invoke-virtual/range {v0 .. v5}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z

    move-result v0

    return v0

    .line 301
    :cond_17
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v2

    .line 302
    iget-object v3, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result v3

    .line 303
    iget-object v4, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v4}, Landroidx/core/view/ViewCompat;->getAlpha(Landroid/view/View;)F

    move-result v4

    .line 304
    invoke-direct/range {p0 .. p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int v5, p5, p3

    int-to-float v5, v5

    sub-float/2addr v5, v2

    float-to-int v5, v5

    sub-int v7, p6, p4

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v7, v7

    .line 308
    iget-object v8, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v8, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 309
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 310
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v2, v4}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    if-eqz v0, :cond_5e

    .line 313
    invoke-direct {p0, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 314
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v3, v5

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 315
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    neg-int v3, v7

    int-to-float v3, v3

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 316
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 318
    :cond_5e
    iget-object v2, v6, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    new-instance v3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    const/4 v14, 0x0

    move-object v7, v3

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    move/from16 v12, p5

    move/from16 v13, p6

    invoke-direct/range {v7 .. v14}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/codemao/creativecenter/customview/BaseItemAnimator$1;)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public animateMove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIII)Z
    .registers 14

    .line 233
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    int-to-float p2, p2

    .line 234
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->getTranslationX(Landroid/view/View;)F

    move-result v1

    add-float/2addr p2, v1

    float-to-int v3, p2

    int-to-float p2, p3

    .line 235
    iget-object p3, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p3}, Landroidx/core/view/ViewCompat;->getTranslationY(Landroid/view/View;)F

    move-result p3

    add-float/2addr p2, p3

    float-to-int v4, p2

    .line 236
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    sub-int p2, p4, v3

    sub-int p3, p5, v4

    if-nez p2, :cond_22

    if-nez p3, :cond_22

    .line 240
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    const/4 p1, 0x0

    return p1

    :cond_22
    if-eqz p2, :cond_29

    neg-int p2, p2

    int-to-float p2, p2

    .line 244
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    :cond_29
    if-eqz p3, :cond_30

    neg-int p2, p3

    int-to-float p2, p2

    .line 247
    invoke-static {v0, p2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 249
    :cond_30
    iget-object p2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    new-instance p3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    const/4 v7, 0x0

    move-object v1, p3

    move-object v2, p1

    move v5, p4

    move v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;-><init>(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;IIIILcom/codemao/creativecenter/customview/BaseItemAnimator$1;)V

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method public animateRemove(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)Z
    .registers 3

    .line 223
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->resetAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 224
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected abstract animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method cancelAll(Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
            ">;)V"
        }
    .end annotation

    .line 615
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_6
    if-ltz v0, :cond_1a

    .line 616
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v1, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_1a
    return-void
.end method

.method protected dispatchFinishedWhenDone()V
    .registers 2

    .line 523
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_9

    .line 524
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    :cond_9
    return-void
.end method

.method public endAnimation(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .registers 9

    .line 412
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 414
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->cancel()V

    .line 416
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_11
    const/4 v2, 0x0

    if-ltz v1, :cond_31

    .line 417
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    .line 418
    iget-object v3, v3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v3, p1, :cond_2e

    .line 419
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 420
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 421
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 422
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_2e
    add-int/lit8 v1, v1, -0x1

    goto :goto_11

    .line 425
    :cond_31
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 426
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    const/high16 v3, 0x3f800000  # 1.0f

    if-eqz v1, :cond_46

    .line 427
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 428
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 430
    :cond_46
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 431
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 432
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 435
    :cond_54
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_5c
    if-ltz v1, :cond_77

    .line 436
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 437
    invoke-direct {p0, v4, p1}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimation(Ljava/util/List;Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 438
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_74

    .line 439
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_74
    add-int/lit8 v1, v1, -0x1

    goto :goto_5c

    .line 442
    :cond_77
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_7f
    if-ltz v1, :cond_b9

    .line 443
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    .line 444
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    :goto_8f
    if-ltz v5, :cond_b6

    .line 445
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    .line 446
    iget-object v6, v6, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    if-ne v6, p1, :cond_b3

    .line 447
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 448
    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 449
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 450
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 451
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_b6

    .line 452
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_b6

    :cond_b3
    add-int/lit8 v5, v5, -0x1

    goto :goto_8f

    :cond_b6
    :goto_b6
    add-int/lit8 v1, v1, -0x1

    goto :goto_7f

    .line 458
    :cond_b9
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_c1
    if-ltz v1, :cond_e5

    .line 459
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 460
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_e2

    .line 461
    invoke-static {v0, v3}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 462
    invoke-virtual {p0, p1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 463
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_e2

    .line 464
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_e2
    add-int/lit8 v1, v1, -0x1

    goto :goto_c1

    .line 471
    :cond_e5
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 477
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 483
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 489
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 493
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->dispatchFinishedWhenDone()V

    return-void
.end method

.method public endAnimations()V
    .registers 8

    .line 530
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_8
    const/4 v1, 0x0

    if-ltz v0, :cond_2a

    .line 532
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    .line 533
    iget-object v3, v2, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 534
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 535
    invoke-static {v3, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 536
    iget-object v1, v2, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 537
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 539
    :cond_2a
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_32
    if-ltz v0, :cond_47

    .line 541
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 542
    invoke-virtual {p0, v2}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchRemoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 543
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_32

    .line 545
    :cond_47
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_4f
    const/high16 v2, 0x3f800000  # 1.0f

    if-ltz v0, :cond_6b

    .line 547
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 548
    iget-object v4, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 549
    invoke-static {v4, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 550
    invoke-virtual {p0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 551
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_4f

    .line 553
    :cond_6b
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_73
    if-ltz v0, :cond_83

    .line 555
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_73

    .line 557
    :cond_83
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 558
    invoke-virtual {p0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8f

    return-void

    .line 562
    :cond_8f
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_97
    if-ltz v0, :cond_d2

    .line 564
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 565
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_a7
    if-ltz v4, :cond_cf

    .line 567
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    .line 568
    iget-object v6, v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 569
    iget-object v6, v6, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 570
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    .line 571
    invoke-static {v6, v1}, Landroidx/core/view/ViewCompat;->setTranslationX(Landroid/view/View;F)V

    .line 572
    iget-object v5, v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    invoke-virtual {p0, v5}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchMoveFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 573
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 574
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_cc

    .line 575
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_cc
    add-int/lit8 v4, v4, -0x1

    goto :goto_a7

    :cond_cf
    add-int/lit8 v0, v0, -0x1

    goto :goto_97

    .line 579
    :cond_d2
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_da
    if-ltz v0, :cond_10e

    .line 581
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 582
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    :goto_ea
    if-ltz v3, :cond_10b

    .line 584
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 585
    iget-object v5, v4, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 586
    invoke-static {v5, v2}, Landroidx/core/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    .line 587
    invoke-virtual {p0, v4}, Landroidx/recyclerview/widget/SimpleItemAnimator;->dispatchAddFinished(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 588
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 589
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_108

    .line 590
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_108
    add-int/lit8 v3, v3, -0x1

    goto :goto_ea

    :cond_10b
    add-int/lit8 v0, v0, -0x1

    goto :goto_da

    .line 594
    :cond_10e
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_116
    if-ltz v0, :cond_142

    .line 596
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 597
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_126
    if-ltz v2, :cond_13f

    .line 599
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    invoke-direct {p0, v3}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->endChangeAnimationIfNecessary(Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;)V

    .line 600
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_13c

    .line 601
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_13c
    add-int/lit8 v2, v2, -0x1

    goto :goto_126

    :cond_13f
    add-int/lit8 v0, v0, -0x1

    goto :goto_116

    .line 606
    :cond_142
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 607
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 608
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 609
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->cancelAll(Ljava/util/List;)V

    .line 611
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->dispatchAnimationsFinished()V

    return-void
.end method

.method public isRunning()Z
    .registers 2

    .line 504
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    .line 505
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    .line 506
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    .line 507
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMoveAnimations:Ljava/util/ArrayList;

    .line 508
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mRemoveAnimations:Ljava/util/ArrayList;

    .line 509
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAddAnimations:Ljava/util/ArrayList;

    .line 510
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangeAnimations:Ljava/util/ArrayList;

    .line 511
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    .line 512
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    .line 513
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5b

    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    .line 514
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_59

    goto :goto_5b

    :cond_59
    const/4 v0, 0x0

    goto :goto_5c

    :cond_5b
    :goto_5b
    const/4 v0, 0x1

    :goto_5c
    return v0
.end method

.method protected abstract prepareAnimateAdd(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
.end method

.method public runPendingAnimations()V
    .registers 11

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 121
    iget-object v1, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    .line 122
    iget-object v2, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    xor-int/lit8 v2, v2, 0x1

    .line 123
    iget-object v3, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    xor-int/lit8 v3, v3, 0x1

    if-nez v0, :cond_29

    if-nez v1, :cond_29

    if-nez v3, :cond_29

    if-nez v2, :cond_29

    return-void

    .line 129
    :cond_29
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2f
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3f

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 130
    invoke-virtual {p0, v5}, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->animateRemoveImpl(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    goto :goto_2f

    .line 132
    :cond_3f
    iget-object v4, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingRemovals:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    const/4 v4, 0x0

    if-eqz v1, :cond_77

    .line 135
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 136
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 137
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mMovesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingMoves:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 139
    new-instance v6, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;

    invoke-direct {v6, p0, v5}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$1;-><init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_74

    .line 151
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;

    iget-object v5, v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$MoveInfo;->holder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 152
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_77

    .line 154
    :cond_74
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_77
    :goto_77
    if-eqz v2, :cond_a9

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 160
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 161
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mChangesList:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 162
    iget-object v6, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingChanges:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 163
    new-instance v6, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;

    invoke-direct {v6, p0, v5}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$2;-><init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Ljava/util/ArrayList;)V

    if-eqz v0, :cond_a6

    .line 174
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;

    iget-object v5, v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$ChangeInfo;->oldHolder:Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    .line 175
    iget-object v5, v5, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v7

    invoke-static {v5, v6, v7, v8}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    goto :goto_a9

    .line 177
    :cond_a6
    invoke-interface {v6}, Ljava/lang/Runnable;->run()V

    :cond_a9
    :goto_a9
    if-eqz v3, :cond_f7

    .line 182
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 183
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 184
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mAdditionsList:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    iget-object v5, p0, Lcom/codemao/creativecenter/customview/BaseItemAnimator;->mPendingAdditions:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 186
    new-instance v5, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;

    invoke-direct {v5, p0, v3}, Lcom/codemao/creativecenter/customview/BaseItemAnimator$3;-><init>(Lcom/codemao/creativecenter/customview/BaseItemAnimator;Ljava/util/ArrayList;)V

    if-nez v0, :cond_cf

    if-nez v1, :cond_cf

    if-eqz v2, :cond_cb

    goto :goto_cf

    .line 203
    :cond_cb
    invoke-interface {v5}, Ljava/lang/Runnable;->run()V

    goto :goto_f7

    :cond_cf
    :goto_cf
    const-wide/16 v6, 0x0

    if-eqz v0, :cond_d8

    .line 196
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getRemoveDuration()J

    move-result-wide v8

    goto :goto_d9

    :cond_d8
    move-wide v8, v6

    :goto_d9
    if-eqz v1, :cond_e0

    .line 197
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getMoveDuration()J

    move-result-wide v0

    goto :goto_e1

    :cond_e0
    move-wide v0, v6

    :goto_e1
    if-eqz v2, :cond_e7

    .line 198
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;->getChangeDuration()J

    move-result-wide v6

    .line 199
    :cond_e7
    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    add-long/2addr v8, v0

    .line 200
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    iget-object v0, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 201
    invoke-static {v0, v5, v8, v9}, Landroidx/core/view/ViewCompat;->postOnAnimationDelayed(Landroid/view/View;Ljava/lang/Runnable;J)V

    :cond_f7
    :goto_f7
    return-void
.end method
