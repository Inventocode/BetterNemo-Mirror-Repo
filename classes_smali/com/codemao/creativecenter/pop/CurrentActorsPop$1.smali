.class Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;
.super Ljava/lang/Object;
.source "CurrentActorsPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CurrentActorsPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CurrentActorsPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)V
    .registers 2

    .line 79
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;->this$0:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 82
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;->this$0:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->access$200(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)Lcom/codemao/creativecenter/adpater/CurrentAdapters;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;->this$0:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->access$000(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/pop/CurrentActorsPop$1;->this$0:Lcom/codemao/creativecenter/pop/CurrentActorsPop;

    invoke-static {v2}, Lcom/codemao/creativecenter/pop/CurrentActorsPop;->access$100(Lcom/codemao/creativecenter/pop/CurrentActorsPop;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativecenter/adpater/CurrentAdapters;->init(Landroid/view/View;Landroidx/recyclerview/widget/RecyclerView;)V

    return-void
.end method
