.class public Lcom/codemao/nemo/view/RenameDialog;
.super Landroid/app/Dialog;
.source "RenameDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;
    }
.end annotation


# instance fields
.field private content:Ljava/lang/String;

.field etInput:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private position:I

.field private renameConfirmCallback:Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;

.field tvConfirm:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const v0, 0x7f130343

    .line 60
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    const/4 v0, -0x1

    .line 48
    iput v0, p0, Lcom/codemao/nemo/view/RenameDialog;->position:I

    .line 61
    iput-object p1, p0, Lcom/codemao/nemo/view/RenameDialog;->mContext:Landroid/content/Context;

    .line 62
    iput-object p2, p0, Lcom/codemao/nemo/view/RenameDialog;->content:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/RenameDialog;)I
    .registers 1

    .line 35
    iget p0, p0, Lcom/codemao/nemo/view/RenameDialog;->position:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/RenameDialog;)Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;
    .registers 1

    .line 35
    iget-object p0, p0, Lcom/codemao/nemo/view/RenameDialog;->renameConfirmCallback:Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;

    return-object p0
.end method

.method static synthetic access$200(Lcom/codemao/nemo/view/RenameDialog;)V
    .registers 1

    .line 35
    invoke-direct {p0}, Lcom/codemao/nemo/view/RenameDialog;->checkIsEmpty()V

    return-void
.end method

.method private checkIsEmpty()V
    .registers 3

    .line 195
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 196
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->tvConfirm:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    goto :goto_19

    .line 199
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->tvConfirm:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    :goto_19
    return-void
.end method

.method private init()V
    .registers 6

    .line 112
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0129

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 115
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 116
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x50

    .line 118
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x1

    .line 119
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    const/4 v2, -0x2

    .line 120
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 121
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 122
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->renameConfirmCallback:Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;

    if-eqz v0, :cond_46

    .line 124
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->tvConfirm:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/RenameDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/RenameDialog$1;-><init>(Lcom/codemao/nemo/view/RenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    :cond_46
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/nemo/view/RenameDialog;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 133
    invoke-direct {p0}, Lcom/codemao/nemo/view/RenameDialog;->checkIsEmpty()V

    .line 134
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Lcom/codemao/nemo/view/RenameDialog$2;

    invoke-direct {v2, p0}, Lcom/codemao/nemo/view/RenameDialog$2;-><init>(Lcom/codemao/nemo/view/RenameDialog;)V

    aput-object v2, v1, v3

    const/4 v2, 0x1

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 145
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/view/RenameDialog$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/RenameDialog$3;-><init>(Lcom/codemao/nemo/view/RenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 161
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/view/RenameDialog$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/RenameDialog$4;-><init>(Lcom/codemao/nemo/view/RenameDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 174
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 107
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 108
    invoke-direct {p0}, Lcom/codemao/nemo/view/RenameDialog;->init()V

    return-void
.end method

.method public setConfirmListener(Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;)Lcom/codemao/nemo/view/RenameDialog;
    .registers 2

    .line 73
    iput-object p1, p0, Lcom/codemao/nemo/view/RenameDialog;->renameConfirmCallback:Lcom/codemao/nemo/view/RenameDialog$RenameConfirmCallback;

    return-object p0
.end method

.method public setContent(Ljava/lang/String;)Lcom/codemao/nemo/view/RenameDialog;
    .registers 3

    .line 93
    invoke-static {p1}, Lcom/codemao/nemo/util/StringUtil;->getFilterWorkName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/view/RenameDialog;->content:Ljava/lang/String;

    .line 94
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_d

    .line 95
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_d
    return-object p0
.end method

.method public setPosition(I)Lcom/codemao/nemo/view/RenameDialog;
    .registers 2

    .line 79
    iput p1, p0, Lcom/codemao/nemo/view/RenameDialog;->position:I

    return-object p0
.end method

.method public show()V
    .registers 3

    .line 179
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    if-eqz v0, :cond_34

    .line 181
    iget-object v1, p0, Lcom/codemao/nemo/view/RenameDialog;->content:Ljava/lang/String;

    if-eqz v1, :cond_1a

    .line 182
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 184
    :cond_1a
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 185
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 186
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 187
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocusFromTouch()Z

    .line 188
    iget-object v0, p0, Lcom/codemao/nemo/view/RenameDialog;->etInput:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->openSoftInput(Landroid/view/View;)V

    :cond_34
    return-void
.end method
