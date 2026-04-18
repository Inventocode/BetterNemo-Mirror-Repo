.class final Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;
.super Lkotlin/jvm/internal/Lambda;
.source "IVCSBcmFragment.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;-><init>()V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nIVCSBcmFragment.kt\nKotlin\n*S Kotlin\n*F\n+ 1 IVCSBcmFragment.kt\ncom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2\n*L\n1#1,244:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Lcom/nemo/commonui/xpopup/core/BasePopupView;
    .registers 7

    .line 75
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 76
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 78
    sget-object v1, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->TranslateAlphaFromTop:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 80
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz v1, :cond_3c

    .line 81
    new-instance v2, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;

    const-string v3, "it"

    .line 82
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    iget-object v3, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v3}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistor()Z

    move-result v3

    .line 84
    iget-object v4, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    invoke-virtual {v4}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;->isAssistBcm()Z

    move-result v4

    .line 85
    iget-object v5, p0, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->this$0:Lcom/codemao/creativecenter/vcs/IVCSBcmFragment;

    .line 81
    invoke-direct {v2, v1, v3, v4, v5}, Lcom/codemao/creativecenter/vcs/pop/VCSMenuPop;-><init>(Landroid/content/Context;ZZLcom/codemao/creativecenter/vcs/listener/IVCSMenuListener;)V

    goto :goto_3d

    :cond_3c
    const/4 v2, 0x0

    .line 79
    :goto_3d
    invoke-virtual {v0, v2}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic invoke()Ljava/lang/Object;
    .registers 2

    .line 32
    invoke-virtual {p0}, Lcom/codemao/creativecenter/vcs/IVCSBcmFragment$mTopMenuPopBuilder$2;->invoke()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object v0

    return-object v0
.end method
