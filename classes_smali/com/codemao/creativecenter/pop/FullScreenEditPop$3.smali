.class Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;
.super Ljava/lang/Object;
.source "FullScreenEditPop.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/creativecenter/pop/FullScreenEditPop;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;


# direct methods
.method constructor <init>(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)V
    .registers 2

    .line 238
    iput-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 242
    :cond_3
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$102(Lcom/codemao/creativecenter/pop/FullScreenEditPop;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$202(Lcom/codemao/creativecenter/pop/FullScreenEditPop;I)I

    .line 244
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p2

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    invoke-static {p1, p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$402(Lcom/codemao/creativecenter/pop/FullScreenEditPop;I)I

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    :cond_3
    const/4 p2, 0x1

    .line 251
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p3

    const/16 p4, 0xa

    if-eq p3, p4, :cond_47

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p3

    const/16 p4, 0xb

    if-eq p3, p4, :cond_47

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p3

    const/16 p4, 0xc

    if-ne p3, p4, :cond_23

    goto :goto_47

    .line 253
    :cond_23
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p3

    const/16 p4, 0xd

    if-ne p3, p4, :cond_36

    .line 254
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->isBlockFoldName(Ljava/lang/String;)Z

    move-result p2

    goto :goto_4f

    .line 255
    :cond_36
    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$500(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p3

    if-nez p3, :cond_4f

    .line 256
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->isAcotorName(Ljava/lang/String;)Z

    move-result p2

    goto :goto_4f

    .line 252
    :cond_47
    :goto_47
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/codemao/creativestore/utils/CreativeStringUtil;->isHanshu(Ljava/lang/String;)Z

    move-result p2

    :cond_4f
    :goto_4f
    if-nez p2, :cond_c0

    .line 259
    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_6a

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$600(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6a

    return-void

    .line 263
    :cond_6a
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$700(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$100(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 266
    :try_start_88
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$200(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p2

    iget-object p3, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p3}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$400(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Landroid/widget/EditText;->setSelection(II)V
    :try_end_9d
    .catch Ljava/lang/Exception; {:try_start_88 .. :try_end_9d} :catch_9e

    goto :goto_b1

    .line 268
    :catch_9e
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$100(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 270
    :goto_b1
    iget-object p1, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p1}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$300(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Lcom/codemao/creativecenter/customview/CmEditText;

    move-result-object p1

    iget-object p2, p0, Lcom/codemao/creativecenter/pop/FullScreenEditPop$3;->this$0:Lcom/codemao/creativecenter/pop/FullScreenEditPop;

    invoke-static {p2}, Lcom/codemao/creativecenter/pop/FullScreenEditPop;->access$700(Lcom/codemao/creativecenter/pop/FullScreenEditPop;)Landroid/text/TextWatcher;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    :cond_c0
    return-void
.end method
