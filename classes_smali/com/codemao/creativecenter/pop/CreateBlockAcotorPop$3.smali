.class Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;
.super Ljava/lang/Object;
.source "CreateBlockAcotorPop.java"

# interfaces
.implements Lcom/codemao/creativecenter/callback/OnItemClickListener;


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

    .line 133
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .registers 7

    .line 137
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$200(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->getCurrentPosition()I

    move-result v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentSceneIndex()I

    move-result v1

    const/4 v2, 0x1

    if-eq v0, v1, :cond_30

    .line 138
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentSceneIndex()I

    move-result v1

    iget-object v3, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v3}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$200(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/codemao/creativecenter/adpater/CreateBlockSceneAdapter;->getCurrentPosition()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v3, v2, v4}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectScene(IIZZ)V

    .line 139
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;->setInit(Z)V

    .line 141
    :cond_30
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_96

    if-gez p1, :cond_3f

    goto :goto_96

    .line 146
    :cond_3f
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v0

    if-eqz v0, :cond_83

    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    .line 147
    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v1}, Lcom/codemao/creativestore/presenter/CreateUtils;->getCurrentActor()Lcom/codemao/creativestore/bean/ActorVO;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/ActorVO;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_83

    .line 148
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->val$createUtils:Lcom/codemao/creativestore/presenter/CreateUtils;

    invoke-virtual {v0}, Lcom/codemao/creativestore/presenter/CreateUtils;->getActors()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/codemao/creativestore/bean/ActorVO;

    invoke-virtual {v0, p1, v2}, Lcom/codemao/creativestore/presenter/CreateUtils;->selectActor(Lcom/codemao/creativestore/bean/ActorVO;Z)V

    .line 149
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    new-instance v0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3$1;

    invoke-direct {v0, p0}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3$1;-><init>(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;)V

    const-wide/16 v1, 0xc8

    invoke-virtual {p1, v0, v1, v2}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_8c

    .line 157
    :cond_83
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$000(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/view/LocalBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    .line 161
    :goto_8c
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$100(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/adpater/CreateBlockActorAdapter;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    return-void

    .line 143
    :cond_96
    :goto_96
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop$3;->this$0:Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;->access$000(Lcom/codemao/creativecenter/pop/CreateBlockAcotorPop;)Lcom/codemao/creativecenter/view/LocalBcmView;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/creativecenter/view/LocalBcmView;->hideBlockActor()V

    return-void
.end method
