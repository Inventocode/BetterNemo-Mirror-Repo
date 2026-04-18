.class Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;
.super Ljava/lang/Object;
.source "CmKeyboardDiscView.java"

# interfaces
.implements Lcom/codemao/creativecenter/customview/CmAngularView$OnProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)V
    .registers 2

    .line 59
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;->this$0:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChange(I)V
    .registers 4

    .line 62
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;->this$0:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->access$000(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 63
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;->this$0:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->access$000(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onRotation(IZ)V

    :cond_12
    return-void
.end method

.method public onProgressChangeEnd(I)V
    .registers 4

    .line 68
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;->this$0:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->access$000(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    move-result-object v0

    if-eqz v0, :cond_12

    .line 69
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$1;->this$0:Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;->access$000(Lcom/codemao/creativecenter/customview/CmKeyboardDiscView;)Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1}, Lcom/codemao/creativecenter/customview/CmKeyboardDiscView$CmListener;->onRotation(IZ)V

    :cond_12
    return-void
.end method
