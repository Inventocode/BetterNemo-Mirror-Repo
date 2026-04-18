.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$4;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoPublishedFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->commonStep2InitView()V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$4;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 124
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$4;->invoke()V

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object v0
.end method

.method public final invoke()V
    .registers 3

    .line 125
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment$commonStep2InitView$4;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;->access$getMViewModel(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoPublishedFragment;)Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/biz/mainmine/nemo/data/MineNemoVM;->getPublishedData(Z)V

    return-void
.end method
