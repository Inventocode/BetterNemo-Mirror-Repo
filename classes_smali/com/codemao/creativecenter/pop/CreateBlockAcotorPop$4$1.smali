.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->onItemClick(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;I)V
    .registers 3

    .line 170
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    iput p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 173
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setInit(Z)V

    .line 174
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setClose(Z)V

    .line 175
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object v1

    iget v2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->val$position:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/SceneVO;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;

    invoke-direct {v2, p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;)V

    invoke-virtual {v0, v1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActorsBlockCounts(Ljava/lang/String;Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;)V

    return-void
.end method
