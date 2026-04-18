.class public Lcom/codemao/nemo/dialog/WorkInfoDialog;
.super Landroid/app/Dialog;
.source "WorkInfoDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;
    }
.end annotation


# instance fields
.field private des:Ljava/lang/String;

.field etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field etName:Lcom/codemao/nemo/view/TextCountLimitEditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private name:Ljava/lang/String;

.field tvAllowNum:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvPublish:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private updateInfoListener:Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;


# direct methods
.method static synthetic access$000(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V
    .registers 1

    .line 38
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog;->checkChanged()V

    return-void
.end method

.method static synthetic access$100(Lcom/codemao/nemo/dialog/WorkInfoDialog;)Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;
    .registers 1

    .line 38
    iget-object p0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->updateInfoListener:Lcom/codemao/nemo/dialog/WorkInfoDialog$UpdateInfoListener;

    return-object p0
.end method

.method private checkChanged()V
    .registers 4

    .line 213
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    .line 214
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvPublish:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_50

    .line 215
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->des:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4a

    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->name:Ljava/lang/String;

    iget-object v2, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    goto :goto_4a

    .line 218
    :cond_44
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvPublish:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_50

    .line 216
    :cond_4a
    :goto_4a
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvPublish:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_50
    return-void
.end method

.method private init()V
    .registers 5

    .line 109
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0136

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 110
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 111
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 112
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 113
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 115
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 116
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 117
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 118
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 119
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 120
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    new-instance v1, Lcom/codemao/nemo/dialog/WorkInfoDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog$1;-><init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->setTextTextWather(Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;)V

    .line 138
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/codemao/nemo/dialog/WorkInfoDialog$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog$2;-><init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 148
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    new-instance v1, Lcom/codemao/nemo/dialog/WorkInfoDialog$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog$3;-><init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/view/TextCountLimitEditText;->setTextTextWather(Lcom/codemao/nemo/view/TextCountLimitEditText$CountLimitEditTextTextWather;)V

    .line 164
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->des:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 165
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 166
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 168
    :cond_70
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->name:Ljava/lang/String;

    if-eqz v0, :cond_86

    .line 169
    iget-object v1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {v0}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 173
    :cond_86
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->tvPublish:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog$4;-><init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/dialog/WorkInfoDialog$5;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog$5;-><init>(Lcom/codemao/nemo/dialog/WorkInfoDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 197
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 104
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-direct {p0}, Lcom/codemao/nemo/dialog/WorkInfoDialog;->init()V

    return-void
.end method

.method public show()V
    .registers 2

    .line 202
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 203
    iget-object v0, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etName:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    return-void
.end method

.method showKeyBoard(Landroid/view/View;)V
    .registers 3
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 225
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 226
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 227
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocus()Z

    .line 228
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 229
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 230
    iget-object p1, p0, Lcom/codemao/nemo/dialog/WorkInfoDialog;->etDes:Lcom/codemao/nemo/view/TextCountLimitEditText;

    invoke-static {p1}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    return-void
.end method
