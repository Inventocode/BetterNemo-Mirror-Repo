.class Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;
.super Ljava/lang/Object;
.source "FullScreenGuideReworkPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;)V
    .registers 2

    .line 53
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 56
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 57
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 58
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenGuideReworkPop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return-void
.end method
