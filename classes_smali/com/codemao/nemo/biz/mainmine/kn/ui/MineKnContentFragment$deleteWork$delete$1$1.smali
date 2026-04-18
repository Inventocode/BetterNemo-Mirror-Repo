.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->deleteWork$delete(Lcom/codemao/nemo/bean/KnWorkListItem;Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
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
        "Ljava/lang/Void;",
        ">;",
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

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 584
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 585
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$dismissLoading(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V

    .line 586
    instance-of v0, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz v0, :cond_36

    .line 587
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    const-string v2, "delete_work_kn"

    invoke-static/range {v1 .. v6}, Lcom/ljwx/baseapp/event/ISendLocalEvent$DefaultImpls;->sendLocalEvent$default(Lcom/ljwx/baseapp/event/ISendLocalEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    .line 588
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x1

    const-string/jumbo v1, "已移至回收站"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    .line 589
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p1}, Lcom/codemao/nemo/bean/KnWorkListItem;->isPublished()Z

    move-result p1

    if-eqz p1, :cond_4f

    .line 590
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    const-string v1, "work_delete_kn"

    invoke-static/range {v0 .. v5}, Lcom/ljwx/baseapp/event/ISendLocalEvent$DefaultImpls;->sendLocalEvent$default(Lcom/ljwx/baseapp/event/ISendLocalEvent;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ILjava/lang/Object;)V

    goto :goto_4f

    .line 593
    :cond_36
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const-string v1, "it"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$deleteWork$delete$1$1;->$data:Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {v1}, Lcom/codemao/nemo/bean/KnWorkListItem;->getWork_id()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_4a

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    goto :goto_4c

    :cond_4a
    const-wide/16 v1, -0x1

    :goto_4c
    invoke-static {v0, p1, v1, v2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$resultFail(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;Lcom/ljwx/baseapp/response/DataResult;J)V

    :cond_4f
    :goto_4f
    return-void
.end method
