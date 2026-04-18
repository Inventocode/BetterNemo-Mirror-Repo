.class public Lcom/codemao/nemo/activity/UserNameDesEditActivity;
.super Lcom/giu/xzz/BaseActivity;
.source "UserNameDesEditActivity.java"


# instance fields
.field confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

.field private content:Ljava/lang/String;

.field discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

.field editText:Landroid/widget/EditText;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

.field tvLimit:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvSave:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvTitle:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvUsedNotice:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 39
    invoke-direct {p0}, Lcom/giu/xzz/BaseActivity;-><init>()V

    const/4 v0, 0x0

    .line 42
    iput v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)I
    .registers 1

    .line 39
    iget p0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    return p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)Lcom/codemao/nemo/dialog/LoadingDialog;
    .registers 1

    .line 39
    iget-object p0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    return-object p0
.end method

.method private initData()V
    .registers 4

    .line 77
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    .line 78
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "content"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    return-void
.end method

.method private initView()V
    .registers 8

    .line 82
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_13

    .line 83
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2000

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 85
    :cond_13
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2f

    .line 86
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 89
    :cond_2f
    iget v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_5d

    .line 90
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v4, "昵称"

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v4, Lcom/codemao/nemo/activity/UserNameDesEditActivity$1;

    invoke-direct {v4, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$1;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    aput-object v4, v2, v3

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    const/16 v4, 0x14

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 102
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_b8

    .line 104
    :cond_5d
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v4, 0x32

    rsub-int/lit8 v0, v0, 0x32

    if-gez v0, :cond_6e

    const/4 v0, 0x0

    .line 108
    :cond_6e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "还可输入<font color=\"#6f60dd\">"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "</font>个字符"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 109
    iget-object v5, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvLimit:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 110
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvLimit:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 111
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    new-array v2, v2, [Landroid/text/InputFilter;

    new-instance v5, Lcom/codemao/nemo/activity/UserNameDesEditActivity$2;

    invoke-direct {v5, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$2;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    aput-object v5, v2, v3

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v4}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 122
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    const-string/jumbo v1, "让小伙伴更好地了解你吧~"

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvTitle:Landroid/widget/TextView;

    const-string/jumbo v1, "签名"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    :goto_b8
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/activity/UserNameDesEditActivity$3;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$3;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 135
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    new-instance v1, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$4;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private updateNickName()V
    .registers 4

    .line 172
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 173
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 174
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void

    .line 177
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_29

    .line 178
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "昵称修改中..."

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 180
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 181
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_4a

    .line 182
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    const-string/jumbo v1, "昵称不能超过20个字哦，修改后再试试吧！"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->tvUsedNotice:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void

    .line 191
    :cond_4a
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v1}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 192
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v2, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$5;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->updateUserNickName(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method

.method private updateSign()V
    .registers 4

    .line 250
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-static {v0}, Lcom/codemao/nemo/util/SoftInputUtils;->hideSoftInput(Landroid/view/View;)V

    .line 251
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1b

    .line 252
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void

    .line 255
    :cond_1b
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    if-nez v0, :cond_29

    .line 256
    new-instance v0, Lcom/codemao/nemo/dialog/LoadingDialog;

    const-string/jumbo v1, "签名修改中..."

    invoke-direct {v0, p0, v1}, Lcom/codemao/nemo/dialog/LoadingDialog;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    .line 258
    :cond_29
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->loadingDialog:Lcom/codemao/nemo/dialog/LoadingDialog;

    invoke-virtual {v0}, Lcom/codemao/nemo/dialog/LoadingDialog;->show()V

    .line 259
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 260
    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    new-instance v2, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;

    invoke-direct {v2, p0, v0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$6;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v0, v2}, Lcom/codemao/nemo/http/DiscoveryNetUtil;->updateUserDes(Ljava/lang/String;Lcom/codemao/nemo/http/LocalNetCallBackV2;)V

    return-void
.end method


# virtual methods
.method protected contentViewId()I
    .registers 2

    const v0, 0x7f0d006a

    return v0
.end method

.method public initViewName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, "用户昵称签名设置页"

    return-object v0
.end method

.method public onBackPressed()V
    .registers 3

    .line 302
    iget v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    if-nez v0, :cond_8

    .line 303
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void

    .line 306
    :cond_8
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 307
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    goto :goto_68

    .line 309
    :cond_1e
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez v0, :cond_63

    .line 310
    new-instance v0, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iget v1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    if-nez v1, :cond_35

    const-string/jumbo v1, "昵称还未保存哦，真的要退出吗？"

    goto :goto_38

    :cond_35
    const-string/jumbo v1, "签名还未保存哦，真的要退出吗？"

    :goto_38
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "退出编辑"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const-string/jumbo v1, "继续编辑"

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/UserNameDesEditActivity$8;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$8;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    new-instance v1, Lcom/codemao/nemo/activity/UserNameDesEditActivity$7;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$7;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    .line 317
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    const/4 v1, 0x1

    .line 323
    invoke-virtual {v0, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object v0

    iput-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 325
    :cond_63
    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    :goto_68
    return-void
.end method

.method onClick(Landroid/view/View;)V
    .registers 4
    .annotation runtime Lbutterknife/OnClick;
    .end annotation

    .line 332
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a037b

    const/4 v1, 0x1

    if-eq p1, v0, :cond_1c

    const v0, 0x7f0a08d1

    if-eq p1, v0, :cond_10

    goto :goto_83

    .line 362
    :cond_10
    iget p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    if-ne p1, v1, :cond_18

    .line 363
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->updateSign()V

    goto :goto_83

    .line 365
    :cond_18
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->updateNickName()V

    goto :goto_83

    .line 334
    :cond_1c
    iget p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    if-nez p1, :cond_24

    .line 335
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    return-void

    .line 338
    :cond_24
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->editText:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->content:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3a

    .line 339
    invoke-virtual {p0}, Lcom/giu/xzz/BaseActivity;->finish()V

    goto :goto_83

    .line 341
    :cond_3a
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    if-nez p1, :cond_7e

    .line 342
    new-instance p1, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->titleStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    iget v0, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->type:I

    if-nez v0, :cond_51

    const-string/jumbo v0, "昵称还未保存哦，真的要退出吗？"

    goto :goto_54

    :cond_51
    const-string/jumbo v0, "签名还未保存哦，真的要退出吗？"

    :goto_54
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->contentStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string/jumbo v0, "退出编辑"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->leftBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    const-string/jumbo v0, "继续编辑"

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->rightBtnStr(Ljava/lang/String;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$10;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$10;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setLeftClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    new-instance v0, Lcom/codemao/nemo/activity/UserNameDesEditActivity$9;

    invoke-direct {v0, p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity$9;-><init>(Lcom/codemao/nemo/activity/UserNameDesEditActivity;)V

    .line 349
    invoke-virtual {p1, v0}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->setRightClickListener(Landroid/view/View$OnClickListener;)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    .line 355
    invoke-virtual {p1, v1}, Lcom/codemao/nemo/dialog/CustomDialogTypeOne;->topCatState(I)Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    move-result-object p1

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    .line 357
    :cond_7e
    iget-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->confirmDialog:Lcom/codemao/nemo/dialog/CustomDialogTypeOne;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    :goto_83
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 65
    invoke-super {p0, p1}, Lcom/giu/xzz/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 66
    new-instance p1, Lcom/codemao/nemo/http/DiscoveryNetUtil;

    invoke-direct {p1, p0}, Lcom/codemao/nemo/http/DiscoveryNetUtil;-><init>(Lcom/giu/xzz/rx/lifecycle/RxLifeActivity;)V

    iput-object p1, p0, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->discoveryNetUtil:Lcom/codemao/nemo/http/DiscoveryNetUtil;

    .line 67
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->initData()V

    .line 68
    invoke-direct {p0}, Lcom/codemao/nemo/activity/UserNameDesEditActivity;->initView()V

    return-void
.end method

.method protected screenFull()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
