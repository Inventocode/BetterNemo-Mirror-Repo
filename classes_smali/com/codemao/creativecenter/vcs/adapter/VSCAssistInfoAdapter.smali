.class public final Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "VSCAssistInfoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVSCAssistInfoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VSCAssistInfoAdapter.kt\ncom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,155:1\n1819#2,2:156\n1819#2,2:158\n*E\n*S KotlinDebug\n*F\n+ 1 VSCAssistInfoAdapter.kt\ncom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter\n*L\n136#1,2:156\n148#1,2:158\n*E\n"
.end annotation


# instance fields
.field private final ctx:Landroid/content/Context;

.field private final datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;",
            ">;",
            "Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;",
            ")V"
        }
    .end annotation

    const-string v0, "ctx"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "datas"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mListener"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 33
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->ctx:Landroid/content/Context;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->datas:Ljava/util/List;

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->mListener:Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;

    return-void
.end method


# virtual methods
.method public final getCtx()Landroid/content/Context;
    .registers 2

    .line 29
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->ctx:Landroid/content/Context;

    return-object v0
.end method

.method public getItemCount()I
    .registers 2

    .line 119
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->datas:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public final getMListener()Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;
    .registers 2

    .line 31
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->mListener:Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;

    return-object v0
.end method

.method public final hasSelected()Z
    .registers 3

    .line 148
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->datas:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 149
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public final hasUpdate()Z
    .registers 3

    .line 136
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->datas:Ljava/util/List;

    .line 1819
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 137
    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getHasUpdate()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v0, 0x1

    return v0

    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .registers 3

    .line 28
    check-cast p1, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;I)V
    .registers 7

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 48
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->datas:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    .line 49
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->getClRoot()Landroidx/constraintlayout/widget/ConstraintLayout;

    move-result-object v0

    const-string v1, "holder.clRoot"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->isSelected()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 50
    invoke-virtual {p2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getHeadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->getIvAvatar()Landroid/widget/ImageView;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeGlideUtils;->loadRound(Ljava/lang/String;Landroid/widget/ImageView;)V

    .line 51
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->getTvName()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "holder.tvName"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getUserName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->getTvTime()Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "holder.tvTime"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getUpdateTime()J

    move-result-wide v1

    sget v3, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->TIME_SECOND:I

    invoke-static {v1, v2, v3}, Lcom/codemao/creativecenter/utils/CreativeTimeUtil;->formatAssistTime(JI)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->getDot()Landroid/view/View;

    move-result-object v0

    const-string v1, "holder.dot"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getHasUpdate()Z

    move-result v1

    if-eqz v1, :cond_5f

    const/4 v1, 0x0

    goto :goto_61

    :cond_5f
    const/16 v1, 0x8

    :goto_61
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;-><init>(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->getIvDelete()Landroid/widget/ImageView;

    move-result-object p2

    new-instance v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;

    invoke-direct {v0, p0, p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;-><init>(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;)V

    invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .registers 3

    .line 28
    invoke-virtual {p0, p1, p2}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;
    .registers 5

    const-string p2, "parent"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object p2, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->ctx:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 40
    invoke-static {}, Lcom/codemao/creativestore/CreativeStoreUtils;->getInstance()Lcom/codemao/creativestore/CreativeStoreUtils;

    move-result-object v0

    iget-boolean v0, v0, Lcom/codemao/creativestore/CreativeStoreUtils;->ispad:Z

    if-eqz v0, :cond_16

    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_assist_info_pad:I

    goto :goto_18

    :cond_16
    sget v0, Lcom/codemao/creativecenter/R$layout;->creative_item_assist_info:I

    :goto_18
    const/4 v1, 0x0

    .line 39
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 44
    new-instance p2, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    const-string v0, "v"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;-><init>(Landroid/view/View;)V

    return-object p2
.end method
