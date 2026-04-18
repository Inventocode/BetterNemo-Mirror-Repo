.class final Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;
.super Ljava/lang/Object;
.source "BcmProgressPop.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 3

    .line 63
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 64
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-virtual {p1}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->getMListener()Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop$initPopupContent$1;->this$0:Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;->access$getTvBtn$p(Lcom/codemao/creativecenter/vcs/pop/BcmProgressPop;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/codemao/creativecenter/vcs/listener/IBcmProgressPopListener;->onClose(Ljava/lang/String;)V

    return-void
.end method
