.class final Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$viewModel$2;
.super Lkotlin/jvm/internal/Lambda;
.source "CreateBcmNemoFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$viewModel$2;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;
    .registers 3

    .line 162
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    iget-object v1, p0, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$viewModel$2;->this$0:Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment;

    invoke-direct {v0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;)V

    const-class v1, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    invoke-virtual {v0, v1}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    move-result-object v0

    check-cast v0, Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 162
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/knworklist/CreateBcmNemoFragment$viewModel$2;->invoke()Lcom/codemao/nemo/biz/workpublish/WorkPublishKnVM;

    move-result-object v0

    return-object v0
.end method
