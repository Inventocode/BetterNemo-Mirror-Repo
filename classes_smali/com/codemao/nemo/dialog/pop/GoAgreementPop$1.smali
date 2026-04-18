.class Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;
.super Ljava/lang/Object;
.source "GoAgreementPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)V
    .registers 2

    .line 86
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->access$000(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    const-string/jumbo v1, "点击立即前往协议"

    invoke-static {v0, v1}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->access$100(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/dialog/pop/GoAgreementPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/GoAgreementPop;

    invoke-static {v0}, Lcom/codemao/nemo/dialog/pop/GoAgreementPop;->access$000(Lcom/codemao/nemo/dialog/pop/GoAgreementPop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_19
    return-void
.end method
