.class Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$3;
.super Ljava/lang/Object;
.source "CreateBlockActorAdapter.java"

# interfaces
.implements Landroidx/core/view/ViewPropertyAnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$holder:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;)V
    .registers 3

    .line 150
    iput-object p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$3;->val$holder:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/view/View;)V
    .registers 2

    return-void
.end method

.method public onAnimationEnd(Landroid/view/View;)V
    .registers 3

    .line 159
    :try_start_0
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$3;->val$holder:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/high16 v0, 0x3f800000  # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 160
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$3;->val$holder:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;

    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_11

    :catch_11
    return-void
.end method

.method public onAnimationStart(Landroid/view/View;)V
    .registers 2

    return-void
.end method
