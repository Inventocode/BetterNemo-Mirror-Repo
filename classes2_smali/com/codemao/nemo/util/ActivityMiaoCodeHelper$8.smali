.class Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;
.super Ljava/lang/Object;
.source "ActivityMiaoCodeHelper.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)V
    .registers 2

    .line 260
    iput-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    .line 263
    iget-object v0, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object v0

    if-nez v0, :cond_9

    return-void

    .line 266
    :cond_9
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_29

    const/4 p1, 0x4

    if-eq v0, p1, :cond_12

    goto :goto_6d

    .line 279
    :cond_12
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_6d

    .line 280
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    goto :goto_6d

    .line 268
    :cond_29
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 269
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x1

    .line 270
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 271
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 272
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 273
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    .line 274
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 275
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$1000(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    .line 276
    iget-object p1, p0, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/ActivityMiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    :cond_6d
    :goto_6d
    return-void
.end method
