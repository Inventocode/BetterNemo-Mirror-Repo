.class Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;
.super Lcom/codemao/creativecenter/utils/Mp3PlayController;
.source "MaterialActorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/codemao/creativecenter/utils/Mp3PlayController<",
        "Lcom/codemao/creativestore/bean/MaterialActorBean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-direct {p0}, Lcom/codemao/creativecenter/utils/Mp3PlayController;-><init>()V

    return-void
.end method


# virtual methods
.method public getUrl(Lcom/codemao/creativestore/bean/MaterialActorBean;)Ljava/lang/String;
    .registers 4

    .line 100
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1c

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1c

    .line 101
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getResourcePathList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1

    .line 103
    :cond_1c
    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getUrl()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public bridge synthetic getUrl(Ljava/lang/Object;)Ljava/lang/String;
    .registers 2

    .line 96
    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->getUrl(Lcom/codemao/creativestore/bean/MaterialActorBean;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onError(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 4

    .line 114
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$200(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    .line 116
    iget-object p1, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$300(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/codemao/creativecenter/R$string;->creative_material_music_play_error:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->onError(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method

.method public onPlay(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 5

    .line 108
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->onPlay(Ljava/lang/Object;)V

    .line 109
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setVoiceName(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object p1

    const-string/jumbo v1, "声音素材页"

    const-string/jumbo v2, "声音素材-试听"

    invoke-virtual {v0, v1, v2, p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public bridge synthetic onPlay(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->onPlay(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method

.method public stop(Lcom/codemao/creativestore/bean/MaterialActorBean;)V
    .registers 6

    .line 121
    invoke-super {p0, p1}, Lcom/codemao/creativecenter/utils/Mp3PlayController;->stop(Ljava/lang/Object;)V

    if-eqz p1, :cond_22

    .line 123
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object v0

    invoke-static {}, Lcom/codemao/creativestore/bean/CreativeReportParams;->create()Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {p1}, Lcom/codemao/creativestore/bean/MaterialActorBean;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/CreativeReportParams;->setVoiceName(Ljava/lang/String;)Lcom/codemao/creativestore/bean/CreativeReportParams;

    move-result-object v1

    invoke-virtual {v1}, Lcom/codemao/creativestore/bean/CreativeReportParams;->map()Ljava/util/Map;

    move-result-object v1

    const-string/jumbo v2, "声音素材页"

    const-string/jumbo v3, "声音素材-暂停"

    invoke-virtual {v0, v2, v3, v1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->sendEventLog(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    .line 124
    :cond_22
    iget-object v0, p0, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->this$0:Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;

    invoke-static {v0}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;->access$200(Lcom/codemao/creativecenter/adpater/MaterialActorAdapter;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    return-void
.end method

.method public bridge synthetic stop(Ljava/lang/Object;)V
    .registers 2

    .line 96
    check-cast p1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-virtual {p0, p1}, Lcom/codemao/creativecenter/adpater/MaterialActorAdapter$2;->stop(Lcom/codemao/creativestore/bean/MaterialActorBean;)V

    return-void
.end method
