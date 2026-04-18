.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVCSAssistInfoPop.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VCSAssistInfoPop.kt\ncom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6\n*L\n1#1,736:1\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 173
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-nez p1, :cond_61

    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$getMAdapter$p(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    move-result-object p1

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->hasSelected()Z

    move-result p1

    if-nez p1, :cond_13

    goto :goto_61

    .line 176
    :cond_13
    new-instance p1, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "取消"

    .line 178
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v0, "确定"

    .line 179
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v0, "是否取消当前应用的协助作品\n并恢复到最初版本"

    .line 180
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string v0, ""

    .line 181
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 182
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$pop$1$1;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$pop$1$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 185
    new-instance v0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;

    invoke-direct {v0, p1, p0}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 191
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 192
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 193
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 194
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 195
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    :cond_61
    :goto_61
    return-void
.end method
