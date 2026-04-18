.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->checkBindInfo(Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
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
.field final synthetic $data:Lcom/codemao/nemo/bean/NemoWorkListItem;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;I)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iput p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->$position:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 762
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->invoke(Ljava/lang/Integer;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Integer;)V
    .registers 6

    .line 763
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    if-nez p1, :cond_b

    goto :goto_11

    .line 764
    :cond_b
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v2, :cond_26

    .line 765
    :goto_11
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$setCurPublishData$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)V

    .line 766
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$getCurPublishData$p(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)Lcom/codemao/nemo/bean/NemoWorkListItem;

    move-result-object v0

    if-nez v0, :cond_21

    goto :goto_26

    :cond_21
    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->$position:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->setTempPosition(I)V

    :cond_26
    :goto_26
    const/4 v0, 0x3

    if-nez p1, :cond_2a

    goto :goto_41

    .line 769
    :cond_2a
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_41

    .line 771
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x2

    .line 773
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    .line 770
    invoke-static {p1, v0, v1, v2}, Lcom/codemao/nemo/activity/LocalWebviewActivity;->goAnswer(Landroid/content/Context;ILcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;Z)V

    goto :goto_55

    :cond_41
    :goto_41
    if-nez p1, :cond_44

    goto :goto_55

    .line 778
    :cond_44
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    if-ne p1, v2, :cond_55

    .line 779
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkBindInfo$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$goPublishActivity(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;)V

    :cond_55
    :goto_55
    return-void
.end method
