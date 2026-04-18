.class Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;
.super Ljava/lang/Object;
.source "UploadImgPreviewActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->commit()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)V
    .registers 2

    .line 488
    iput-object p1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 8

    .line 491
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 494
    :try_start_5
    iget-object v1, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v1}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_f} :catch_13a

    const-string v2, "nemo_users_db/"

    if-nez v1, :cond_7f

    .line 495
    :try_start_13
    new-instance v1, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v1}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 496
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 497
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$1100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    .line 498
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_3e

    .line 499
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4, v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-static {v4, v5, v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_6d

    .line 501
    :cond_3e
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v5}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    .line 502
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 503
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_64

    .line 504
    invoke-virtual {v5}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/File;->mkdirs()Z

    .line 507
    :cond_64
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v5}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    move-object v3, v4

    .line 511
    :goto_6d
    invoke-virtual {v3, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    add-int/lit8 v2, v2, 0xe

    .line 512
    invoke-virtual {v3, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 513
    invoke-virtual {v1, v2}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setPath(Ljava/lang/String;)V

    .line 514
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_111

    :cond_7f
    const/4 v1, 0x0

    .line 516
    :goto_80
    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_111

    .line 517
    new-instance v3, Lcom/codemao/creativestore/bean/MaterialActorBean;

    invoke-direct {v3}, Lcom/codemao/creativestore/bean/MaterialActorBean;-><init>()V

    .line 518
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2000(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setName(Ljava/lang/String;)V

    .line 519
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 520
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v5}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v6}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_df

    .line 521
    iget-object v4, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v4}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2500(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v5

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v6}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/util/ArrayList;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2600(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;Landroid/graphics/Bitmap;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto :goto_fd

    .line 523
    :cond_df
    iget-object v5, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v5}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2100(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v6}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    .line 524
    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v6, v4}, Lcom/codemao/creativestore/utils/CreativeFileUtil;->copyFile(Ljava/io/File;Ljava/io/File;)V

    move-object v4, v5

    .line 528
    :goto_fd
    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xe

    .line 529
    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 530
    invoke-virtual {v3, v4}, Lcom/codemao/creativestore/bean/MaterialActorBean;->setPath(Ljava/lang/String;)V

    .line 531
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_10d
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_10d} :catch_13a

    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_80

    .line 541
    :cond_111
    :goto_111
    new-instance v1, Lcom/codemao/creativecenter/event/UploadImgEvent;

    invoke-direct {v1}, Lcom/codemao/creativecenter/event/UploadImgEvent;-><init>()V

    .line 542
    invoke-virtual {v1, v0}, Lcom/codemao/creativecenter/event/UploadImgEvent;->setActorBeans(Ljava/util/List;)V

    .line 543
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    new-instance v2, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;

    iget-object v3, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v3}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$700(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/codemao/creativecenter/event/UploadImgEventWrapper;-><init>(Ljava/lang/String;Lcom/codemao/creativecenter/event/UploadImgEvent;)V

    invoke-virtual {v0, v2}, Lorg/greenrobot/eventbus/EventBus;->post(Ljava/lang/Object;)V

    .line 546
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    iget-object v0, v0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->rlList:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13$1;

    invoke-direct {v1, p0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13$1;-><init>(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_13a
    nop

    .line 535
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    move-result-object v0

    if-eqz v0, :cond_14c

    .line 536
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-static {v0}, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;->access$2800(Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;)Lcom/codemao/creativecenter/pop/CreativeLoadingDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 537
    :cond_14c
    iget-object v0, p0, Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity$13;->this$0:Lcom/codemao/creativecenter/activity/UploadImgPreviewActivity;

    invoke-virtual {v0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/codemao/creativecenter/R$string;->creative_nemo_ide_add_style_fail:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/codemao/creativecenter/utils/CreativeToastUtil;->showDefaultShortToast(Landroid/content/Context;Ljava/lang/CharSequence;)V

    return-void
.end method
