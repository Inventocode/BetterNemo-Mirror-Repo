.class Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;
.super Ljava/lang/Object;
.source "CreateBlockActorAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$BaseViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;I)V
    .registers 3

    .line 123
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    iput p2, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    const-wide/16 v0, 0x3e8

    .line 126
    invoke-static {v0, v1}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick(J)Z

    move-result p1

    if-eqz p1, :cond_9

    return-void

    .line 129
    :cond_9
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->access$000(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;)Lcom/codemao/creativecenter/callback/OnItemClickListener;

    move-result-object p1

    if-eqz p1, :cond_1c

    .line 130
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;->this$0:Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->access$000(Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;)Lcom/codemao/creativecenter/callback/OnItemClickListener;

    move-result-object p1

    iget v0, p0, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter$1;->val$position:I

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/callback/OnItemClickListener;->onItemClick(I)V

    :cond_1c
    return-void
.end method
