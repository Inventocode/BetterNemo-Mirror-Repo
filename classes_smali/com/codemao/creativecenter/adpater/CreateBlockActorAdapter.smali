.class public Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "CreateBlockActorAdapter.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/EmptyInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;",
        ">;",
        "Lcom/codemao/creativecenter/callback/EmptyInterface;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private counts:Lcom/google/gson/JsonObject;

.field private createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

.field private datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;"
        }
    .end annotation
.end field

.field private delay:I

.field private isClose:Z

.field private isInit:Z

.field private localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

.field private onItemClickListener:Lcom/codemao/creativecenter/callback/OnItemClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativecenter/view/LocalBcmView;Lcom/codemao/creativecenter/callback/OnItemClickListener;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativestore/bean/ActorVO;",
            ">;",
            "Lcom/codemao/creativestore/presenter/CreateUtils;",
            "Lcom/codemao/creativecenter/view/LocalBcmView;",
            "Lcom/codemao/creativecenter/callback/OnItemClickListener;",
            ")V"
        }
    .end annotation

    .line 50
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isInit:Z

    const/4 v0, 0x0

    .line 44
    iput v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->delay:I

    .line 46
    iput-boolean v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isClose:Z

    .line 51
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    .line 52
    iput-object p4, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    .line 53
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->datas:Ljava/util/List;

    .line 54
    iput-object p5, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onItemClickListener:Lcom/codemao/creativecenter/callback/OnItemClickListener;

    .line 55
    iput-object p3, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;)Lcom/codemao/creativecenter/callback/OnItemClickListener;
    .registers 1

    .line 34
    iget-object p0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onItemClickListener:Lcom/codemao/creativecenter/callback/OnItemClickListener;

    return-object p0
.end method

.method static synthetic access$102(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;Z)Z
    .registers 2

    .line 34
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isInit:Z

    return p1
.end method

