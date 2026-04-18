.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;
.super Lkotlin/jvm/internal/Lambda;
.source "RecycleBinKnActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1;->onClick(Landroid/view/View;)V
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
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 192
    check-cast p1, Lcom/ljwx/baseapp/response/DataResult;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;->invoke(Lcom/ljwx/baseapp/response/DataResult;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Lcom/ljwx/baseapp/response/DataResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/ljwx/baseapp/response/DataResult<",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 193
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    .line 194
    instance-of p1, p1, Lcom/ljwx/baseapp/response/DataResult$Success;

    if-eqz p1, :cond_12

    .line 195
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity$onClean$1$onClick$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;

    invoke-virtual {p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/RecycleBinKnActivity;->refreshViewOnRefresh()V

    goto :goto_1a

    .line 197
    :cond_12
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const-string/jumbo v0, "清空失败"

    invoke-virtual {p1, v2, v0}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    :goto_1a
    return-void
.end method
