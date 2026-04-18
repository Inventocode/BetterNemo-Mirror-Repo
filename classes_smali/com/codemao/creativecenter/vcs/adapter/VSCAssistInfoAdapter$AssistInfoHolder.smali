.class public final Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "VSCAssistInfoAdapter.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AssistInfoHolder"
.end annotation


# instance fields
.field private final clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

.field private final dot:Landroid/view/View;

.field private final ivAvatar:Landroid/widget/ImageView;

.field private final ivDelete:Landroid/widget/ImageView;

.field private final tvName:Landroid/widget/TextView;

.field private final tvTime:Landroid/widget/TextView;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .registers 3

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkParameterIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->view:Landroid/view/View;

    .line 123
    sget v0, Lcom/codemao/creativecenter/R$id;->cl_root:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 124
    sget v0, Lcom/codemao/creativecenter/R$id;->v_assist_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->dot:Landroid/view/View;

    .line 125
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->ivAvatar:Landroid/widget/ImageView;

    .line 126
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->tvName:Landroid/widget/TextView;

    .line 127
    sget v0, Lcom/codemao/creativecenter/R$id;->tv_time:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->tvTime:Landroid/widget/TextView;

    .line 128
    sget v0, Lcom/codemao/creativecenter/R$id;->iv_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->ivDelete:Landroid/widget/ImageView;

    return-void
.end method


# virtual methods
.method public final getClRoot()Landroidx/constraintlayout/widget/ConstraintLayout;
    .registers 2

    .line 123
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->clRoot:Landroidx/constraintlayout/widget/ConstraintLayout;

    return-object v0
.end method

.method public final getDot()Landroid/view/View;
    .registers 2

    .line 124
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->dot:Landroid/view/View;

    return-object v0
.end method

.method public final getIvAvatar()Landroid/widget/ImageView;
    .registers 2

    .line 125
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->ivAvatar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getIvDelete()Landroid/widget/ImageView;
    .registers 2

    .line 128
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->ivDelete:Landroid/widget/ImageView;

    return-object v0
.end method

.method public final getTvName()Landroid/widget/TextView;
    .registers 2

    .line 126
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->tvName:Landroid/widget/TextView;

    return-object v0
.end method

.method public final getTvTime()Landroid/widget/TextView;
    .registers 2

    .line 127
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;->tvTime:Landroid/widget/TextView;

    return-object v0
.end method
