.class Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;
.super Ljava/lang/Object;
.source "FullScreenGuildVideoPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;)V
    .registers 2

    .line 65
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 68
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;

    invoke-virtual {v0}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    .line 69
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 70
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenGuildVideoPop;)Landroid/view/View$OnClickListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    :cond_16
    return-void
.end method
