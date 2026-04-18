.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importPop$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importPop$2;->invoke()Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Ljava/lang/String;",
        "Lcom/codemao/nemo/bean/KnWorkListItem;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importPop$2$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    .line 76
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/codemao/nemo/bean/KnWorkListItem;

    invoke-virtual {p0, p1, p2}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importPop$2$1;->invoke(Ljava/lang/String;Lcom/codemao/nemo/bean/KnWorkListItem;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/String;Lcom/codemao/nemo/bean/KnWorkListItem;)V
    .registers 3

    const-string p2, "name"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importPop$2$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-static {p2, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$onImportWork(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;Ljava/lang/String;)V

    return-void
.end method
