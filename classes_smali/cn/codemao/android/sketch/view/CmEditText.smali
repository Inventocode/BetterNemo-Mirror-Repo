.class public Lcn/codemao/android/sketch/view/CmEditText;
.super Landroidx/appcompat/widget/AppCompatEditText;
.source "CmEditText.java"

# interfaces
.implements Landroid/text/TextWatcher;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 3

    .line 25
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 4

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public adjust()V
    .registers 3

    .line 51
    invoke-virtual {p0}, Landroid/widget/EditText;->getLineCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_e

    const v0, 0x800013

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setGravity(I)V

    goto :goto_13

    :cond_e
    const/16 v0, 0x11

    .line 54
    invoke-virtual {p0, v0}, Landroid/widget/EditText;->setGravity(I)V

    :goto_13
    return-void
.end method

.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .line 61
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_1a

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_1a
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 46
    invoke-virtual {p0}, Lcn/codemao/android/sketch/view/CmEditText;->adjust()V

    return-void
.end method
