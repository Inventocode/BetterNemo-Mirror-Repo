.class public Lcn/codemao/android/sketch/utils/TextWatcherUtils;
.super Ljava/lang/Object;
.source "TextWatcherUtils.java"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field private beforeText:Ljava/lang/String;

.field private lastIndex:I

.field private mEditText:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;)V
    .registers 3

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 14
    iput v0, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->lastIndex:I

    .line 23
    iput-object p1, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 2

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .line 29
    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p2

    iput p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->lastIndex:I

    .line 30
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->beforeText:Ljava/lang/String;

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 7

    .line 36
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_73

    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->beforeText:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_73

    .line 40
    invoke-static {p1}, Lcn/codemao/android/sketch/utils/ValidateUtils;->isName(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_22

    invoke-static {p1}, Lcn/codemao/android/sketch/utils/ValidateUtils;->getStringLength(Ljava/lang/String;)D

    move-result-wide p2

    const-wide/high16 v0, 0x4024000000000000L  # 10.0

    cmpl-double p4, p2, v0

    if-lez p4, :cond_73

    .line 41
    :cond_22
    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 42
    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    iget-object p3, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->beforeText:Ljava/lang/String;

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 43
    iget p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->lastIndex:I

    iget-object p3, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->beforeText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    if-ge p2, p3, :cond_40

    .line 44
    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    iget p3, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->lastIndex:I

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    goto :goto_4b

    .line 46
    :cond_40
    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    iget-object p3, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->beforeText:Ljava/lang/String;

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/widget/EditText;->setSelection(I)V

    .line 48
    :goto_4b
    iget-object p2, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p2, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p2, 0x1

    const/4 p3, 0x0

    .line 49
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, " "

    .line 50
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6e

    const-string p2, "-"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6e

    const-string p2, "_"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_73

    .line 51
    :cond_6e
    iget-object p1, p0, Lcn/codemao/android/sketch/utils/TextWatcherUtils;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p3}, Landroid/widget/EditText;->setSelection(I)V

    :cond_73
    return-void
.end method
