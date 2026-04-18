.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 7

    .line 116
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 120
    :cond_7
    new-instance p1, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 121
    sget-object v0, Lcom/nemo/commonui/xpopup/enums/PopupAnimation;->NoAnimation:Lcom/nemo/commonui/xpopup/enums/PopupAnimation;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->popupAnimation(Lcom/nemo/commonui/xpopup/enums/PopupAnimation;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 122
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 123
    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object p1

    .line 124
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getOriginBcm()Lcom/codemao/creativestore/bean/WorksEvent;

    move-result-object v2

    iget-object v2, v2, Lcom/codemao/creativestore/bean/WorksEvent;->workId:Ljava/lang/String;

    const-string v3, "originBcm.workId"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v3}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getAssistCode$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$2;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {v4}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMApiStore$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/codemao/creativecenter/vcs/api/AssistApiStore;)V

    invoke-virtual {p1, v0}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 125
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
