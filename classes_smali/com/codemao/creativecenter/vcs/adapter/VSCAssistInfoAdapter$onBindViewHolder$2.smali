.class final Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;
.super Ljava/lang/Object;
.source "VSCAssistInfoAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $holder:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;->this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;->$holder:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 91
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 95
    :cond_7
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;->this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->getMListener()Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$2;->$holder:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;->onDelete(I)V

    return-void
.end method
