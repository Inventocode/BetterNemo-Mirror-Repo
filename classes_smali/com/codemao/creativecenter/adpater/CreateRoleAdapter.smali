.class public Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateRoleAdapter.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/OnItemChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;,
        Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;,
        Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;,
        Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$EmptyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;",
        ">;",
        "Lcom/codemao/creativecenter/callback/OnItemChangeListener;"
    }
.end annotation


# instance fields
.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private currentPosition:I

.field private customObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

.field private final dp12:I

.field private dragEnd:I

.field private dragFrom:I

.field private isLandscapeStage:Z

.field private lastActor:Lcom/codemao/creativestore/bean/ActorVO;

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private volatile showAnim:Z

.field private final transX20:I

.field private final transX4:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;",
            "Lcom/codemao/creativestore/presenter/CreateUtils;",
            ")V"
        }
    .end annotation

    .line 67
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/16 v0, -0x3e7

    .line 59
    iput v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragFrom:I

    .line 60
    iput v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragEnd:I

    const/4 v0, 0x1

    .line 63
    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showAnim:Z

    const-string v0, "layout_inflater"

    .line 69
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 70
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    .line 71
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    const/high16 p2, 0x40800000  # 4.0f

    .line 72
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX4:I

    const/high16 p2, 0x41a00000  # 20.0f

    .line 73
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p2

    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    const/high16 p2, 0x42080000  # 34.0f

    .line 74
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    const/high16 p2, 0x41f00000  # 30.0f

    .line 75
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    const/high16 p2, 0x41400000  # 12.0f

    .line 76
    invoke-static {p1, p2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dp12:I

    .line 77
    invoke-virtual {p3}, Lcom/codemao/creativestore/presenter/CreateUtils;->getWorksEvent()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/WorksEvent;->isLandscapeStage()Z

    move-result p1

    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->isLandscapeStage:Z

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreViews(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreViewsForBackgroundItem(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativecenter/callback/ObserverAction;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->customObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->isLandscapeStage:Z

    return p0
.end method

.method static synthetic access$1200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Ljava/util/List;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1302(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragFrom:I

    return p1
.end method

.method static synthetic access$1500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Landroid/view/LayoutInflater;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method static synthetic access$1700(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    return p0
.end method

.method static synthetic access$400(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/presenter/CreateUtils;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-object p0
.end method

.method static synthetic access$500(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 1

    .line 43
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->lastActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p0
.end method

.method static synthetic access$502(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;)Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 43
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->lastActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object p1
.end method

.method static synthetic access$600(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 3

    .line 43
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    return-void
.end method

.method static synthetic access$700(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)Z
    .registers 1

    .line 43
    iget-boolean p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showAnim:Z

    return p0
.end method

.method static synthetic access$702(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Z)Z
    .registers 2

    .line 43
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showAnim:Z

    return p1
.end method

.method static synthetic access$800(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 4

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V

    return-void
.end method

.method static synthetic access$900(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;)I
    .registers 1

    .line 43
    iget p0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->currentPosition:I

    return p0
.end method

.method static synthetic access$902(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;I)I
    .registers 2

    .line 43
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->currentPosition:I

    return p1
.end method

.method private getCurtainBgAnim(Landroid/view/View;Z)Landroid/animation/AnimatorSet;
    .registers 6

    .line 396
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    const-string v2, "alpha"

    if-eqz p2, :cond_1a

    new-array p2, v1, [F

    .line 399
    fill-array-data p2, :array_2e

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0x12c

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    goto :goto_29

    :cond_1a
    new-array p2, v1, [F

    .line 401
    fill-array-data p2, :array_36

    invoke-static {p1, v2, p2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 403
    :goto_29
    invoke-virtual {v0, p1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_2e
    .array-data 4
        0x0
        0x3f4ccccd  # 0.8f
    .end array-data

    :array_36
    .array-data 4
        0x3f4ccccd  # 0.8f
        0x0
    .end array-data
.end method

.method private getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;
    .registers 8

    .line 386
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 388
    iget v3, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX4:I

    int-to-float v3, v3

    const/4 v4, 0x1

    aput v3, v2, v4

    const-string v3, "translationX"

    invoke-static {p1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v3, 0xc8

    invoke-virtual {v2, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v1, v1, [F

    .line 389
    fill-array-data v1, :array_36

    const-string v5, "alpha"

    invoke-static {p1, v5, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v3, v4}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 391
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    return-object v0

    nop

    :array_36
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;
    .registers 15

    .line 370
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v1, 0x2

    new-array v2, v1, [F

    const/4 v3, 0x0

    const/4 v4, 0x0

    aput v4, v2, v3

    .line 372
    iget v5, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX4:I

    neg-int v5, v5

    int-to-float v5, v5

    const/4 v6, 0x1

    aput v5, v2, v6

    const-string v5, "translationX"

    invoke-static {p1, v5, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v7, 0xc8

    invoke-virtual {v2, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v2

    new-array v9, v1, [F

    .line 373
    iget v10, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX4:I

    neg-int v10, v10

    int-to-float v10, v10

    aput v10, v9, v3

    aput v4, v9, v6

    invoke-static {p1, v5, v9}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v4, 0x64

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-array v4, v1, [F

    .line 374
    fill-array-data v4, :array_7a

    const-string v5, "alpha"

    invoke-static {p1, v5, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v5, 0x12c

    invoke-virtual {v4, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    new-array v5, v1, [F

    .line 375
    fill-array-data v5, :array_82

    const-string v6, "scaleX"

    invoke-static {p1, v6, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    new-array v1, v1, [F

    .line 376
    fill-array-data v1, :array_8a

    const-string v6, "scaleY"

    invoke-static {p1, v6, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    invoke-virtual {p1, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object p1

    .line 379
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 380
    invoke-virtual {v0, p2, p3}, Landroid/animation/AnimatorSet;->setStartDelay(J)V

    return-object v0

    nop

    :array_7a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_82
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_8a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private hideMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz p3, :cond_f1

    .line 283
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 284
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_fa

    const-string v7, "rotation"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 287
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v7, v5, [F

    fill-array-data v7, :array_102

    const-string v8, "alpha"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v9, 0x96

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 288
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 289
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v11, v5, [F

    iget v12, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v12, v12

    int-to-float v12, v12

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x0

    aput v12, v11, v2

    const-string v14, "translationX"

    invoke-static {v7, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 290
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 292
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    new-array v15, v5, [F

    fill-array-data v15, :array_10a

    invoke-static {v11, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 293
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 294
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    new-array v15, v5, [F

    iget v5, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v15, v13

    aput v12, v15, v2

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 295
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 297
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 298
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 301
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-direct {v0, v5}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 302
    invoke-virtual/range {p2 .. p2}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v6

    if-eqz v6, :cond_a1

    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    goto :goto_a3

    :cond_a1
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    :goto_a3
    invoke-direct {v0, v6}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 303
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    if-gtz v7, :cond_b5

    .line 305
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    .line 307
    :cond_b5
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v8

    sub-int/2addr v8, v7

    iget v7, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dp12:I

    const/4 v9, 0x3

    if-ge v8, v7, :cond_d7

    .line 308
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->moveViewBg:Landroid/view/View;

    invoke-direct {v0, v7, v13}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getCurtainBgAnim(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v7

    const/4 v8, 0x4

    new-array v8, v8, [Landroid/animation/Animator;

    aput-object v3, v8, v13

    aput-object v5, v8, v2

    const/4 v10, 0x2

    aput-object v6, v8, v10

    aput-object v7, v8, v9

    .line 309
    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_e3

    :cond_d7
    const/4 v10, 0x2

    new-array v7, v9, [Landroid/animation/Animator;

    aput-object v3, v7, v13

    aput-object v5, v7, v2

    aput-object v6, v7, v10

    .line 311
    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 314
    :goto_e3
    new-instance v3, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;

    move-object/from16 v5, p2

    invoke-direct {v3, v0, v5, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$2;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 340
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_f6

    :cond_f1
    move-object/from16 v5, p2

    .line 343
    invoke-direct/range {p0 .. p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreViewsForBackgroundItem(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 345
    :goto_f6
    iput-boolean v2, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showAnim:Z

    return-void

    nop

    :array_fa
    .array-data 4
        0x42b40000  # 90.0f
        0x0
    .end array-data

    :array_102
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_10a
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private hideMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;Z)V
    .registers 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x1

    if-eqz p3, :cond_10f

    .line 193
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 194
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_118

    const-string v7, "rotation"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v6, 0xc8

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 197
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v7, v5, [F

    fill-array-data v7, :array_120

    const-string v8, "alpha"

    invoke-static {v6, v8, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v9, 0x96

    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 198
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 199
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v11, v5, [F

    iget v12, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v12, v12

    int-to-float v12, v12

    const/4 v13, 0x0

    aput v12, v11, v13

    const/4 v12, 0x0

    aput v12, v11, v2

    const-string v14, "translationX"

    invoke-static {v7, v14, v11}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 200
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 202
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    new-array v15, v5, [F

    fill-array-data v15, :array_128

    invoke-static {v11, v8, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 203
    invoke-virtual {v6, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 204
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    new-array v15, v5, [F

    iget v5, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v5, v5

    int-to-float v5, v5

    aput v5, v15, v13

    aput v12, v15, v2

    invoke-static {v11, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v9, v10}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 205
    invoke-virtual {v7, v9, v10}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 207
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 208
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 210
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-direct {v0, v5}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 211
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-direct {v0, v6}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 212
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 213
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-direct {v0, v8}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 214
    invoke-virtual/range {p2 .. p2}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v9

    if-eqz v9, :cond_b3

    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    goto :goto_b5

    :cond_b3
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    :goto_b5
    invoke-direct {v0, v9}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconHideAnim(Landroid/view/View;)Landroid/animation/AnimatorSet;

    move-result-object v9

    .line 215
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v11}, Landroid/widget/ImageView;->getRight()I

    move-result v11

    sub-int/2addr v10, v11

    iget v11, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dp12:I

    const/4 v14, 0x4

    const/4 v15, 0x3

    const/4 v12, 0x6

    if-ge v10, v11, :cond_ec

    .line 216
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->moveViewBg:Landroid/view/View;

    invoke-direct {v0, v10, v13}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getCurtainBgAnim(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v10

    const/4 v11, 0x7

    new-array v11, v11, [Landroid/animation/Animator;

    aput-object v3, v11, v13

    aput-object v5, v11, v2

    const/16 v17, 0x2

    aput-object v6, v11, v17

    aput-object v7, v11, v15

    aput-object v8, v11, v14

    const/16 v16, 0x5

    aput-object v9, v11, v16

    aput-object v10, v11, v12

    .line 217
    invoke-virtual {v4, v11}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_101

    :cond_ec
    const/16 v16, 0x5

    const/16 v17, 0x2

    new-array v10, v12, [Landroid/animation/Animator;

    aput-object v3, v10, v13

    aput-object v5, v10, v2

    aput-object v6, v10, v17

    aput-object v7, v10, v15

    aput-object v8, v10, v14

    aput-object v9, v10, v16

    .line 219
    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 221
    :goto_101
    new-instance v3, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$1;

    move-object/from16 v5, p2

    invoke-direct {v3, v0, v5, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V

    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 246
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    goto :goto_114

    :cond_10f
    move-object/from16 v5, p2

    .line 248
    invoke-direct/range {p0 .. p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideMoreViews(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V

    .line 250
    :goto_114
    iput-boolean v2, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->showAnim:Z

    return-void

    nop

    :array_118
    .array-data 4
        0x42b40000  # 90.0f
        0x0
    .end array-data

    :array_120
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data

    :array_128
    .array-data 4
        0x0
        0x3f800000  # 1.0f
    .end array-data
.end method

.method private hideMoreViews(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    .line 255
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 257
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 258
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 260
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 261
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    invoke-virtual {p2, v0}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 264
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 265
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 266
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 267
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 268
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 269
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 271
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->moveViewBg:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private hideMoreViewsForBackgroundItem(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 5

    .line 351
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setRotation(F)V

    .line 352
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    const/high16 v1, 0x3f800000  # 1.0f

    invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 353
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setTranslationX(F)V

    .line 355
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 356
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 361
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 362
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 363
    iget-object p2, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    invoke-virtual {p0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->hideIcon(Landroid/view/View;)V

    .line 365
    iget-object p1, p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->moveViewBg:Landroid/view/View;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private showMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 495
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 497
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 498
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_106

    const-string v7, "rotation"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 499
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivMore:Landroid/widget/ImageView;

    new-array v8, v5, [F

    fill-array-data v8, :array_10e

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 503
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v8, v5, [F

    fill-array-data v8, :array_116

    const-string v9, "alpha"

    invoke-static {v7, v9, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v7

    const-wide/16 v10, 0x96

    invoke-virtual {v7, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v7

    .line 504
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v12, v5, [F

    const/4 v13, 0x0

    const/4 v14, 0x0

    aput v14, v12, v13

    iget v15, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v15, v15

    int-to-float v15, v15

    const/4 v13, 0x1

    aput v15, v12, v13

    const-string v15, "translationX"

    invoke-static {v8, v15, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 506
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    new-array v13, v5, [F

    fill-array-data v13, :array_11e

    invoke-static {v12, v9, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    invoke-virtual {v9, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 507
    iget-object v12, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->tvTitle:Landroid/widget/TextView;

    new-array v13, v5, [F

    const/16 v16, 0x0

    aput v14, v13, v16

    iget v14, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v14, v14

    int-to-float v14, v14

    const/16 v17, 0x1

    aput v14, v13, v17

    invoke-static {v12, v15, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 510
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 513
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    const-wide/16 v6, 0x75

    invoke-direct {v0, v4, v6, v7}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 514
    invoke-virtual/range {p2 .. p2}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v8

    if-eqz v8, :cond_ae

    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivProgress:Landroid/widget/ProgressBar;

    goto :goto_b0

    :cond_ae
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivCollect:Landroid/widget/ImageView;

    :goto_b0
    invoke-direct {v0, v8, v6, v7}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 515
    new-instance v7, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$4;

    move-object/from16 v8, p2

    invoke-direct {v7, v0, v8, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$4;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;)V

    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 552
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    if-gtz v7, :cond_cc

    .line 554
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivShow:Lcom/codemao/creativecenter/customview/CreativeRoundStrokeImageView2;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getRight()I

    move-result v7

    .line 556
    :cond_cc
    iget-object v8, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->ivDel:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLeft()I

    move-result v8

    sub-int/2addr v8, v7

    iget v7, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dp12:I

    const/4 v9, 0x3

    if-ge v8, v7, :cond_f4

    .line 557
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->moveViewBg:Landroid/view/View;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/view/View;->setVisibility(I)V

    .line 558
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;->moveViewBg:Landroid/view/View;

    const/4 v7, 0x1

    invoke-direct {v0, v1, v7}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getCurtainBgAnim(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v10, 0x4

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v3, v10, v8

    aput-object v4, v10, v7

    aput-object v6, v10, v5

    aput-object v1, v10, v9

    .line 559
    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_101

    :cond_f4
    const/4 v7, 0x1

    const/4 v8, 0x0

    new-array v1, v9, [Landroid/animation/Animator;

    aput-object v3, v1, v8

    aput-object v4, v1, v7

    aput-object v6, v1, v5

    .line 561
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 563
    :goto_101
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_106
    .array-data 4
        0x0
        0x42ce0000  # 103.0f
    .end array-data

    :array_10e
    .array-data 4
        0x42ce0000  # 103.0f
        0x42b40000  # 90.0f
    .end array-data

    :array_116
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_11e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method

.method private showMoreAnim(Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 417
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 419
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 420
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    const/4 v5, 0x2

    new-array v6, v5, [F

    fill-array-data v6, :array_12e

    const-string v7, "rotation"

    invoke-static {v4, v7, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 421
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivMore:Landroid/widget/ImageView;

    new-array v8, v5, [F

    fill-array-data v8, :array_136

    invoke-static {v6, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    const-wide/16 v7, 0x64

    invoke-virtual {v6, v7, v8}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 425
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v10, v5, [F

    fill-array-data v10, :array_13e

    const-string v11, "alpha"

    invoke-static {v9, v11, v10}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v9

    const-wide/16 v12, 0x96

    invoke-virtual {v9, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v9

    .line 426
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivVisible2:Landroid/widget/ImageView;

    new-array v14, v5, [F

    const/4 v15, 0x0

    const/16 v16, 0x0

    aput v16, v14, v15

    iget v7, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v7, v7

    int-to-float v7, v7

    const/4 v8, 0x1

    aput v7, v14, v8

    const-string v7, "translationX"

    invoke-static {v10, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v10

    invoke-virtual {v10, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v10

    .line 428
    iget-object v14, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    new-array v8, v5, [F

    fill-array-data v8, :array_146

    invoke-static {v14, v11, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v8

    invoke-virtual {v8, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v8

    .line 429
    iget-object v11, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->text:Landroid/widget/LinearLayout;

    new-array v14, v5, [F

    aput v16, v14, v15

    iget v5, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->transX20:I

    neg-int v5, v5

    int-to-float v5, v5

    const/16 v17, 0x1

    aput v5, v14, v17

    invoke-static {v11, v7, v14}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v5, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 432
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v10}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v9}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v8}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v6}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 434
    iget-object v4, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    const-wide/16 v5, 0x64

    invoke-direct {v0, v4, v5, v6}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v4

    .line 435
    iget-object v5, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivRename:Landroid/widget/ImageView;

    const-wide/16 v6, 0x75

    invoke-direct {v0, v5, v6, v7}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v5

    .line 436
    iget-object v6, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCopy:Landroid/widget/ImageView;

    const-wide/16 v7, 0x86

    invoke-direct {v0, v6, v7, v8}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v6

    .line 437
    iget-object v7, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivDel:Landroid/widget/ImageView;

    const-wide/16 v8, 0x97

    invoke-direct {v0, v7, v8, v9}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v7

    .line 438
    invoke-virtual/range {p2 .. p2}, Lcom/codemao/creativestore/bean/ActorVO;->isUploading()Z

    move-result v10

    if-eqz v10, :cond_c5

    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivProgress:Landroid/widget/ProgressBar;

    goto :goto_c7

    :cond_c5
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivCollect:Landroid/widget/ImageView;

    :goto_c7
    invoke-direct {v0, v10, v8, v9}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getIconShowAnim(Landroid/view/View;J)Landroid/animation/AnimatorSet;

    move-result-object v8

    .line 439
    new-instance v9, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;

    move-object/from16 v10, p2

    invoke-direct {v9, v0, v10, v1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$3;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativestore/bean/ActorVO;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V

    invoke-virtual {v2, v9}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 478
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShadow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getRight()I

    move-result v9

    if-gtz v9, :cond_e3

    .line 480
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivShow:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->getRight()I

    move-result v9

    .line 482
    :cond_e3
    iget-object v10, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->ivLock:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getLeft()I

    move-result v10

    sub-int/2addr v10, v9

    iget v9, v0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dp12:I

    const/4 v11, 0x5

    const/4 v12, 0x4

    const/4 v13, 0x3

    const/4 v14, 0x6

    if-ge v10, v9, :cond_115

    .line 483
    iget-object v9, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->moveViewBg:Landroid/view/View;

    invoke-virtual {v9, v15}, Landroid/view/View;->setVisibility(I)V

    .line 484
    iget-object v1, v1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;->moveViewBg:Landroid/view/View;

    const/4 v9, 0x1

    invoke-direct {v0, v1, v9}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->getCurtainBgAnim(Landroid/view/View;Z)Landroid/animation/AnimatorSet;

    move-result-object v1

    const/4 v10, 0x7

    new-array v10, v10, [Landroid/animation/Animator;

    aput-object v3, v10, v15

    aput-object v4, v10, v9

    const/16 v16, 0x2

    aput-object v5, v10, v16

    aput-object v6, v10, v13

    aput-object v7, v10, v12

    aput-object v8, v10, v11

    aput-object v1, v10, v14

    .line 485
    invoke-virtual {v2, v10}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    goto :goto_129

    :cond_115
    const/4 v9, 0x1

    const/16 v16, 0x2

    new-array v1, v14, [Landroid/animation/Animator;

    aput-object v3, v1, v15

    aput-object v4, v1, v9

    aput-object v5, v1, v16

    aput-object v6, v1, v13

    aput-object v7, v1, v12

    aput-object v8, v1, v11

    .line 487
    invoke-virtual {v2, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 489
    :goto_129
    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->start()V

    return-void

    nop

    :array_12e
    .array-data 4
        0x0
        0x42ce0000  # 103.0f
    .end array-data

    :array_136
    .array-data 4
        0x42ce0000  # 103.0f
        0x42b40000  # 90.0f
    .end array-data

    :array_13e
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data

    :array_146
    .array-data 4
        0x3f800000  # 1.0f
        0x0
    .end array-data
.end method


# virtual methods
.method public addObserverAction(Lcom/codemao/creativecenter/callback/ObserverAction;)V
    .registers 2

    .line 186
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->customObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    return-void
.end method

.method public getItemCount()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 4

    .line 175
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    .line 176
    iget-boolean v0, p1, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v0, :cond_e

    const/4 p1, 0x1

    return p1

    .line 179
    :cond_e
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_18

    return v1

    .line 182
    :cond_18
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result p1

    if-eqz p1, :cond_1f

    const/4 v1, 0x2

    :cond_1f
    return v1
.end method

.method public getLastActor()Lcom/codemao/creativestore/bean/ActorVO;
    .registers 2

    .line 110
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->lastActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-object v0
.end method

.method public hideIcon(Landroid/view/View;)V
    .registers 3

    const/4 v0, 0x0

    .line 275
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 43
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;I)V
    .registers 5

    .line 97
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 98
    instance-of v1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    if-eqz v1, :cond_12

    .line 99
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    .line 100
    invoke-virtual {p1, v0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;->bindActor(Lcom/codemao/creativestore/bean/ActorVO;I)V

    goto :goto_1c

    .line 101
    :cond_12
    instance-of v1, p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$EmptyHolder;

    if-eqz v1, :cond_17

    goto :goto_1c

    .line 104
    :cond_17
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    .line 105
    invoke-virtual {p1, v0, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;->bindActor(Lcom/codemao/creativestore/bean/ActorVO;I)V

    :goto_1c
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BaseHolder;
    .registers 6

    const/4 v0, 0x0

    if-eqz p2, :cond_26

    const/4 v1, 0x2

    if-eq p2, v1, :cond_16

    .line 89
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_background:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$BackGroundHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditBackgroundBinding;)V

    return-object p2

    .line 85
    :cond_16
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$EmptyHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_empty:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$EmptyHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditEmptyBinding;)V

    return-object p2

    .line 87
    :cond_26
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_role:I

    invoke-static {v1, v2, p1, v0}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter$RoleHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;Lcom/codemao/creativecenter/databinding/CreativeItemEditRoleBinding;)V

    return-object p2
.end method

.method public onFinishDrag()V
    .registers 5

    .line 159
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->customObserver:Lcom/codemao/creativecenter/callback/ObserverAction;

    if-eqz v0, :cond_7

    .line 160
    invoke-interface {v0}, Lcom/codemao/creativecenter/callback/ObserverAction;->finishDrag()V

    .line 165
    :cond_7
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragFrom:I

    iget v2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragEnd:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/codemao/creativestore/presenter/CreateUtils;->changeActorOder(IIZ)V

    const/16 v0, -0x3e7

    .line 166
    iput v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragEnd:I

    return-void
.end method

.method public onItemDrop(I)Z
    .registers 4

    .line 154
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-eq p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return v1
.end method

.method public onItemMoved(II)V
    .registers 6

    if-ge p1, p2, :cond_e

    move v0, p1

    :goto_3
    if-ge v0, p2, :cond_1b

    .line 133
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    move v0, v2

    goto :goto_3

    :cond_e
    move v0, p1

    :goto_f
    if-le v0, p2, :cond_1b

    .line 138
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-static {v1, v0, v2}, Ljava/util/Collections;->swap(Ljava/util/List;II)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_f

    .line 142
    :cond_1b
    invoke-virtual {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemMoved(II)V

    .line 144
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->mdatas:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    iget-boolean p1, p1, Lcom/codemao/creativestore/bean/ActorVO;->isSelected:Z

    if-eqz p1, :cond_2c

    .line 145
    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->currentPosition:I

    .line 148
    :cond_2c
    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->dragEnd:I

    return-void
.end method

.method public setCurrentPosition(I)V
    .registers 2

    .line 170
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->currentPosition:I

    return-void
.end method

.method public setLastActor(Lcom/codemao/creativestore/bean/ActorVO;)V
    .registers 2

    .line 114
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateRoleAdapter;->lastActor:Lcom/codemao/creativestore/bean/ActorVO;

    return-void
.end method

.method public showIcon(Landroid/view/View;)V
    .registers 4

    const/high16 v0, 0x3f800000  # 1.0f

    .line 408
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    const/4 v1, 0x0

    .line 409
    invoke-virtual {p1, v1}, Landroid/view/View;->setTranslationX(F)V

    .line 410
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleX(F)V

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->setScaleY(F)V

    return-void
.end method
