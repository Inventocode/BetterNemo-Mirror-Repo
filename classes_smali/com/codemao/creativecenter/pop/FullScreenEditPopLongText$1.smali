.class Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;
.super Ljava/lang/Object;
.source "FullScreenEditPopLongText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)V
    .registers 2

    .line 96
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 109
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/EditText;->getLineCount()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_1a

    .line 110
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    const v0, 0x800013

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_25

    .line 112
    :cond_1a
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText$1;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;->access$000(Lcom/codemao/creativecenter/pop/FullScreenEditPopLongText;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    const/16 v0, 0x11

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setGravity(I)V

    :goto_25
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
