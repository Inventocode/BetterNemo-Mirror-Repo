.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;
.super Ljava/lang/Object;
.source "VCSAssistInfoPop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic $p:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;)V
    .registers 3

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;->$p:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    iput-object p2, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 186
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;->$p:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 188
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$$special$$inlined$also$lambda$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;

    iget-object p1, p1, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6;->this$0:Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;->access$performRecover(Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop;)V

    return-void
.end method
