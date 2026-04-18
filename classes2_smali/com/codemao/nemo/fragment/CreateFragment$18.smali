.class Lcom/codemao/nemo/fragment/CreateFragment$18;
.super Ljava/lang/Object;
.source "CreateFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/fragment/CreateFragment;->onSearchEvent(Lcom/codemao/nemo/event/SearchEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/fragment/CreateFragment;

.field final synthetic val$searchEvent:Lcom/codemao/nemo/event/SearchEvent;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/fragment/CreateFragment;Lcom/codemao/nemo/event/SearchEvent;)V
    .registers 3

    .line 1465
    iput-object p1, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    iput-object p2, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->val$searchEvent:Lcom/codemao/nemo/event/SearchEvent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 7

    .line 1468
    invoke-static {}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->getBcms()Ljava/util/List;

    move-result-object v0

    .line 1469
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x3

    if-eqz v1, :cond_3a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 1470
    iget-object v4, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iget-object v5, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v5}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3000(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_8

    iget-boolean v4, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isMould:Z

    if-nez v4, :cond_8

    iget v4, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    if-eq v4, v3, :cond_8

    iget v3, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->downloadStatus:I

    if-eq v3, v2, :cond_8

    .line 1471
    iget-object v2, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v2}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8

    :cond_3a
    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    .line 1474
    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->val$searchEvent:Lcom/codemao/nemo/event/SearchEvent;

    iget-object v3, v3, Lcom/codemao/nemo/event/SearchEvent;->keyword:Ljava/lang/String;

    aput-object v3, v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v3}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    const-string v2, "草稿箱"

    aput-object v2, v0, v1

    const-string v1, "搜索页-我的-发起搜索"

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 1475
    invoke-static {}, Lcom/codemao/nemo/bean/AllClickMsgParams;->create()Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    iget-object v4, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v4}, Lcom/codemao/nemo/fragment/CreateFragment;->access$3000(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchName(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v5}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1400(Lcom/codemao/nemo/fragment/CreateFragment;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setWorkCount(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/codemao/nemo/bean/AllClickMsgParams;->setSearchType(Ljava/lang/String;)Lcom/codemao/nemo/bean/AllClickMsgParams;

    move-result-object v0

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/AllClickMsgParams;->map()Ljava/util/Map;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendAllClickReport(Ljava/lang/String;Ljava/util/Map;)V

    .line 1477
    iget-object v0, p0, Lcom/codemao/nemo/fragment/CreateFragment$18;->this$0:Lcom/codemao/nemo/fragment/CreateFragment;

    invoke-static {v0}, Lcom/codemao/nemo/fragment/CreateFragment;->access$1000(Lcom/codemao/nemo/fragment/CreateFragment;)Lcom/giu/xzz/utils/HandlerUtil;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/fragment/CreateFragment$18$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/fragment/CreateFragment$18$1;-><init>(Lcom/codemao/nemo/fragment/CreateFragment$18;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
