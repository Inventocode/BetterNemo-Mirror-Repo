.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Lcom/codemao/creativestore/listener/GetActorsBlockCountsCallBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->initData(Lcom/codemao/creativestore/presenter/CreateUtils;Lcom/codemao/creativestore/dsbridge/DWebView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

.field final synthetic val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;Lcom/codemao/creativestore/presenter/CreateUtils;)V
    .registers 3

    .line 193
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/google/gson/JsonObject;)V
    .registers 4

    .line 196
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setCounts(Lcom/google/gson/JsonObject;)V

    .line 197
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$400(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Landroidx/recyclerview/widget/RecyclerView;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 198
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$5;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemRangeChanged(II)V

    return-void
.end method
