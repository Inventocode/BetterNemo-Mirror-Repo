.class final Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineCommonAppbarFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;->initSearchView(Landroid/view/View;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroid/view/View;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment<",
            "TBinding;TBindingPad;TViewModel;>;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 47
    check-cast p1, Landroid/view/View;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$1;->invoke(Landroid/view/View;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Landroid/view/View;)V
    .registers 5

    const-string v0, "$this$singleClick"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    const-string/jumbo v0, "我的-点击搜索"

    .line 48
    invoke-static {v0, p1}, Lcom/codemao/nemo/sdk/stat/StatHelper;->sendNewReportEvent(Ljava/lang/String;[Ljava/lang/String;)V

    .line 50
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment$initSearchView$1;->this$0:Lcom/codemao/nemo/biz/mainmine/v3/MineCommonAppbarFragment;

    const-class v0, Lcom/codemao/nemo/biz/mainmine/search/MineSearchMainActivity;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p1, v0, v1, v2, v1}, Lcom/ljwx/baseapp/page/IPageStartPage$DefaultImpls;->startActivity$default(Lcom/ljwx/baseapp/page/IPageStartPage;Ljava/lang/Class;Ljava/lang/Integer;ILjava/lang/Object;)V

    return-void
.end method
