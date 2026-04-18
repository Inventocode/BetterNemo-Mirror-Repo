.class Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;
.super Ljava/lang/Object;
.source "FullScreenEditWithCustomKeyboardPop.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->initEditText(Landroid/widget/EditText;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;

.field final synthetic val$edit:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Landroid/widget/EditText;)V
    .registers 3

    .line 101
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;

    iput-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->val$edit:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 114
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->val$edit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_12

    .line 115
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->val$edit:Landroid/widget/EditText;

    const v1, 0x800013

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_19

    .line 117
    :cond_12
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->val$edit:Landroid/widget/EditText;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setGravity(I)V

    .line 119
    :goto_19
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;

    invoke-static {v0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;)Z

    move-result v0

    if-eqz v0, :cond_30

    .line 120
    iget-object v0, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->val$edit:Landroid/widget/EditText;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 121
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;->access$002(Lcom/codemao/creativecenter/pop/FullScreenEditWithCustomKeyboardPop;Z)Z

    :cond_30
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method
