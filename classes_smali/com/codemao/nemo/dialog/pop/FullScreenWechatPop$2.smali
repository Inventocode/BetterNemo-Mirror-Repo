.class Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;
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

    .line 55
    iput-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .line 58
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$000(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-static {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->access$100(Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 60
    iget-object p1, p0, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop$2;->this$0:Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;

    invoke-virtual {p1}, Lcom/codemao/nemo/dialog/pop/FullScreenWechatPop;->loginByCode()V

    return-void
.end method
