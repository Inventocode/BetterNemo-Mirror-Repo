.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->onImportWork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Ljava/lang/Boolean;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $url:Ljava/lang/String;

.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    iput-object p2, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;->$url:Ljava/lang/String;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 2

    .line 296
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;->invoke(Ljava/lang/Boolean;)V

    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p1
.end method

.method public final invoke(Ljava/lang/Boolean;)V
    .registers 6

    .line 297
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/ljwx/baseapp/page/IPagePopLoading$DefaultImpls;->dismissPopLoading$default(Lcom/ljwx/baseapp/page/IPagePopLoading;ZILjava/lang/Object;)V

    const-string v0, "it"

    .line 298
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1b

    .line 299
    iget-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$onImportWork$1;->$url:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$goCreatePage(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;Ljava/lang/String;)V

    goto :goto_24

    .line 301
    :cond_1b
    sget-object p1, Lcom/codemao/nemo/util/ToastCustom;->INSTANCE:Lcom/codemao/nemo/util/ToastCustom;

    const/4 v0, 0x3

    const-string/jumbo v1, "无效的链接"

    invoke-virtual {p1, v0, v1}, Lcom/codemao/nemo/util/ToastCustom;->showTop(ILjava/lang/CharSequence;)V

    :goto_24
    return-void
.end method
