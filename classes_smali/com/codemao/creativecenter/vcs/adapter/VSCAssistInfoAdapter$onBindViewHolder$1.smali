.class final Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;
.super Ljava/lang/Object;
.source "VSCAssistInfoAdapter.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->onBindViewHolder(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nVSCAssistInfoAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 VSCAssistInfoAdapter.kt\ncom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1\n*L\n1#1,155:1\n*E\n"
.end annotation


# instance fields
.field final synthetic $bean:Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

.field final synthetic $holder:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;)V
    .registers 4

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->$bean:Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    iput-object p3, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->$holder:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    .line 58
    invoke-static {}, Lcn/codemao/android/sketch/utils/UiUtil;->isFastClick()Z

    move-result p1

    if-eqz p1, :cond_7

    return-void

    .line 62
    :cond_7
    invoke-static {}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getInstance()Lcom/codemao/creativecenter/CreativeCenterUtils;

    move-result-object p1

    const-string v0, "CreativeCenterUtils.getInstance()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/codemao/creativecenter/CreativeCenterUtils;->getBcmVersion()Ljava/lang/String;

    move-result-object p1

    .line 63
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->$bean:Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/bean/AssistantInfoBean;->getBcmVersion()Ljava/lang/String;

    move-result-object v0

    .line 61
    invoke-static {p1, v0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->compareVersion(Ljava/lang/String;Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ge p1, v0, :cond_31

    .line 66
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->getMListener()Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->$holder:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$AssistInfoHolder;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v0

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/listener/IAssistorInfoListener;->onChoose(I)V

    return-void

    .line 69
    :cond_31
    new-instance p1, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->getCtx()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;-><init>(Landroid/content/Context;)V

    const-string/jumbo v0, "取消"

    .line 71
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v0, "升级"

    .line 72
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string/jumbo v0, "协作作品版本过高\n升级版本号才能打开作品"

    .line 73
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->titleStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    const-string v0, ""

    .line 74
    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->contentStr(Ljava/lang/String;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 75
    new-instance v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$1;

    invoke-direct {v0, p1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$1;-><init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 78
    sget-object v0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;->INSTANCE:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1$pop$1$2;

    invoke-virtual {p1, v0}, Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    .line 83
    new-instance v0, Lcom/nemo/commonui/xpopup/XPopup$Builder;

    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter$onBindViewHolder$1;->this$0:Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/adapter/VSCAssistInfoAdapter;->getCtx()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnTouchOutside(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->dismissOnBackPressed(Ljava/lang/Boolean;)Lcom/nemo/commonui/xpopup/XPopup$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, p1}, Lcom/nemo/commonui/xpopup/XPopup$Builder;->asCustom(Lcom/nemo/commonui/xpopup/core/BasePopupView;)Lcom/nemo/commonui/xpopup/core/BasePopupView;

    move-result-object p1

    .line 87
    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->show()Lcom/nemo/commonui/xpopup/core/BasePopupView;

    return-void
.end method
