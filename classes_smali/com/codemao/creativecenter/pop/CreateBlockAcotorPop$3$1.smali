.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3$1;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;)V
    .registers 2

    .line 149
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 152
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$000(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/view/LocalBcmView;

    move-result-object v0

    invoke-interface {v0}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    return-void
.end method
