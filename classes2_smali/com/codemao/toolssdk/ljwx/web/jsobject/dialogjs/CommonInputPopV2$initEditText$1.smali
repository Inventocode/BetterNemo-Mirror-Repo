.class public final Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;
.super Ljava/lang/Object;
.source "CommonInputPopV2.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->initEditText()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;


# direct methods
.method constructor <init>(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    .line 410
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 3

    .line 422
    iget-object v0, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    if-eqz p1, :cond_9

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_a

    :cond_9
    const/4 p1, 0x0

    :goto_a
    invoke-virtual {v0, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->setContentText(Ljava/lang/String;)V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 412
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getErrorTextV$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroid/widget/TextView;

    move-result-object p1

    const/4 p2, 0x0

    if-eqz p1, :cond_10

    invoke-virtual {p1}, Landroid/widget/TextView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_10

    const/4 p2, 0x1

    :cond_10
    if-eqz p2, :cond_20

    .line 413
    iget-object p1, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$getErrorTextV$p(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;)Landroid/widget/TextView;

    move-result-object p1

    if-nez p1, :cond_1b

    goto :goto_20

    :cond_1b
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_20
    :goto_20
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 418
    iget-object p2, p0, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2$initEditText$1;->this$0:Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;->access$notifyEditTextLayout(Lcom/codemao/toolssdk/ljwx/web/jsobject/dialogjs/CommonInputPopV2;Ljava/lang/String;)V

    return-void
.end method
