.class public Lcom/codemao/creativecenter/adpater/CurrentAdapters;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CurrentAdapters.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private activity:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private bgHeight:I

.field private bgView:Landroid/view/View;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private lastSelView:Landroid/view/View;

.field private mdatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

.field private time:I


# direct methods
.method public constructor <init>(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/pop/CurrentActorsPop;)V
    .registers 5

    .line 52
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    const/16 v0, 0xc8

    .line 49
    iput v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    .line 53
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 54
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 55
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)Landroid/view/View;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/creativecenter/adpater/CurrentAdapters;Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 3

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->updateBgLayout(Landroid/animation/ValueAnimator;Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)Lcom/codemao/creativecenter/pop/CurrentActorsPop;
    .registers 1

    .line 36
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    return-object p0
.end method

.method private updateBgLayout(Landroid/animation/ValueAnimator;Landroid/view/View;)V
    .registers 4

    .line 161
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 162
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 163
    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 164
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 219
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result p1

    if-eqz p1, :cond_18

    const/4 p1, 0x2

    return p1

    :cond_18
    const/4 p1, 0x0

    return p1
.end method

.method public getTime()I
    .registers 2

    .line 82
    iget v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    return v0
.end method

.method public init(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V
    .registers 7

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 118
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_30

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    :cond_1b
    :goto_1b
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_31

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/codemao/creativestore/bean/ActorVO;

    .line 120
    invoke-virtual {v3}, Lcom/codemao/creativestore/bean/ActorVO;->isHidden_in_edit()Z

    move-result v3

    if-eqz v3, :cond_1b

    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    :cond_30
    const/4 v2, 0x0

    .line 125
    :cond_31
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgView:Landroid/view/View;

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const/high16 v0, 0x42400000  # 48.0f

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result p1

    .line 129
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result p2

    .line 131
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v2

    mul-int v0, v0, p1

    iput v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgHeight:I

    if-le v0, p2, :cond_59

    .line 133
    iput p2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgHeight:I

    .line 135
    :cond_59
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    iget-object p1, p1, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->ll_current_actor:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/4 p2, 0x0

    .line 136
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget p2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v2, p2

    .line 137
    invoke-virtual {p1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 138
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 140
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    iget-object p1, p1, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->fl_header:Landroid/widget/FrameLayout;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 p2, 0x3f800000  # 1.0f

    .line 141
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v2, v0

    .line 142
    invoke-virtual {p1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 143
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    const/4 p1, 0x2

    new-array p1, p1, [I

    aput v1, p1, v1

    .line 145
    iget v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgHeight:I

    const/4 v1, 0x1

    aput v0, p1, v1

    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    add-int/lit8 v0, v0, 0x32

    int-to-long v0, v0

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object p1

    .line 146
    new-instance v0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters$1;-><init>(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)V

    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 153
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->start()V

    .line 154
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 155
    invoke-virtual {p1, p2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget p2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v0, p2

    .line 156
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 157
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 36
    check-cast p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;I)V
    .registers 6

    .line 87
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    return-void

    .line 90
    :cond_8
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 93
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getCurrentActorId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3e

    .line 94
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->sel_bg:Landroid/view/View;

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 95
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->sel_bg:Landroid/view/View;

    iput-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->lastSelView:Landroid/view/View;

    goto :goto_44

    .line 97
    :cond_3e
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->sel_bg:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 101
    :goto_44
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne p2, v1, :cond_56

    .line 102
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->sel_bg:Landroid/view/View;

    sget v1, Lcom/codemao/creativecenter/R$drawable;->creative_shape_dance_actor_list_select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_61

    .line 104
    :cond_56
    iget-object p2, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->sel_bg:Landroid/view/View;

    const-string v1, "#999A52EA"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 107
    :goto_61
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/bumptech/glide/Glide;->with(Landroid/content/Context;)Lcom/bumptech/glide/RequestManager;

    move-result-object p2

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestManager;->load(Ljava/lang/String;)Lcom/bumptech/glide/RequestBuilder;

    move-result-object p2

    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->iv_actor_header:Landroid/widget/ImageView;

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/RequestBuilder;->into(Landroid/widget/ImageView;)Lcom/bumptech/glide/request/target/ViewTarget;

    .line 108
    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;->tv_actor_name:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 5

    .line 224
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 227
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentScene()Lcom/codemao/creativestore/bean/SceneVO;

    move-result-object v1

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/bean/SceneVO;->setCurrentActorId(Ljava/lang/String;)V

    .line 229
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->activity:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->refreshCutActorView()V

    .line 233
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->lastSelView:Landroid/view/View;

    if-eqz v0, :cond_3f

    .line 234
    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v1, 0x0

    .line 235
    invoke-virtual {v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v1, v1

    .line 236
    invoke-virtual {v0, v1, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 241
    :cond_3f
    sget v0, Lcom/codemao/creativecenter/R$id;->sel_bg:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const/high16 v0, 0x3f800000  # 1.0f

    .line 242
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v0, v0

    .line 243
    invoke-virtual {p1, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    new-instance v0, Lcom/codemao/creativecenter/adpater/CurrentAdapters$3;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters$3;-><init>(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)V

    .line 244
    invoke-virtual {p1, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_13

    .line 62
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_empty:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_21

    .line 64
    :cond_13
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_fullscreen_actor_list:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 66
    :goto_21
    new-instance p2, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CurrentAdapters$ViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/CurrentAdapters;Landroid/view/View;)V

    return-object p2
.end method

.method public quite()V
    .registers 6

    .line 171
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_8
    if-ltz v0, :cond_15

    .line 172
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->mdatas:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 173
    invoke-virtual {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRemoved(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 177
    :cond_15
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->fl_header:Landroid/widget/FrameLayout;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/4 v2, 0x0

    .line 178
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v3, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v3, v3

    .line 179
    invoke-virtual {v0, v3, v4}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 180
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 182
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgView:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 183
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v2, v2

    .line 184
    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 185
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 187
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->pop:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->ll_current_actor:Landroid/view/View;

    invoke-static {v0}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    const/high16 v2, 0x3f800000  # 1.0f

    .line 188
    invoke-virtual {v0, v2}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    iget v2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v2, v2

    .line 189
    invoke-virtual {v0, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object v0

    .line 190
    invoke-virtual {v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 192
    iget v2, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->bgHeight:I

    const/4 v3, 0x0

    aput v2, v0, v3

    aput v3, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    iget v1, p0, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->time:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    .line 193
    new-instance v1, Lcom/codemao/creativecenter/adpater/CurrentAdapters$2;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/adpater/CurrentAdapters$2;-><init>(Lcom/codemao/creativecenter/adpater/CurrentAdapters;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 203
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method
