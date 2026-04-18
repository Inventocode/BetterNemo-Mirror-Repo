.class Lcom/codemao/nemo/util/MiaoCodeHelper$6;
.super Ljava/lang/Thread;
.source "MiaoCodeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;->closeDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/MiaoCodeHelper;)V
    .registers 2

    .line 171
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$6;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 174
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$6;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$300(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->deleteBcm(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 175
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/event/DeleteBcmEvent;

    iget-object v2, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$6;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v2}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$300(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/codemao/nemo/event/DeleteBcmEvent;-><init>(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    invoke-virtual {v0, v1}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 177
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$6;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$300(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativecenter/utils/bcm/CreativeBcmHelper;->removeDownloadData(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    .line 178
    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$6;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$302(Lcom/codemao/nemo/util/MiaoCodeHelper;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    return-void
.end method
