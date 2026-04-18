.class Lcom/lxj/xpopup/core/BubbleAttachPopupView$2;
.super Ljava/lang/Object;
.source "BubbleAttachPopupView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lxj/xpopup/core/BubbleAttachPopupView;->doMeasure()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;


# direct methods
.method constructor <init>(Lcom/lxj/xpopup/core/BubbleAttachPopupView;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 71
    iput-object p1, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 74
    iget-object v0, p0, Lcom/lxj/xpopup/core/BubbleAttachPopupView$2;->this$0:Lcom/lxj/xpopup/core/BubbleAttachPopupView;

    invoke-virtual {v0}, Lcom/lxj/xpopup/core/BubbleAttachPopupView;->doAttach()V

    return-void
.end method
