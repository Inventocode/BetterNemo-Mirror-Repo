.class Lcom/codemao/creativecenter/pop/SelectSoundPop$2;
.super Ljava/lang/Object;
.source "SelectSoundPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/SelectSoundPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/SelectSoundPop;)V
    .registers 2

    .line 84
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$2;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$2;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$100(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/SelectSoundPop$2;->this$0:Lcom/codemao/creativecenter/pop/SelectSoundPop;

    invoke-static {v1}, Lcom/codemao/creativecenter/pop/SelectSoundPop;->access$000(Lcom/codemao/creativecenter/pop/SelectSoundPop;)Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativecenter/adpater/SelectSoundAdapter;->getCurrentIndex()I

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method
