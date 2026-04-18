.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoDraftsFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop<",
        "Lcom/codemao/nemo/bean/NemoWorkListItem;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop<",
            "Lcom/codemao/nemo/bean/NemoWorkListItem;",
            ">;"
        }
    .end annotation

    .line 137
    new-instance v0, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "requireContext()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2$1;

    iget-object v3, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;

    invoke-direct {v2, v3}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2$1;-><init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment;)V

    invoke-direct {v0, v1, v2}, Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;-><init>(Landroid/content/Context;Lkotlin/jvm/functions/Function2;)V

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 136
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoDraftsFragment$renamePop$2;->invoke()Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object v0

    return-object v0
.end method
