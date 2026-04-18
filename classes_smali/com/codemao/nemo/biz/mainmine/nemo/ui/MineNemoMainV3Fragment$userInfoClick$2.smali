.class final Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineNemoMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Landroid/view/View;
    .registers 2

    .line 53
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->access$isPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->access$getMBindingPad(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    move-result-object v0

    goto :goto_15

    :cond_f
    iget-object v0, p0, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;->this$0:Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;

    invoke-static {v0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;->access$getMBinding(Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment;)Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;

    move-result-object v0

    :goto_15
    iget-object v0, v0, Lcom/codemao/nemo/databinding/FragmentMineNemoMainV3Binding;->authorClickArea:Landroid/view/View;

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 53
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/nemo/ui/MineNemoMainV3Fragment$userInfoClick$2;->invoke()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
