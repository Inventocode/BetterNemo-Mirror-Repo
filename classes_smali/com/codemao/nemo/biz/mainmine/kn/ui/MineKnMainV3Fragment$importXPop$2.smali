.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importXPop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnMainV3Fragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/lxj/xpopup/core/BasePopupView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importXPop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/lxj/xpopup/core/BasePopupView;
    .registers 3

    .line 81
    new-instance v0, Lcom/lxj/xpopup/XPopup$Builder;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importXPop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/lxj/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 82
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v0

    .line 84
    sget-object v1, Lcom/lxj/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/lxj/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/XPopup$Builder;->popupAnimation(Lcom/lxj/xpopup/enums/PopupAnimation;)Lcom/lxj/xpopup/XPopup$Builder;

    move-result-object v0

    .line 85
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importXPop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;

    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;->access$getImportPop(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment;)Lcom/codemao/nemo/dialog/pop/ImportWorkFloatInputPop;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/lxj/xpopup/XPopup$Builder;->asCustom(Lcom/lxj/xpopup/core/BasePopupView;)Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 80
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnMainV3Fragment$importXPop$2;->invoke()Lcom/lxj/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method
