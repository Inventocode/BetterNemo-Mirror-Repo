.class Lcom/codemao/nemo/util/MiaoCodeHelper$8;
.super Ljava/lang/Object;
.source "MiaoCodeHelper.java"

# interfaces
.implements Lcom/giu/xzz/utils/HandlerUtil$HandleBack;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/nemo/util/MiaoCodeHelper;
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

    .line 229
    iput-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 6

    .line 232
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-eq v0, v3, :cond_6f

    if-eq v0, v2, :cond_25

    if-eq v0, v1, :cond_d

    goto/16 :goto_129

    .line 325
    :cond_d
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_129

    .line 326
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    const/4 v0, 0x6

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    goto/16 :goto_129

    .line 313
    :cond_25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    .line 314
    new-instance v0, Lcom/codemao/creativestore/bean/WorksEvent;

    invoke-direct {v0}, Lcom/codemao/creativestore/bean/WorksEvent;-><init>()V

    .line 315
    iput v3, v0, Lcom/codemao/creativestore/bean/WorksEvent;->type:I

    .line 316
    iget-object v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->worksName:Ljava/lang/String;

    iput-object v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->name:Ljava/lang/String;

    .line 317
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

    .line 318
    iget-boolean v1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->have_published_status:Z

    iput-boolean v1, v0, Lcom/codemao/creativestore/bean/WorksEvent;->havePublishStatus:Z

    .line 319
    iget-boolean p1, p1, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->isLandscape:Z

    invoke-virtual {v0, p1}, Lcom/codemao/creativestore/bean/WorksEvent;->setLandscapeStage(Z)V

    .line 320
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1200(Lcom/codemao/nemo/util/MiaoCodeHelper;)Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/BcmHelper;->enter(Landroid/content/Context;Lcom/codemao/creativestore/bean/WorksEvent;)V

    .line 321
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 322
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$800(Lcom/codemao/nemo/util/MiaoCodeHelper;)V

    goto/16 :goto_129

    .line 235
    :cond_6f
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/bean/MiaoCode;->bcm_version:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$500(Lcom/codemao/nemo/util/MiaoCodeHelper;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7e

    return-void

    .line 238
    :cond_7e
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$600(Lcom/codemao/nemo/util/MiaoCodeHelper;)I

    move-result p1

    if-ne p1, v3, :cond_c2

    .line 239
    sget-boolean p1, Lcom/codemao/nemo/util/AppConstants;->HAS_BCM_DOWNLOAD:Z

    if-eqz p1, :cond_94

    .line 240
    invoke-static {}, Lcom/codemao/nemo/MainApplication;->get()Lcom/codemao/nemo/MainApplication;

    move-result-object p1

    const-string v0, "当前有作品在下载中，无法下载该作品，请稍后再试"

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/ToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void

    .line 243
    :cond_94
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/bean/MiaoCode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 244
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$8$1;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper$8;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setShowMiaoCodeCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$ShowMiaoCodeCallback;)V

    .line 283
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1300(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    goto :goto_129

    .line 284
    :cond_c2
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$600(Lcom/codemao/nemo/util/MiaoCodeHelper;)I

    move-result p1

    const/4 v0, 0x2

    const/16 v1, 0x8

    if-ne p1, v0, :cond_fa

    .line 285
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/bean/MiaoCode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 286
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$700(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$2;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$8$2;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper$8;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeDialog;->setNotSupportCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeDialog$NotSupportCallback;)V

    .line 295
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1, v3}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1300(Lcom/codemao/nemo/util/MiaoCodeHelper;Z)V

    goto :goto_129

    .line 296
    :cond_fa
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$600(Lcom/codemao/nemo/util/MiaoCodeHelper;)I

    move-result p1

    if-ne p1, v2, :cond_129

    .line 298
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1400(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {v0}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$100(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/bean/MiaoCode;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/nemo/bean/MiaoCode;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    move-result-object p1

    invoke-virtual {p1, v1}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/util/MiaoCodeHelper$8;->this$0:Lcom/codemao/nemo/util/MiaoCodeHelper;

    invoke-static {p1}, Lcom/codemao/nemo/util/MiaoCodeHelper;->access$1400(Lcom/codemao/nemo/util/MiaoCodeHelper;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/util/MiaoCodeHelper$8$3;-><init>(Lcom/codemao/nemo/util/MiaoCodeHelper$8;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->setNotSupportCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;)V

    :cond_129
    :goto_129
    return-void
.end method
