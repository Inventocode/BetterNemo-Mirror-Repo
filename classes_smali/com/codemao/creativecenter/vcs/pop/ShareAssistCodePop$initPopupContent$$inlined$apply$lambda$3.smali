.class final Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;
.super Ljava/lang/Object;
.source "ShareAssistCodePop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;->this$0:Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    .line 71
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;->this$0:Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 72
    sget-object p1, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->INSTANCE:Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;

    .line 73
    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;->this$0:Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;

    invoke-virtual {v0}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->getAssistCode()Ljava/lang/String;

    move-result-object v0

    .line 74
    iget-object v1, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;->this$0:Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;

    invoke-virtual {v1}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->getMApiStore()Lcom/codemao/creativecenter/vcs/api/AssistApiStore;

    move-result-object v1

    .line 75
    iget-object v2, p0, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop$initPopupContent$$inlined$apply$lambda$3;->this$0:Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;

    invoke-virtual {v2}, Lcom/codemao/creativecenter/vcs/pop/ShareAssistCodePop;->getWorkId()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 72
    invoke-virtual {p1, v0, v1, v2, v3}, Lcom/codemao/creativecenter/vcs/utils/VCSAssistCodeHelper;->onShareEvent(Ljava/lang/String;Lcom/codemao/creativecenter/vcs/api/AssistApiStore;Ljava/lang/String;I)V

    return-void
.end method
