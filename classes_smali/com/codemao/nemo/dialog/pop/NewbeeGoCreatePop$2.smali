.class Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;
.super Ljava/lang/Object;
.source "NewbeeGoCreatePop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)V
    .registers 2

    .line 81
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 84
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->access$000(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;->onGoCreate()V

    .line 85
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->access$100(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Landroid/widget/TextView;

    move-result-object p1

    const-string/jumbo v0, "加载中…"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->access$200(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Landroid/widget/ProgressBar;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 87
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$2;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->access$100(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    return-void
.end method
