.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/nemo/bean/NemoWorkListItem;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/bean/NemoWorkListItem;Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;I)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iput p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$position:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 719
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 4

    .line 720
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3d

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    iget v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3d

    .line 721
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    iget-object v0, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->coverPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/codemao/nemo/util/CallUtil;->cancelUploadById(Ljava/lang/String;)V

    .line 722
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v0}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v0

    iput v1, v0, Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;->uploadStatus:I

    .line 723
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-static {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$isPositionUpdateOrRefresh(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/nemo/bean/NemoWorkListItem;)I

    .line 724
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$data:Lcom/codemao/nemo/bean/NemoWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/NemoWorkListItem;->getOld()Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    move-result-object v1

    iget v2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$uploadWork$1$1;->$position:I

    invoke-static {v0, v1, v2}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$postUploadBcmEvent(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :cond_3d
    return-void
.end method
