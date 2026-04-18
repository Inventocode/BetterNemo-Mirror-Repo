.class Lcom/codemao/nemo/util/ReworkHelper$6;
.super Ljava/lang/Object;
.source "ReworkHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/util/ReworkHelper;->enter()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/util/ReworkHelper;

.field final synthetic val$reWorkSuccessDialog:Lcom/codemao/nemo/view/ReWorkSuccessDialog;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/util/ReworkHelper;Lcom/codemao/nemo/view/ReWorkSuccessDialog;)V
    .registers 3

    .line 265
    iput-object p1, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    iput-object p2, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->val$reWorkSuccessDialog:Lcom/codemao/nemo/view/ReWorkSuccessDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .line 268
    iget-object v0, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->val$reWorkSuccessDialog:Lcom/codemao/nemo/view/ReWorkSuccessDialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    const-wide/16 v0, 0xc8

    .line 270
    :try_start_7
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_a} :catch_b

    goto :goto_f

    :catch_b
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 274
    :goto_f
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    const/4 v1, 0x1

    .line 275
    iput v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 276
    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1400(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 277
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v2}, Lcom/codemao/nemo/util/ReworkHelper;->access$1400(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v2}, Lcom/codemao/nemo/util/BcmHelper;->getPrefixPart(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".bcm"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->srcPath:Ljava/lang/String;

    .line 278
    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1400(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    iget-boolean v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, v1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 279
    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$1400(Lcom/codemao/nemo/util/ReworkHelper;)Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    iget-object v1, v1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->work_id:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    .line 280
    iget-object v1, p0, Lcom/codemao/nemo/util/ReworkHelper$6;->this$0:Lcom/codemao/nemo/util/ReworkHelper;

    invoke-static {v1}, Lcom/codemao/nemo/util/ReworkHelper;->access$400(Lcom/codemao/nemo/util/ReworkHelper;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    return-void
.end method
