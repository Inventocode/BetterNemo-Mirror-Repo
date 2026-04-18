.class public final Lcom/codemao/nemo/view/LoginInputLayout$init$3;
.super Ljava/lang/Object;
.source "LoginInputLayout.kt"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/codemao/nemo/view/LoginInputLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codemao/nemo/view/LoginInputLayout;


# direct methods
.method constructor <init>(Lcom/codemao/nemo/view/LoginInputLayout;)V
    .registers 2

    iput-object p1, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_8

    .line 65
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    if-lez v1, :cond_27

    .line 67
    iget-object v1, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    sget v2, Lcom/codemao/nemo/R$id;->inputLayout:I

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 68
    iget-object v1, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    sget v2, Lcom/codemao/nemo/R$id;->closeImageV:I

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_51

    .line 70
    :cond_27
    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    sget v1, Lcom/codemao/nemo/R$id;->inputLayout:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout;

    iget-object v1, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    sget v2, Lcom/codemao/nemo/R$id;->editText:I

    invoke-virtual {v1, v2}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 71
    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    sget v1, Lcom/codemao/nemo/R$id;->closeImageV:I

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/LoginInputLayout;->_$_findCachedViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 73
    :goto_51
    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_5c

    invoke-interface {v0, p1}, Landroid/text/TextWatcher;->afterTextChanged(Landroid/text/Editable;)V

    :cond_5c
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 77
    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->beforeTextChanged(Ljava/lang/CharSequence;III)V

    :cond_b
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 6

    .line 81
    iget-object v0, p0, Lcom/codemao/nemo/view/LoginInputLayout$init$3;->this$0:Lcom/codemao/nemo/view/LoginInputLayout;

    invoke-virtual {v0}, Lcom/codemao/nemo/view/LoginInputLayout;->getTextWatcher()Landroid/text/TextWatcher;

    move-result-object v0

    if-eqz v0, :cond_b

    invoke-interface {v0, p1, p2, p3, p4}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    :cond_b
    return-void
.end method
