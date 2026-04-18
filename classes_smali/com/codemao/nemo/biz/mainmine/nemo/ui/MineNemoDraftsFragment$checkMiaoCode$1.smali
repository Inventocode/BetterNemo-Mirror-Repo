.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->checkMiaoCode(Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Lcom/ljwx/baseapp/response/DataResult<",
        "+",
        "Ljava/util/List<",
        "+",
        "Ljava/lang/Long;",
        ">;>;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

.field final synthetic $position:I

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iput p3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->$position:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 979
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "+",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;)V"
        }
    .end annotation

    .line 980
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_29

    .line 981
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1f

    invoke-virtual {p1}, Lcom/ljwx/baseapp/response/DataResult$Success;->getData()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1f

    .line 982
    invoke-static {}, Lcom/codemao/nemo/util/BcmHelper;->illeagalLogout()V

    goto :goto_32

    .line 984
    :cond_1f
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->$position:I

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$createMiaoCode(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    goto :goto_32

    .line 987
    :cond_29
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->$data:Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;

    iget v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$checkMiaoCode$1;->$position:I

    invoke-static {p1, v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;->access$createMiaoCode(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;Lcom/codemao/creativecenter/utils/bcm/bean/CreativeCreateData;I)V

    :goto_32
    return-void
.end method
