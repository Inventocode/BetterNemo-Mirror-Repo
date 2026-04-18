.class Lcom/codemao/nemo/view/MyExpandCardView$1;
.super Ljava/lang/Object;
.source "MyExpandCardView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/MyExpandCardView;->initDownloadView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/MyExpandCardView;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/MyExpandCardView;)V
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$1;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 126
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$1;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$000(Lcom/codemao/nemo/view/MyExpandCardView;)Lcom/codemao/nemo/view/MyExpandCardView$CallBack;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 127
    iget-object p1, p0, Lcom/codemao/nemo/view/MyExpandCardView$1;->this$0:Lcom/codemao/nemo/view/MyExpandCardView;

    invoke-static {p1}, Lcom/codemao/nemo/view/MyExpandCardView;->access$000(Lcom/codemao/nemo/view/MyExpandCardView;)Lcom/codemao/nemo/view/MyExpandCardView$CallBack;

    move-result-object p1

    invoke-interface {p1}, Lcom/codemao/nemo/view/MyExpandCardView$CallBack;->onDownloadCancel()V

    :cond_11
    return-void
.end method
