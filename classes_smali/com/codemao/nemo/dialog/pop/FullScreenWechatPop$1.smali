.class Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$1;
.super Ljava/lang/Object;
.source "FullScreenWechatPop.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->initPopupContent()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)V
    .registers 2

    .line 49
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 52
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$1;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-virtual {p1}, Lcom/nemo/commonui/xpopup/core/BasePopupView;->dismiss()V

    return-void
.end method
