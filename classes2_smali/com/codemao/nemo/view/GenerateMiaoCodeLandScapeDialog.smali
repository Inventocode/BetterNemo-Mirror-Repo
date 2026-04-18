.class public Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;
.super Landroid/app/Dialog;
.source "GenerateMiaoCodeLandScapeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;,
        Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;
    }
.end annotation


# instance fields
.field private closeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;

.field ivClose:Landroid/widget/ImageView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private notSupportCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;

.field rlNotSupport:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private titleText:Ljava/lang/String;

.field tvNotSupportButton:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotSupportName:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field tvNotSupportShowLater:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
    .end annotation
.end field

.field private type:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    const v0, 0x7f130343

    .line 49
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 50
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->closeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;

    return-object p0
.end method

.method static synthetic access$100(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;
    .registers 1

    .line 29
    iget-object p0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->notSupportCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;

    return-object p0
.end method

.method private init()V
    .registers 5

    .line 61
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0123

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 63
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->bind(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 64
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 65
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const/16 v2, 0x11

    .line 66
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    const/4 v2, -0x2

    .line 67
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 68
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 69
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 72
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 73
    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 75
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->ivClose:Landroid/widget/ImageView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$1;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->tvNotSupportButton:Landroid/widget/TextView;

    new-instance v1, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$2;

    invoke-direct {v1, p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$2;-><init>(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->titleText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_59

    .line 101
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->tvNotSupportName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->titleText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    :cond_59
    iget v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->type:I

    invoke-virtual {p0, v0}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    .line 144
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    .line 56
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-direct {p0}, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->init()V

    return-void
.end method

.method public setCloseCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;)V
    .registers 2

    .line 107
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->closeCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$CloseCallback;

    return-void
.end method

.method public setNotSupportCallback(Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;)V
    .registers 2

    .line 110
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->notSupportCallback:Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog$NotSupportCallback;

    return-void
.end method

.method public setTitleText(Ljava/lang/String;)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;
    .registers 2

    .line 122
    iput-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->titleText:Ljava/lang/String;

    return-object p0
.end method

.method public setType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;
    .registers 2

    .line 113
    iput p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->type:I

    return-object p0
.end method

.method public showByType(I)Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;
    .registers 4

    .line 127
    iput p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->type:I

    .line 128
    iget-object v0, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->rlNotSupport:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eq p1, v1, :cond_c

    goto :goto_1d

    .line 132
    :cond_c
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->tvNotSupportShowLater:Landroid/widget/TextView;

    const-string v0, "当前页不支持直接打开，稍后可在\"<font color=\"#6F60DD\">我的-草稿箱 </font>\"查看"

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object p1, p0, Lcom/codemao/nemo/view/GenerateMiaoCodeLandScapeDialog;->rlNotSupport:Landroid/widget/RelativeLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    :goto_1d
    return-object p0
.end method
