.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;)V
    .registers 2

    .line 175
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;->this$2:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/gson/JsonObject;)V
    .registers 4

    .line 178
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;->this$2:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    iget-object v0, v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setCounts(Lcom/google/gson/JsonObject;)V

    .line 179
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;->this$2:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;

    iget-object p1, p1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->this$1:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;

    iget-object v0, p1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    iget-object p1, p1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {p1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getScenes()Ljava/util/List;

    move-result-object p1

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1$1;->this$2:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;

    iget v1, v1, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$4$1;->val$position:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/SceneVO;

    invoke-static {v0, p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$300(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/bean/SceneVO;)V

    return-void
.end method
