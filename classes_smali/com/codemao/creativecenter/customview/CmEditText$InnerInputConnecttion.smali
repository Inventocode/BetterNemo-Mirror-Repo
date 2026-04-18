.class Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;
.super Landroid/view/inputmethod/InputConnectionWrapper;
.source "CmEditText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codemao/creativecenter/customview/CmEditText;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "InnerInputConnecttion"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/customview/CmEditText;


# direct methods
.method public constructor <init>(Lcom/codemao/creativecenter/customview/CmEditText;Landroid/view/inputmethod/InputConnection;Z)V
    .registers 4

    .line 87
    iput-object p1, p0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;->this$0:Lcom/codemao/creativecenter/customview/CmEditText;

    .line 88
    invoke-direct {p0, p2, p3}, Landroid/view/inputmethod/InputConnectionWrapper;-><init>(Landroid/view/inputmethod/InputConnection;Z)V

    return-void
.end method


# virtual methods
.method public commitText(Ljava/lang/CharSequence;I)Z
    .registers 7

    .line 102
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;->this$0:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmEditText;->access$000(Lcom/codemao/creativecenter/customview/CmEditText;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_14

    .line 103
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;->this$0:Lcom/codemao/creativecenter/customview/CmEditText;

    iget-object v0, v0, Lcom/codemao/creativecenter/customview/CmEditText;->filter:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_14

    return v1

    .line 108
    :cond_14
    iget-object v0, p0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;->this$0:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-static {v0}, Lcom/codemao/creativecenter/customview/CmEditText;->access$100(Lcom/codemao/creativecenter/customview/CmEditText;)Z

    move-result v0

    if-eqz v0, :cond_3f

    .line 109
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getLength(Ljava/lang/String;)I

    move-result v0

    iget-object v2, p0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;->this$0:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->getLength(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/codemao/creativecenter/customview/CmEditText$InnerInputConnecttion;->this$0:Lcom/codemao/creativecenter/customview/CmEditText;

    invoke-static {v3}, Lcom/codemao/creativecenter/customview/CmEditText;->access$200(Lcom/codemao/creativecenter/customview/CmEditText;)I

    move-result v3

    sub-int/2addr v2, v3

    add-int/2addr v0, v2

    const/16 v2, 0x10

    if-le v0, v2, :cond_3f

    return v1

    .line 116
    :cond_3f
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->commitText(Ljava/lang/CharSequence;I)Z

    move-result p1

    return p1
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .registers 2

    .line 121
    invoke-super {p0, p1}, Landroid/view/inputmethod/InputConnectionWrapper;->sendKeyEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public setSelection(II)Z
    .registers 3

    .line 126
    invoke-super {p0, p1, p2}, Landroid/view/inputmethod/InputConnectionWrapper;->setSelection(II)Z

    move-result p1

    return p1
.end method