.method private initSize(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;)V
    .registers 5

    .line 183
    invoke-static {}, Lcom/codemao/creativecenter/utils/CreateConfigManager;->getInstance()Lcom/codemao/creativecenter/utils/CreateConfigManager;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativecenter/utils/CreateConfigManager;->isPad:Z

    if-eqz v0, :cond_48

    .line 184
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    const/high16 v2, 0x42880000  # 68.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 185
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    const/high16 v2, 0x42400000  # 48.0f

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 186
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->iv:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/codemao/creativecenter/utils/CreativeScreenUtils;->dp2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 187
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvDetail:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41600000  # 14.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 188
    iget-object v0, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 189
    iget-object p1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {p1, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_48
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .registers 2

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItemViewType(I)I
    .registers 3

    .line 72
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->hideEnable()Z

    move-result v0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->datas:Ljava/util/List;

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

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 34
    check-cast p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;I)V
    .registers 14

    .line 85
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    return-void

    .line 88
    :cond_8
    invoke-direct {p0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->initSize(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;)V

    .line 89
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    .line 90
    iget-object v2, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_32

    .line 94
    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    goto :goto_33

    :cond_32
    const/4 v2, 0x0

    .line 96
    :goto_33
    iget-object v4, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvName:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 97
    iget-object v4, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->flRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2}, Landroid/widget/RelativeLayout;->setSelected(Z)V

    .line 98
    iget-object v4, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 99
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v5, 0x4

    new-array v6, v5, [Ljava/lang/Object;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getX()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getY()D

    move-result-wide v7

    double-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getRotation()D

    move-result-wide v9

    double-to-int v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x3

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getScale()D

    move-result-wide v9

    double-to-int v7, v9

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v1

    const-string v1, "(%d，%d) %d° %d"

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "%"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 100
    iget-object v4, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvDetail:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvDetail:Landroid/widget/TextView;

    iget-boolean v4, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v4, :cond_96

    goto :goto_97

    :cond_96
    const/4 v5, 0x0

    :goto_97
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v2, :cond_f1

    .line 103
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->counts:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_ce

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_ce

    .line 104
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_nemo_number_of_block_with_num:I

    new-array v5, v8, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->counts:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_e5

    .line 106
    :cond_ce
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/codemao/creativecenter/R$string;->creative_nemo_number_of_block_with_num:I

    new-array v5, v8, [Ljava/lang/Object;

    const-string v6, "0"

    aput-object v6, v5, v3

    invoke-virtual {v2, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 108
    :goto_e5
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    const-string v2, "#FFFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_136

    .line 110
    :cond_f1
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->counts:Lcom/google/gson/JsonObject;

    if-eqz v1, :cond_124

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v1

    if-eqz v1, :cond_124

    .line 111
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->counts:Lcom/google/gson/JsonObject;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/gson/JsonObject;->get(Ljava/lang/String;)Lcom/google/gson/JsonElement;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/gson/JsonElement;->getAsString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_12b

    .line 113
    :cond_124
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    const-string v2, "\n0"

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :goto_12b
    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->tvBlockCount:Landroid/widget/TextView;

    const-string v2, "#FFB8A4FF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 117
    :goto_136
    iget-boolean v1, v0, Lcom/codemao/creativestore/bean/ActorVO;->isBackground:Z

    if-eqz v1, :cond_14c

    .line 118
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->iv:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-static {v0, v1, v2}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadConerCenterCrop(Ljava/lang/String;Landroid/widget/ImageView;I)V

    goto :goto_15b

    .line 120
    :cond_14c
    iget-object v1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getCurrent_style_id()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getStyleUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;->iv:Landroid/widget/ImageView;

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadFitCenter(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 123
    :goto_15b
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;-><init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 134
    iget-boolean v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isInit:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1b4

    if-nez p2, :cond_178

    .line 136
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$2;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$2;-><init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;)V

    const-wide/16 v2, 0x64

    invoke-virtual {p2, v0, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 143
    :cond_178
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x41c80000  # 25.0f

    invoke-virtual {p2, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 144
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setAlpha(F)V

    .line 145
    iget-object p2, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p2}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const-wide/16 v2, 0x12c

    .line 146
    invoke-virtual {p2, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    const/high16 v0, 0x3f800000  # 1.0f

    .line 147
    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    .line 148
    invoke-virtual {p2, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->translationY(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->delay:I

    int-to-long v0, v0

    .line 149
    invoke-virtual {p2, v0, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setStartDelay(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p2

    new-instance v0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$3;-><init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;)V

    .line 150
    invoke-virtual {p2, v0}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setListener(Landroidx/core/view/ViewPropertyAnimatorListener;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 172
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    .line 173
    iget p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->delay:I

    add-int/lit8 p1, p1, 0x11

    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->delay:I

    goto :goto_1cb

    .line 174
    :cond_1b4
    iget-boolean p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isClose:Z

    if-eqz p2, :cond_1cb

    .line 175
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Landroidx/core/view/ViewCompat;->animate(Landroid/view/View;)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    const-wide/16 v2, 0x78

    .line 176
    invoke-virtual {p1, v2, v3}, Landroidx/core/view/ViewPropertyAnimatorCompat;->setDuration(J)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 177
    invoke-virtual {p1, v1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->alpha(F)Landroidx/core/view/ViewPropertyAnimatorCompat;

    move-result-object p1

    .line 178
    invoke-virtual {p1}, Landroidx/core/view/ViewPropertyAnimatorCompat;->start()V

    :cond_1cb
    :goto_1cb
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;
    .registers 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p2, v1, :cond_11

    .line 63
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_edit_empty:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_1d

    .line 65
    :cond_11
    iget-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget v1, Lcom/codemao/creativecenter/R$layout;->creative_item_pop_block_actor:I

    invoke-virtual {p2, v1, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 67
    :goto_1d
    new-instance p2, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;

    invoke-direct {p2, p0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;-><init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;Landroid/view/View;)V

    return-object p2
.end method

.method public quite()V
    .registers 2

    .line 201
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->localBcmView:Lcom/codemao/creativecenter/view/LocalBcmView;

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    return-void
.end method

.method public setClose(Z)V
    .registers 2

    .line 231
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isClose:Z

    return-void
.end method

.method public setCounts(Lcom/google/gson/JsonObject;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->counts:Lcom/google/gson/JsonObject;

    return-void
.end method

.method public setInit(Z)V
    .registers 2

    .line 222
    iput-boolean p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->isInit:Z

    const/4 p1, 0x0

    .line 223
    iput p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->delay:I

    return-void
.end method
