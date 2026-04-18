.class final Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;
.super Lkotlin/jvm/internal/Lambda;
.source "MineKnContentFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lcom/nemo/commonui/xpopup/core/BasePopupView;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 3

    .line 121
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 122
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->autoOpenSoftInput(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 123
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->moveUpToKeyboard(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 124
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromBottom:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 125
    iget-object v1, p0, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;->this$0:Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;

    invoke-static {v1}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;->access$getRenamePop(Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment;)Lcom/codemao/nemo/dialog/pop/CommonFloatInputPop;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 120
    invoke-virtual {p0}, Lcom/codemao/nemo/biz/mainmine/kn/ui/MineKnContentFragment$renameXPop$2;->invoke()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method
