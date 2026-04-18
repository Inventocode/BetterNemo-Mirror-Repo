.class final Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$pop$1$1;
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


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$pop$1$1;->$p:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 2

    .line 183
    iget-object p1, p0, Lcom/codemao/creativecenter/vcs/pop/VCSAssistInfoPop$initPopupContent$6$pop$1$1;->$p:Lcom/codemao/creativecenter/pop/CreateCustomDialogPopOne;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
