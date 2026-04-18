.class Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$1;
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

    .line 74
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$1;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 77
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$1;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->dismiss()V

    .line 78
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$1;->this$0:Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;->access$000(Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop;)Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/dialog/pop/NewbeeGoCreatePop$GoCreateCallback;->onDissmiss()V

    return-void
.end method
