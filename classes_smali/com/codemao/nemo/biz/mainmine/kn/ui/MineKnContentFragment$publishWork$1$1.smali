.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->publishWork(Lcom/codemao/nemo/bean/KnWorkListItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/KnWorkListItem;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 494
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .registers 14

    .line 495
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    const/4 v0, 0x2

    if-nez p1, :cond_c

    goto :goto_54

    .line 497
    :cond_c
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_54

    .line 499
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 500
    new-instance v11, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;

    .line 501
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_28

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    goto :goto_2a

    :cond_28
    const-wide/16 v2, -0x1

    :goto_2a
    move-wide v3, v2

    .line 502
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object v5

    .line 503
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getCoverUrl()Ljava/lang/String;

    move-result-object v6

    .line 504
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_url()Ljava/lang/String;

    move-result-object v7

    .line 506
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getPic_need_check_file_url()Ljava/lang/String;

    move-result-object v9

    .line 507
    iget-object v2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v2}, Lcom/codemao/nemo/bean/KnWorkListItem;->getBcm_version()Ljava/lang/String;

    move-result-object v10

    const-string v8, "KN"

    move-object v2, v11

    .line 500
    invoke-direct/range {v2 .. v10}, Lcom/codemao/toolssdk/model/dsbridge/SaveResult;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 498
    invoke-static {p1, v11, v1, v0}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswerKn(Landroid/content/Context;Lcom/codemao/toolssdk/model/dsbridge/SaveResult;ZI)V

    goto/16 :goto_dc

    :cond_54
    :goto_54
    if-nez p1, :cond_58

    goto/16 :goto_dc

    .line 514
    :cond_58
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_dc

    .line 515
    new-instance p1, Landroid/content/Intent;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/codemao/nemo/activity/WorkPublishActivity;

    invoke-direct {p1, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 518
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 521
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getPreview_url()Ljava/lang/String;

    move-result-object v1

    const-string v2, "imagePath"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 522
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v1

    const-string v2, "workId"

    invoke-virtual {p1, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    const-string v1, "type"

    .line 523
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 526
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getPic_need_check_file_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "publish_work_pictures"

    .line 524
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 528
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_url()Ljava/lang/String;

    move-result-object v0

    const-string v1, "publish_work_url"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 529
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->getBcm_version()Ljava/lang/String;

    move-result-object v0

    const-string v1, "publish_work_bcm_version"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 530
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result v0

    const-string v1, "published"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 531
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 532
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "作品列表点击的数据:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$publishWork$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "流程-发布"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_dc
    :goto_dc
    return-void
.end method
